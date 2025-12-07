unint64_t sub_22F24B998(unint64_t a1, unint64_t a2, void (*a3)(double), uint64_t a4, int a5)
{
  v537 = a5;
  v571 = sub_22F73F690();
  v9 = *(v571 - 8);
  MEMORY[0x28223BE20](v571);
  v562 = &v519 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v519 - v12;
  MEMORY[0x28223BE20](v14);
  v542 = &v519 - v15;
  MEMORY[0x28223BE20](v16);
  v553 = &v519 - v17;
  MEMORY[0x28223BE20](v18);
  v552 = &v519 - v19;
  MEMORY[0x28223BE20](v20);
  v533 = &v519 - v21;
  MEMORY[0x28223BE20](v22);
  v532 = &v519 - v23;
  MEMORY[0x28223BE20](v24);
  v535 = &v519 - v25;
  MEMORY[0x28223BE20](v26);
  v534 = &v519 - v27;
  MEMORY[0x28223BE20](v28);
  v566 = &v519 - v29;
  MEMORY[0x28223BE20](v30);
  v568 = &v519 - v31;
  isUniquelyReferenced_nonNull_native = sub_22F73F090();
  v546 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *&v539 = &v519 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v548 = &v519 - v35;
  MEMORY[0x28223BE20](v36);
  v547 = &v519 - v37;
  MEMORY[0x28223BE20](v38);
  v541 = &v519 - v39;
  MEMORY[0x28223BE20](v40);
  v561 = &v519 - v41;
  MEMORY[0x28223BE20](v42);
  v554 = &v519 - v43;
  MEMORY[0x28223BE20](v44);
  v536 = &v519 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v519 - v47;
  v543 = sub_22F740B90();
  v544 = *(v543 - 8);
  MEMORY[0x28223BE20](v543);
  v50 = &v519 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_slowAlloc();
  *v51 = 0;
  v550 = a4;
  v551 = a3;
  a3(0.0);
  v545 = v51;
  if (*v51 == 1)
  {
    v52 = MEMORY[0x277D84F90];

    return sub_22F14E740(v52);
  }

  v527 = v9;
  v531 = v13;
  v579 = v50;
  sub_22F740B80();
  swift_beginAccess();
  v54 = *(a1 + 24);
  v55 = v54 >> 62;
  if (v54 >> 62)
  {
    goto LABEL_300;
  }

  v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = a2;
  if (!v56)
  {
LABEL_301:
    v476 = v579;
    v477 = sub_22F740B70();
    v478 = sub_22F7415D0();
    if (os_log_type_enabled(v477, v478))
    {
      v479 = swift_slowAlloc();
      *v479 = 0;
      _os_log_impl(&dword_22F0FC000, v477, v478, "No entities found in the container, returning...", v479, 2u);
      MEMORY[0x2319033A0](v479, -1, -1);
    }

    v247 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v544 + 8))(v476, v543);
    return v247;
  }

LABEL_7:
  swift_bridgeObjectRetain_n();
  v58 = sub_22F740B70();
  v59 = sub_22F7415D0();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    if (v55)
    {
      v61 = sub_22F741A00();
    }

    else
    {
      v61 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v60 + 4) = v61;

    _os_log_impl(&dword_22F0FC000, v58, v59, "There are %ld potential entities.", v60, 0xCu);
    MEMORY[0x2319033A0](v60, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  v538 = sub_22F24198C(v524);
  v576 = *(v57 + 16);
  v62 = v576 / 2;
  if (v576 / 2 <= 1)
  {
    v62 = 1;
  }

  *&v529 = v62;
  v63 = MEMORY[0x277D84F90];
  v586 = MEMORY[0x277D84F90];
  v523 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v585 = v523;
  v64 = sub_22F14E214(v63);
  if (v55)
  {
    v65 = sub_22F741A00();
  }

  else
  {
    v65 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v559 = v64;
  v577 = a1;
  v564 = v57;
  v575 = isUniquelyReferenced_nonNull_native;
  v565 = v48;
  v570 = v54;
  if (v65)
  {
    v66 = 0.3 / v56;
    v67 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
    v573 = v54 & 0xC000000000000001;

    swift_beginAccess();
    v556 = v67;
    swift_beginAccess();
    a2 = 0;
    v574 = 0;
    v558 = v54 & 0xFFFFFFFFFFFFFF8;
    v555 = (v527 + 16);
    *&v563 = v527 + 8;
    v528 = (v546 + 16);
    v540 = v546 + 8;
    v55 = MEMORY[0x277D84F90];
    v68 = 0.0;
    v48 = MEMORY[0x277D84F98];
    *&v69 = 134218498;
    v557 = v69;
    *&v69 = 136315138;
    v526 = v69;
    *&v69 = 134219010;
    v520 = v69;
    *&v69 = 136315394;
    v519 = v69;
    v572 = v65;
    while (1)
    {
      v582 = v55;
      if (v573)
      {
        v70 = MEMORY[0x2319016F0](a2, v54);
        v71 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_284;
        }
      }

      else
      {
        if (a2 >= *(v558 + 16))
        {
          goto LABEL_286;
        }

        v70 = *(v54 + 8 * a2 + 32);

        v71 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
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
          v56 = sub_22F741A00();
          v57 = a2;
          if (!v56)
          {
            goto LABEL_301;
          }

          goto LABEL_7;
        }
      }

      v580 = a2;
      v72 = *(a1 + 32);
      v73 = *(v72 + 16);
      v581 = v71;
      if (!v73)
      {
        goto LABEL_37;
      }

      v74 = *(v70 + 24);
      v55 = *(v70 + 32);

      v75 = sub_22F1229E8(v74, v55);
      v77 = v76;

      if ((v77 & 1) == 0)
      {
        goto LABEL_36;
      }

      a2 = *(*(v72 + 56) + 8 * v75);

      if ((a2 & 0xC000000000000001) != 0)
      {
        v78 = sub_22F741A00();
        if (!v78)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v78 = *(a2 + 16);
        if (!v78)
        {
LABEL_36:

LABEL_37:
          isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
          v81 = MEMORY[0x277D84F90] >> 62;
          if (!(MEMORY[0x277D84F90] >> 62))
          {
            goto LABEL_38;
          }

          goto LABEL_80;
        }
      }

      if (v78 < 1)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        isUniquelyReferenced_nonNull_native = swift_allocObject();
        v79 = _swift_stdlib_malloc_size(isUniquelyReferenced_nonNull_native);
        v80 = v79 - 32;
        if (v79 < 32)
        {
          v80 = v79 - 25;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v78;
        *(isUniquelyReferenced_nonNull_native + 24) = (2 * (v80 >> 3)) | 1;
      }

      v55 = sub_22F11A590(&v583, (isUniquelyReferenced_nonNull_native + 32), v78, a2);
      sub_22F0FF590(v583);
      if (v55 != v78)
      {
        goto LABEL_293;
      }

      v81 = isUniquelyReferenced_nonNull_native >> 62;
      if (!(isUniquelyReferenced_nonNull_native >> 62))
      {
LABEL_38:
        v82 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        if (*((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10) < v576)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }

LABEL_80:
      if (sub_22F741A00() < v576)
      {
LABEL_39:

        v83 = sub_22F740B70();
        v84 = sub_22F7415D0();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v583 = v86;
          *v85 = v557;
          *(v85 + 4) = v576;
          *(v85 + 12) = 2080;
          v88 = *(v70 + 24);
          v87 = *(v70 + 32);

          v89 = sub_22F145F20(v88, v87, &v583);

          *(v85 + 14) = v89;
          *(v85 + 22) = 2048;
          if (v81)
          {
            v90 = sub_22F741A00();
          }

          else
          {
            v90 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v85 + 24) = v90;

          _os_log_impl(&dword_22F0FC000, v83, v84, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v85, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x2319033A0](v86, -1, -1);
          MEMORY[0x2319033A0](v85, -1, -1);

          a1 = v577;
          v54 = v570;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v55 = *(v70 + 24);
        a2 = *(v70 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v583 = v48;
        v158 = sub_22F1229E8(v55, a2);
        v160 = *(v48 + 16);
        v161 = (v159 & 1) == 0;
        v162 = __OFADD__(v160, v161);
        v163 = v160 + v161;
        if (v162)
        {
          goto LABEL_285;
        }

        v164 = v159;
        if (*(v48 + 24) >= v163)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v235 = v158;
            sub_22F134340();
            v158 = v235;
          }
        }

        else
        {
          sub_22F1259D0(v163, isUniquelyReferenced_nonNull_native);
          v158 = sub_22F1229E8(v55, a2);
          if ((v164 & 1) != (v165 & 1))
          {
            goto LABEL_375;
          }
        }

        isUniquelyReferenced_nonNull_native = v575;
        if ((v164 & 1) == 0)
        {
          v48 = v583;
          *(v583 + 8 * (v158 >> 6) + 64) |= 1 << v158;
          v167 = (*(v48 + 48) + 16 * v158);
          *v167 = v55;
          v167[1] = a2;
          *(*(v48 + 56) + v158) = 4;

          v168 = *(v48 + 16);
          v162 = __OFADD__(v168, 1);
          v169 = v168 + 1;
          if (v162)
          {
            goto LABEL_290;
          }

LABEL_113:
          *(v48 + 16) = v169;
          goto LABEL_114;
        }

        v166 = v158;

        v48 = v583;
        *(*(v583 + 56) + v166) = 4;
        goto LABEL_111;
      }

      v184 = sub_22F741A00();
      if (v184)
      {
        v185 = v184;
        v82 = sub_22F120B48();

        sub_22F3CC8CC(v82 + 32, v185, isUniquelyReferenced_nonNull_native);
        v55 = v186;

        if (v55 != v185)
        {
          goto LABEL_373;
        }
      }

      else
      {
        v82 = MEMORY[0x277D84F90];
      }

LABEL_43:
      v583 = v82;
      v81 = v574;
      sub_22F243D0C(&v583);
      if (v81)
      {
        goto LABEL_376;
      }

      v91 = v583;
      v574 = 0;
      if ((v583 & 0x8000000000000000) != 0 || (v583 & 0x4000000000000000) != 0)
      {
        v216 = v583;
        a2 = sub_22F741A00();
        v91 = v216;
        if (!a2)
        {
LABEL_100:

          v217 = sub_22F740B70();
          v218 = sub_22F7415E0();
          if (os_log_type_enabled(v217, v218))
          {
            v219 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            v583 = v220;
            *v219 = v526;
            v221 = *(v70 + 24);
            v222 = *(v70 + 32);

            v223 = sub_22F145F20(v221, v222, &v583);
            v54 = v570;

            *(v219 + 4) = v223;
            _os_log_impl(&dword_22F0FC000, v217, v218, "Unable to find first moment for entity with uuid %s", v219, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v220);
            MEMORY[0x2319033A0](v220, -1, -1);
            MEMORY[0x2319033A0](v219, -1, -1);
          }

          else
          {
          }

          v55 = *(v70 + 24);
          a2 = *(v70 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v583 = v48;
          v224 = sub_22F1229E8(v55, a2);
          v226 = *(v48 + 16);
          v227 = (v225 & 1) == 0;
          v162 = __OFADD__(v226, v227);
          v228 = v226 + v227;
          if (v162)
          {
            goto LABEL_294;
          }

          v229 = v225;
          if (*(v48 + 24) >= v228)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v236 = v224;
              sub_22F134340();
              v224 = v236;
            }
          }

          else
          {
            sub_22F1259D0(v228, isUniquelyReferenced_nonNull_native);
            v224 = sub_22F1229E8(v55, a2);
            if ((v229 & 1) != (v230 & 1))
            {
              goto LABEL_375;
            }
          }

          isUniquelyReferenced_nonNull_native = v575;
          if ((v229 & 1) == 0)
          {
            v48 = v583;
            *(v583 + 8 * (v224 >> 6) + 64) |= 1 << v224;
            v232 = (*(v48 + 48) + 16 * v224);
            *v232 = v55;
            v232[1] = a2;
            *(*(v48 + 56) + v224) = 3;

            v233 = *(v48 + 16);
            v162 = __OFADD__(v233, 1);
            v169 = v233 + 1;
            if (v162)
            {
              goto LABEL_298;
            }

            goto LABEL_113;
          }

          v231 = v224;

          v48 = v583;
          *(*(v583 + 56) + v231) = 3;
LABEL_111:

          goto LABEL_114;
        }
      }

      else
      {
        a2 = *(v583 + 16);
        if (!a2)
        {
          goto LABEL_100;
        }
      }

      v578 = v48;
      v567 = v70;
      if ((v91 & 0xC000000000000001) != 0)
      {
        v234 = v91;
        v569 = MEMORY[0x2319016F0](0);
        a1 = 0x27889D000;
        if (__OFSUB__(a2, 1))
        {
          goto LABEL_374;
        }

        v94 = MEMORY[0x2319016F0](a2 - 1, v234);
      }

      else
      {
        v92 = *(v91 + 16);
        a1 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
        if (!v92)
        {
          goto LABEL_287;
        }

        v93 = a2 - 1;
        if (__OFSUB__(a2, 1))
        {
          goto LABEL_288;
        }

        if (v93 >= v92)
        {
          goto LABEL_289;
        }

        v94 = *(v91 + 32 + 8 * v93);
        v569 = *(v91 + 32);
      }

      v95 = [*(v94 + 16) *(a1 + 568)];
      v96 = v568;
      sub_22F73F640();

      v97 = v562;
      v98 = v571;
      (*v555)(v562, v577 + v556, v571);
      v99 = v564;
      v100 = *v564;
      v101 = v566;
      sub_22F73F5E0();
      v102 = *v563;
      (*v563)(v97, v98);
      LOBYTE(v97) = sub_22F73F5D0();
      (v102)(v101, v98);
      v560 = v102;
      (v102)(v96, v98);
      if (v97)
      {

        swift_retain_n();
        v103 = v567;

        v104 = sub_22F740B70();
        v105 = sub_22F7415D0();
        v106 = v94;
        if (os_log_type_enabled(v104, v105))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v583 = v108;
          *v107 = v557;
          *(v107 + 4) = v100 / 86400.0;
          *(v107 + 12) = 2080;
          v109 = *(v103 + 24);
          v110 = *(v103 + 32);

          v111 = sub_22F145F20(v109, v110, &v583);

          *(v107 + 14) = v111;
          *(v107 + 22) = 2080;
          v112 = [*(v106 + 16) universalStartDate];
          v113 = v568;
          sub_22F73F640();

          sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v114 = v571;
          v115 = sub_22F742010();
          v117 = v116;

          (v560)(v113, v114);
          v118 = sub_22F145F20(v115, v117, &v583);

          *(v107 + 24) = v118;
          _os_log_impl(&dword_22F0FC000, v104, v105, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v107, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v108, -1, -1);
          MEMORY[0x2319033A0](v107, -1, -1);
        }

        else
        {
        }

        v54 = v570;
        v170 = v578;
        v171 = *(v103 + 24);
        v172 = *(v103 + 32);

        v173 = swift_isUniquelyReferenced_nonNull_native();
        v583 = v170;
        sub_22F1302A0(1, v171, v172, v173);

        v48 = v583;
        a1 = v577;
        isUniquelyReferenced_nonNull_native = v575;
      }

      else
      {
        v119 = [*(v569 + 16) *(a1 + 568)];
        sub_22F73F640();

        v549 = v94;
        v120 = [*(v94 + 16) *(a1 + 568)];
        sub_22F73F640();

        v121 = v561;
        sub_22F73F040();
        sub_22F73F080();
        v122 = v99[1];
        v123 = v567;
        if (v124 >= v122)
        {
          v174 = sub_22F24198C(isUniquelyReferenced_nonNull_native);

          sub_22F241D34(v538, v174, v529, v579, sub_22F250800);
          v176 = v175;

          v54 = v570;
          v48 = v578;
          a1 = v577;
          if (v176 <= 1.0)
          {
            v192 = v564[3];
            isUniquelyReferenced_nonNull_native = v575;
            if (v176 >= v192)
            {
              v205 = *(v123 + 24);
              v206 = *(v123 + 32);
              v207 = v539;
              (*v528)(v539, v561, v575);

              v208 = v585;
              v209 = swift_isUniquelyReferenced_nonNull_native();
              v583 = v208;
              sub_22F130088(v207, v205, v206, v209);

              v523 = v583;
              v585 = v583;
              v210 = *(v123 + 24);
              v211 = *(v123 + 32);

              v212 = v559;
              v213 = swift_isUniquelyReferenced_nonNull_native();
              v583 = v212;
              sub_22F12FF10(v210, v211, v213, v176);

              v559 = v583;

              MEMORY[0x231900D00](v214);
              if (*((v586 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v586 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_22F7411C0();
              }

              sub_22F741220();
              v55 = v586;
              v68 = v66 + v68;
              v215 = v545;
              (v551)(v545, v68);
              if (*v215)
              {

                swift_bridgeObjectRelease_n();

                v247 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v540)(v561, isUniquelyReferenced_nonNull_native);
                (*(v544 + 8))(v579, v543);

                return v247;
              }

              (*v540)(v561, isUniquelyReferenced_nonNull_native);

              goto LABEL_115;
            }

            v193 = sub_22F740B70();
            v194 = sub_22F7415D0();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              v583 = v196;
              *v195 = v557;
              *(v195 + 4) = v192;
              *(v195 + 12) = 2080;
              v197 = *(v123 + 24);
              v198 = *(v123 + 32);

              v199 = sub_22F145F20(v197, v198, &v583);
              a1 = v577;

              *(v195 + 14) = v199;
              v54 = v570;
              *(v195 + 22) = 2048;
              *(v195 + 24) = v176;
              _os_log_impl(&dword_22F0FC000, v193, v194, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v195, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v196);
              v200 = v196;
              isUniquelyReferenced_nonNull_native = v575;
              MEMORY[0x2319033A0](v200, -1, -1);
              MEMORY[0x2319033A0](v195, -1, -1);
            }

            else
            {
            }

            v201 = *(v123 + 24);
            v202 = *(v123 + 32);

            v203 = swift_isUniquelyReferenced_nonNull_native();
            v583 = v48;
            v204 = 5;
          }

          else
          {

            v177 = sub_22F740B70();
            v178 = sub_22F7415E0();
            if (os_log_type_enabled(v177, v178))
            {
              v179 = swift_slowAlloc();
              v180 = swift_slowAlloc();
              v583 = v180;
              *v179 = v519;
              v181 = *(v123 + 24);
              v182 = *(v123 + 32);

              v183 = sub_22F145F20(v181, v182, &v583);
              a1 = v577;

              *(v179 + 4) = v183;
              v54 = v570;
              *(v179 + 12) = 2048;
              *(v179 + 14) = v176;
              _os_log_impl(&dword_22F0FC000, v177, v178, "Entity %s has invalid location presence %f!", v179, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v180);
              MEMORY[0x2319033A0](v180, -1, -1);
              MEMORY[0x2319033A0](v179, -1, -1);
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = v575;
            v201 = *(v123 + 24);
            v202 = *(v123 + 32);

            v203 = swift_isUniquelyReferenced_nonNull_native();
            v583 = v48;
            v204 = 7;
          }

          sub_22F1302A0(v204, v201, v202, v203);

          (*v540)(v561, isUniquelyReferenced_nonNull_native);
        }

        else
        {

          v125 = *v528;
          v126 = v541;
          isUniquelyReferenced_nonNull_native = v575;
          (*v528)(v541, v121, v575);
          v127 = v547;
          v125(v547, v121, isUniquelyReferenced_nonNull_native);
          v128 = v548;
          v125(v548, v121, isUniquelyReferenced_nonNull_native);

          v129 = sub_22F740B70();
          LODWORD(v125) = sub_22F7415D0();

          v525 = v125;
          v130 = os_log_type_enabled(v129, v125);
          v131 = v540;
          v530 = v540 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          a1 = v577;
          if (v130)
          {
            v132 = swift_slowAlloc();
            v522 = swift_slowAlloc();
            v583 = v522;
            *v132 = v520;
            *(v132 + 4) = v122 / 86400.0;
            *(v132 + 12) = 2080;
            v521 = v129;
            v133 = *(v123 + 24);
            v134 = *(v123 + 32);

            v135 = sub_22F145F20(v133, v134, &v583);

            *(v132 + 14) = v135;
            *(v132 + 22) = 2080;
            v136 = v568;
            sub_22F73F060();
            sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v137 = v571;
            v138 = sub_22F742010();
            v139 = v126;
            v141 = v140;
            v142 = v560;
            (v560)(v136, v137);
            v143 = v139;
            v144 = *v540;
            (*v540)(v143, isUniquelyReferenced_nonNull_native);
            v145 = sub_22F145F20(v138, v141, &v583);

            *(v132 + 24) = v145;
            *(v132 + 32) = 2080;
            v146 = v547;
            sub_22F73F030();
            v147 = sub_22F742010();
            v149 = v148;
            v150 = v137;
            v121 = v561;
            v142(v136, v150);
            v123 = v567;
            v144(v146, isUniquelyReferenced_nonNull_native);
            v151 = sub_22F145F20(v147, v149, &v583);

            *(v132 + 34) = v151;
            *(v132 + 42) = 2048;
            v152 = v548;
            sub_22F73F080();
            v154 = v153;
            v144(v152, isUniquelyReferenced_nonNull_native);
            *(v132 + 44) = v154 / 86400.0;
            v155 = v521;
            _os_log_impl(&dword_22F0FC000, v521, v525, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v132, 0x34u);
            v156 = v522;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v156, -1, -1);
            v157 = v132;
            a1 = v577;
            MEMORY[0x2319033A0](v157, -1, -1);
          }

          else
          {

            v187 = v128;
            v144 = *v131;
            (*v131)(v187, isUniquelyReferenced_nonNull_native);
            v144(v127, isUniquelyReferenced_nonNull_native);
            v144(v126, isUniquelyReferenced_nonNull_native);
          }

          v54 = v570;
          v188 = v578;
          v189 = *(v123 + 24);
          v190 = *(v123 + 32);

          v191 = swift_isUniquelyReferenced_nonNull_native();
          v583 = v188;
          sub_22F1302A0(2, v189, v190, v191);

          v144(v121, isUniquelyReferenced_nonNull_native);
        }

        v48 = v583;
      }

LABEL_114:
      v55 = v582;
LABEL_115:
      a2 = v580 + 1;
      if (v581 == v572)
      {
        v237 = v55;

        v238 = v565;
        v239 = v574;
        goto LABEL_121;
      }
    }
  }

  v238 = v48;
  v239 = 0;
  v237 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F98];
LABEL_121:

  v240 = sub_22F740B70();
  v241 = sub_22F7415D0();
  v242 = os_log_type_enabled(v240, v241);
  v582 = v237;
  if (v242)
  {
    v243 = swift_slowAlloc();
    *v243 = 134217984;
    if (v237 >> 62)
    {
      v480 = v48;
      v481 = v243;
      v244 = sub_22F741A00();
      v243 = v481;
      v48 = v480;
    }

    else
    {
      v244 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v243 + 4) = v244;
    v245 = v243;

    _os_log_impl(&dword_22F0FC000, v240, v241, "After filtering potential entities, there are %ld entities remaining.", v245, 0xCu);
    MEMORY[0x2319033A0](v245, -1, -1);
  }

  else
  {
  }

  v246 = v545;
  (v551)(v545, 0.3);
  if (*v246 == 1)
  {

    v247 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v544 + 8))(v579, v543);

    goto LABEL_360;
  }

  v583 = sub_22F36C410(v248);
  sub_22F243E0C(&v583, &v585, sub_22F3F6724, 0, type metadata accessor for ImportantEntitiesPetProcessorEntity);
  v249 = &v568;
  v540 = v239;
  if (v239)
  {
    goto LABEL_378;
  }

  v250 = v583;
  v251 = 0.4;
  v252 = v545;
  (v551)(v545, 0.4);
  v81 = v48;
  if (*v252)
  {

    v247 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v544 + 8))(v579, v543);
LABEL_359:

    goto LABEL_360;
  }

  v48 = v238;
  if ((v250 & 0x8000000000000000) != 0 || (v250 & 0x4000000000000000) != 0)
  {
    goto LABEL_310;
  }

  v55 = *(v250 + 16);
  v255 = v55;
  v584 = MEMORY[0x277D84FA0];
  v530 = v55;
  if (!v55)
  {
LABEL_311:
    v578 = v81;

    v482 = sub_22F246BB0(v582, &v584);

    v483 = v545;
    (v551)(v545, 0.9);
    if (*v483)
    {

      v247 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v544 + 8))(v579, v543);
LABEL_358:

      goto LABEL_359;
    }

    v484 = v482;
    v581 = v482 >> 62;
    if (v482 >> 62)
    {
      goto LABEL_367;
    }

    v485 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_315:
    v582 = v484;
    if (v485)
    {
      v486 = swift_slowAlloc();
      *v486 = 0;
      v551(0.0);
      v484 = v482;
      if (*v486 != 1)
      {
        v487 = v482 & 0xFFFFFFFFFFFFFF8;
        if (v581)
        {
          v488 = sub_22F741A00();
          v484 = v482;
          v482 = v488;
        }

        else
        {
          v482 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v489 = 0;
        v490 = 1.0 / v485;
        v491 = (a1 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode);
        a1 = v484 & 0xC000000000000001;
        v492 = 0.0;
        while (v482 != v489)
        {
          if (a1)
          {
            v493 = MEMORY[0x2319016F0](v489, v484);
            if (__OFADD__(v489, 1))
            {
              goto LABEL_329;
            }
          }

          else
          {
            if (v489 >= *(v487 + 16))
            {
              goto LABEL_366;
            }

            v493 = *(v484 + 8 * v489 + 32);

            if (__OFADD__(v489, 1))
            {
LABEL_329:
              __break(1u);
              break;
            }
          }

          v494 = *v491;
          v495 = *(v493 + 16);
          v494();

          v492 = v490 + v492;
          (v551)(v486, v492);
          LOBYTE(v495) = *v486;

          ++v489;
          v484 = v582;
          if (v495)
          {
            goto LABEL_331;
          }
        }

        v496 = v484;
        (v551)(v486, 1.0);
        v484 = v496;
      }
    }

LABEL_331:
    if (v581)
    {
      v497 = v484;
      v498 = sub_22F741A00();
      v484 = v497;
      v81 = v498;
    }

    else
    {
      v81 = *((v484 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v499 = v579;
    if (!v81)
    {
LABEL_355:

      (v551)(v545, 1.0);
      v247 = v578;
      if (v537)
      {
        sub_22F243228(v578);
      }

      (*(v544 + 8))(v499, v543);
      goto LABEL_358;
    }

    v482 = 0;
    v581 = v484 & 0xC000000000000001;
    v580 = v484 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v581)
      {
        v500 = MEMORY[0x2319016F0](v482);
        v501 = v482 + 1;
        if (__OFADD__(v482, 1))
        {
          goto LABEL_362;
        }
      }

      else
      {
        if (v482 >= *(v580 + 16))
        {
          goto LABEL_365;
        }

        v500 = *(v484 + 8 * v482 + 32);

        v501 = v482 + 1;
        if (__OFADD__(v482, 1))
        {
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          v517 = sub_22F741A00();
          v484 = v482;
          v485 = v517;
          goto LABEL_315;
        }
      }

      v503 = *(v500 + 24);
      v502 = *(v500 + 32);

      v504 = v578;
      v505 = swift_isUniquelyReferenced_nonNull_native();
      v583 = v504;
      v507 = sub_22F1229E8(v503, v502);
      v508 = *(v504 + 16);
      v509 = (v506 & 1) == 0;
      v510 = v508 + v509;
      if (__OFADD__(v508, v509))
      {
        goto LABEL_363;
      }

      a1 = v506;
      if (*(v504 + 24) >= v510)
      {

        if (v505)
        {
          if (a1)
          {
            goto LABEL_336;
          }
        }

        else
        {
          sub_22F134340();
          if (a1)
          {
            goto LABEL_336;
          }
        }
      }

      else
      {
        sub_22F1259D0(v510, v505);
        v511 = sub_22F1229E8(v503, v502);
        if ((a1 & 1) != (v512 & 1))
        {
          goto LABEL_375;
        }

        v507 = v511;

        if (a1)
        {
LABEL_336:

          v578 = v583;
          *(*(v583 + 56) + v507) = 0;
          goto LABEL_337;
        }
      }

      v513 = v583;
      *(v583 + 8 * (v507 >> 6) + 64) |= 1 << v507;
      v514 = (v513[6] + 16 * v507);
      *v514 = v503;
      v514[1] = v502;
      *(v513[7] + v507) = 0;
      v515 = v513[2];
      v162 = __OFADD__(v515, 1);
      v516 = v515 + 1;
      if (v162)
      {
        goto LABEL_364;
      }

      v578 = v513;
      v513[2] = v516;
LABEL_337:
      ++v482;
      v499 = v579;
      v484 = v582;
      if (v501 == v81)
      {
        goto LABEL_355;
      }
    }
  }

LABEL_134:
  a2 = 0;
  v574 = v250 & 0xC000000000000001;
  v569 = v250 + 32;
  v556 = v546 + 16;
  v560 = (v527 + 8);
  v541 = (v527 + 32);
  *&v254 = 136315138;
  v563 = v254;
  *&v254 = 136315394;
  v539 = v254;
  v555 = (v546 + 8);
  v256 = 0.5 / v255;
  *&v253 = 136315906;
  v529 = v253;
  v572 = v250;
  v567 = v55;
  while (1)
  {
    if (v574)
    {
      v257 = MEMORY[0x2319016F0](a2, v250);
      v258 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_291;
      }
    }

    else
    {
      if (a2 >= *(v250 + 16))
      {
        goto LABEL_292;
      }

      v257 = *(v569 + 8 * a2);

      v258 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_291;
      }
    }

    v573 = v258;
    v259 = v585;
    v260 = *(v585 + 16);
    v581 = v257;
    if (!v260)
    {
      goto LABEL_190;
    }

    a1 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = v54;
    v54 = v48;
    v262 = *(v257 + 24);
    v261 = *(v257 + 32);

    v562 = v262;
    v263 = sub_22F1229E8(v262, v261);
    if ((v264 & 1) == 0)
    {
      break;
    }

    v558 = v261;
    v578 = v81;
    v580 = v259;
    v265 = *(v259 + 56);
    v549 = *(v546 + 72);
    v48 = v54;
    v548 = *(v546 + 16);
    (v548)(v54, v265 + v549 * v263, a1);
    if (!*(v559 + 16) || (v266 = *(v581 + 24), v81 = *(v581 + 32), , v267 = sub_22F1229E8(v266, v81), LOBYTE(v266) = v268, , (v266 & 1) == 0))
    {

      v355 = v581;

      v356 = sub_22F740B70();
      v357 = sub_22F7415E0();
      v54 = isUniquelyReferenced_nonNull_native;
      if (os_log_type_enabled(v356, v357))
      {
        v358 = swift_slowAlloc();
        v359 = swift_slowAlloc();
        v583 = v359;
        *v358 = v563;
        v360 = *(v581 + 24);
        v361 = *(v581 + 32);

        v362 = sub_22F145F20(v360, v361, &v583);
        v250 = v572;

        *(v358 + 4) = v362;
        _os_log_impl(&dword_22F0FC000, v356, v357, "Unable to find important location presence for entity %s", v358, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v359);
        v363 = v359;
        v355 = v581;
        MEMORY[0x2319033A0](v363, -1, -1);
        MEMORY[0x2319033A0](v358, -1, -1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = a1;
      v55 = v567;
      v81 = *(v355 + 24);
      v364 = *(v355 + 32);

      v365 = v578;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v583 = v365;
      v366 = sub_22F1229E8(v81, v364);
      v368 = *(v365 + 16);
      v369 = (v367 & 1) == 0;
      v162 = __OFADD__(v368, v369);
      v370 = v368 + v369;
      a1 = v577;
      if (v162)
      {
        goto LABEL_305;
      }

      v371 = v367;
      if (*(v365 + 24) >= v370)
      {
        if ((v48 & 1) == 0)
        {
          v469 = v366;
          sub_22F134340();
          v366 = v469;
        }
      }

      else
      {
        sub_22F1259D0(v370, v48);
        v366 = sub_22F1229E8(v81, v364);
        if ((v371 & 1) != (v372 & 1))
        {
          goto LABEL_375;
        }
      }

      v48 = v565;
      v373 = v583;
      if (v371)
      {
        *(*(v583 + 56) + v366) = 9;

        v81 = v373;
LABEL_136:
        (*v555)(v48, isUniquelyReferenced_nonNull_native);
        goto LABEL_137;
      }

      *(v583 + 8 * (v366 >> 6) + 64) |= 1 << v366;
      v374 = (v373[6] + 16 * v366);
      *v374 = v81;
      v374[1] = v364;
      *(v373[7] + v366) = 9;
      v375 = v373[2];
      v162 = __OFADD__(v375, 1);
      v376 = v375 + 1;
      if (!v162)
      {
        v81 = v373;
        v373[2] = v376;

        goto LABEL_136;
      }

      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      v530 = sub_22F741A00();
      v255 = v530;
      v584 = MEMORY[0x277D84FA0];
      v55 = sub_22F741A00();
      if (!v55)
      {
        goto LABEL_311;
      }

      goto LABEL_134;
    }

    v269 = a2 - 1;
    if (__OFSUB__(a2, 1))
    {
      goto LABEL_309;
    }

    v54 = isUniquelyReferenced_nonNull_native;
    v270 = *(*(v559 + 56) + 8 * v267);
    v81 = v571;
    v55 = v566;
    isUniquelyReferenced_nonNull_native = v568;
    v271 = v581;
    v272 = v580;
    a1 = v577;
    if ((v269 & 0x8000000000000000) != 0)
    {
      goto LABEL_220;
    }

    while (1)
    {
      while (1)
      {
        v576 = v269;
        if (v574)
        {
          v274 = MEMORY[0x2319016F0]();
        }

        else
        {
          if (v269 >= *(v250 + 16))
          {
            goto LABEL_297;
          }

          v274 = *(v569 + 8 * v269);
        }

        v275 = *(v274 + 24);
        a1 = *(v274 + 32);
        v276 = *(v272 + 16);

        if (v276)
        {
          v277 = sub_22F1229E8(v275, a1);
          if (v278)
          {
            break;
          }
        }

        v303 = sub_22F740B70();
        v304 = sub_22F7415E0();

        if (os_log_type_enabled(v303, v304))
        {
          v305 = swift_slowAlloc();
          v306 = swift_slowAlloc();
          v583 = v306;
          *v305 = v563;
          v307 = sub_22F145F20(v275, a1, &v583);

          *(v305 + 4) = v307;
          _os_log_impl(&dword_22F0FC000, v303, v304, "Unable to find lifespan for entity %s", v305, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v306);
          v308 = v306;
          v48 = v565;
          MEMORY[0x2319033A0](v308, -1, -1);
          v309 = v305;
          v271 = v581;
          MEMORY[0x2319033A0](v309, -1, -1);
        }

        else
        {
        }

        v81 = *(v271 + 24);
        a2 = *(v271 + 32);

        v310 = v578;
        v311 = swift_isUniquelyReferenced_nonNull_native();
        v583 = v310;
        v312 = sub_22F1229E8(v81, a2);
        v314 = *(v310 + 16);
        v315 = (v313 & 1) == 0;
        v162 = __OFADD__(v314, v315);
        v316 = v314 + v315;
        if (v162)
        {
          goto LABEL_295;
        }

        a1 = v313;
        if (*(v310 + 24) >= v316)
        {
          if ((v311 & 1) == 0)
          {
            v334 = v312;
            sub_22F134340();
            v312 = v334;
          }
        }

        else
        {
          sub_22F1259D0(v316, v311);
          v312 = sub_22F1229E8(v81, a2);
          if ((a1 & 1) != (v317 & 1))
          {
            goto LABEL_375;
          }
        }

        v271 = v581;
        if (a1)
        {
          v273 = v312;

          v578 = v583;
          *(*(v583 + 56) + v273) = 8;
        }

        else
        {
          v318 = v583;
          *(v583 + 8 * (v312 >> 6) + 64) |= 1 << v312;
          v319 = (v318[6] + 16 * v312);
          *v319 = v81;
          v319[1] = a2;
          *(v318[7] + v312) = 8;

          v320 = v318[2];
          v162 = __OFADD__(v320, 1);
          v321 = v320 + 1;
          if (v162)
          {
            goto LABEL_299;
          }

          v578 = v318;
          v318[2] = v321;
        }

        a1 = v577;
        v81 = v571;
LABEL_150:
        v250 = v572;
        v272 = v580;
        v269 = v576;
        if (v576 < 0)
        {
          goto LABEL_220;
        }
      }

      v561 = v275;
      *&v557 = v274;
      v279 = v554;
      (v548)(v554, *(v580 + 56) + v277 * v549, v575);
      sub_22F73F030();
      sub_22F73F060();
      sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v280 = v571;
      v281 = sub_22F740DB0();
      v282 = *v560;
      (*v560)(v55, v280);
      v282(isUniquelyReferenced_nonNull_native, v280);
      if ((v281 & 1) == 0)
      {
        (*v555)(v279, v575);

        a1 = v577;
        v81 = v280;
LABEL_218:
        v54 = v570;
        v250 = v572;
        v271 = v581;
        goto LABEL_219;
      }

      sub_22F73F060();
      v283 = v542;
      sub_22F73F030();
      v284 = v531;
      sub_22F73F030();
      v285 = sub_22F740DB0();
      v286 = (v285 & 1) == 0;
      if (v285)
      {
        v287 = v283;
      }

      else
      {
        v287 = v284;
      }

      if (v286)
      {
        v288 = v283;
      }

      else
      {
        v288 = v284;
      }

      v48 = v565;
      v282(v287, v280);
      (*v541)(v553, v288, v280);
      sub_22F73F590();
      v290 = v289;
      sub_22F73F080();
      if (v291 * v564[4] >= v290)
      {

        v81 = v571;
        v282(v553, v571);
        v282(v552, v81);
        (*v555)(v554, v575);
        a1 = v577;
        goto LABEL_218;
      }

      v547 = v282;
      v55 = v566;
      isUniquelyReferenced_nonNull_native = v568;
      v54 = v570;
      v292 = v561;
      if (!*(v559 + 16) || (v293 = sub_22F1229E8(v561, a1), (v294 & 1) == 0))
      {

        v322 = sub_22F740B70();
        v323 = sub_22F7415E0();

        if (os_log_type_enabled(v322, v323))
        {
          v324 = swift_slowAlloc();
          v325 = swift_slowAlloc();
          v583 = v325;
          *v324 = v563;
          v326 = sub_22F145F20(v292, a1, &v583);

          *(v324 + 4) = v326;
          _os_log_impl(&dword_22F0FC000, v322, v323, "Unable to find important location presence for entity %s", v324, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v325);
          v327 = v325;
          v48 = v565;
          MEMORY[0x2319033A0](v327, -1, -1);
          MEMORY[0x2319033A0](v324, -1, -1);
        }

        else
        {
        }

        v271 = v581;
        v328 = *(v581 + 24);
        v329 = *(v581 + 32);

        v330 = v578;
        v331 = swift_isUniquelyReferenced_nonNull_native();
        v583 = v330;
        sub_22F1302A0(9, v328, v329, v331);

        v81 = v571;
        a2 = v560;
        v332 = v547;
        (v547)(v553, v571);
        v332(v552, v81);
        (*v555)(v554, v575);
        v578 = v583;
        a1 = v577;
        goto LABEL_150;
      }

      v295 = *(*(v559 + 56) + 8 * v293);
      v296 = v558;

      v297 = sub_22F740B70();
      v298 = sub_22F7415C0();

      if (os_log_type_enabled(v297, v298))
      {
        v299 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        v583 = v300;
        *v299 = v539;
        *(v299 + 4) = sub_22F145F20(v562, v296, &v583);
        *(v299 + 12) = 2080;
        *(v299 + 14) = sub_22F145F20(v561, a1, &v583);
        _os_log_impl(&dword_22F0FC000, v297, v298, "Entity %s's lifespan has significant overlap with %s's lifespan!", v299, 0x16u);
        swift_arrayDestroy();
        v301 = v300;
        v48 = v565;
        v302 = v564;
        MEMORY[0x2319033A0](v301, -1, -1);
        MEMORY[0x2319033A0](v299, -1, -1);

        v271 = v581;
      }

      else
      {

        v271 = v581;
        v302 = v564;
      }

      if (v270 < v295 * v302[5])
      {
        break;
      }

      v81 = v571;
      a2 = v560;
      v333 = v547;
      (v547)(v553, v571);
      v333(v552, v81);
      (*v555)(v554, v575);
      v269 = v576 - 1;
      a1 = v577;
      v250 = v572;
      v272 = v580;
      if (v576 - 1 < 0)
      {
        goto LABEL_220;
      }
    }

    v377 = v558;

    v378 = v562;
    sub_22F10BBDC(&v583, v562, v377);

    v379 = sub_22F740B70();
    v380 = sub_22F7415D0();

    if (os_log_type_enabled(v379, v380))
    {
      v381 = swift_slowAlloc();
      v382 = swift_slowAlloc();
      v583 = v382;
      *v381 = v529;
      *(v381 + 4) = sub_22F145F20(v378, v377, &v583);
      *(v381 + 12) = 2048;
      *(v381 + 14) = v270;
      *(v381 + 22) = 2080;
      v383 = sub_22F145F20(v561, a1, &v583);

      *(v381 + 24) = v383;
      *(v381 + 32) = 2048;
      *(v381 + 34) = v295;
      _os_log_impl(&dword_22F0FC000, v379, v380, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v381, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v382, -1, -1);
      MEMORY[0x2319033A0](v381, -1, -1);
    }

    else
    {
    }

    v450 = v575;
    v451 = v554;
    v452 = v581;
    v453 = *(v581 + 24);
    v454 = *(v581 + 32);

    v455 = v578;
    v456 = swift_isUniquelyReferenced_nonNull_native();
    v583 = v455;
    sub_22F1302A0(6, v453, v454, v456);

    v81 = v571;
    v457 = v547;
    (v547)(v553, v571);
    v457(v552, v81);
    v458 = v450;
    v271 = v452;
    (*v555)(v451, v458);
    v578 = v583;
    a1 = v577;
    v250 = v572;
LABEL_219:
    v272 = v580;
LABEL_220:
    if (sub_22F15E910(v562, v558, v584))
    {
      isUniquelyReferenced_nonNull_native = v575;
      (*v555)(v48, v575);

      v81 = v578;
      v55 = v567;
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = v575;
    v55 = v567;
    if (v573 >= v530)
    {
LABEL_268:

      v81 = v578;
      goto LABEL_269;
    }

    v384 = v573;
    while (2)
    {
      v576 = v384;
      if (v574)
      {
        v386 = MEMORY[0x2319016F0]();
      }

      else
      {
        if (v384 < 0)
        {
          goto LABEL_369;
        }

        if (v384 >= *(v250 + 16))
        {
          goto LABEL_370;
        }

        v386 = *(v569 + 8 * v384);
      }

      v388 = *(v386 + 24);
      v387 = *(v386 + 32);
      v389 = *(v272 + 16);

      if (!v389 || (v390 = sub_22F1229E8(v388, v387), (v391 & 1) == 0))
      {

        v417 = sub_22F740B70();
        v418 = sub_22F7415E0();

        if (os_log_type_enabled(v417, v418))
        {
          v419 = swift_slowAlloc();
          v420 = swift_slowAlloc();
          v583 = v420;
          *v419 = v563;
          v421 = sub_22F145F20(v388, v387, &v583);

          *(v419 + 4) = v421;
          _os_log_impl(&dword_22F0FC000, v417, v418, "Unable to find lifespan for entity %s", v419, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v420);
          v422 = v420;
          v271 = v581;
          MEMORY[0x2319033A0](v422, -1, -1);
          MEMORY[0x2319033A0](v419, -1, -1);
        }

        else
        {
        }

        a1 = v577;
        v81 = *(v271 + 24);
        v423 = *(v271 + 32);

        v424 = v578;
        v425 = swift_isUniquelyReferenced_nonNull_native();
        v583 = v424;
        v426 = sub_22F1229E8(v81, v423);
        v428 = *(v424 + 16);
        v429 = (v427 & 1) == 0;
        v162 = __OFADD__(v428, v429);
        v430 = v428 + v429;
        if (v162)
        {
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
          __break(1u);
LABEL_375:
          sub_22F7420C0();
          __break(1u);
LABEL_376:
          for (i = v81; ; i = *(v249 - 32))
          {

            __break(1u);
LABEL_378:
            ;
          }
        }

        v431 = v427;
        if (*(v424 + 24) >= v430)
        {
          if ((v425 & 1) == 0)
          {
            v448 = v426;
            sub_22F134340();
            v426 = v448;
          }
        }

        else
        {
          sub_22F1259D0(v430, v425);
          v426 = sub_22F1229E8(v81, v423);
          if ((v431 & 1) != (v432 & 1))
          {
            goto LABEL_375;
          }
        }

        v271 = v581;
        if (v431)
        {
          v385 = v426;

          v578 = v583;
          *(*(v583 + 56) + v385) = 8;
        }

        else
        {
          v433 = v583;
          *(v583 + 8 * (v426 >> 6) + 64) |= 1 << v426;
          v434 = (v433[6] + 16 * v426);
          *v434 = v81;
          v434[1] = v423;
          *(v433[7] + v426) = 8;

          v435 = v433[2];
          v162 = __OFADD__(v435, 1);
          v436 = v435 + 1;
          if (v162)
          {
            goto LABEL_371;
          }

          v578 = v433;
          v433[2] = v436;
        }

        v81 = v571;
        isUniquelyReferenced_nonNull_native = v575;
        v250 = v572;
        v384 = v576;
        v272 = v580;
        goto LABEL_228;
      }

      v561 = v388;
      *&v557 = v386;
      v392 = v536;
      (v548)(v536, *(v580 + 56) + v390 * v549, v575);
      v393 = v568;
      sub_22F73F030();
      v394 = v566;
      sub_22F73F060();
      sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v395 = sub_22F740DB0();
      v396 = *v560;
      (*v560)(v394, v81);
      v396(v393, v81);
      if ((v395 & 1) == 0)
      {
        v459 = v575;
        (*v555)(v392, v575);

        isUniquelyReferenced_nonNull_native = v459;

LABEL_278:
        a1 = v577;
        v54 = v570;
        v81 = v578;
        v250 = v572;
        v55 = v567;
        goto LABEL_269;
      }

      sub_22F73F060();
      v397 = v532;
      sub_22F73F030();
      v398 = v533;
      sub_22F73F030();
      v399 = sub_22F740DB0();
      v400 = (v399 & 1) == 0;
      if (v399)
      {
        v401 = v397;
      }

      else
      {
        v401 = v398;
      }

      if (v400)
      {
        v402 = v397;
      }

      else
      {
        v402 = v398;
      }

      v396(v401, v81);
      (*v541)(v535, v402, v81);
      v48 = v565;
      sub_22F73F590();
      v404 = v403;
      sub_22F73F080();
      if (v405 * v564[4] >= v404)
      {

        v396(v535, v81);
        v396(v534, v81);
        isUniquelyReferenced_nonNull_native = v575;
        (*v555)(v536, v575);
        goto LABEL_278;
      }

      v547 = v396;
      v54 = v570;
      v55 = v567;
      v406 = v561;
      if (!*(v559 + 16) || (v407 = sub_22F1229E8(v561, v387), (v408 & 1) == 0))
      {

        v437 = sub_22F740B70();
        v438 = sub_22F7415E0();

        if (os_log_type_enabled(v437, v438))
        {
          v439 = swift_slowAlloc();
          v440 = swift_slowAlloc();
          v583 = v440;
          *v439 = v563;
          v441 = sub_22F145F20(v406, v387, &v583);

          *(v439 + 4) = v441;
          _os_log_impl(&dword_22F0FC000, v437, v438, "Unable to find important location presence for entity %s", v439, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v440);
          MEMORY[0x2319033A0](v440, -1, -1);
          MEMORY[0x2319033A0](v439, -1, -1);
        }

        else
        {
        }

        a1 = v577;
        v271 = v581;
        v442 = *(v581 + 24);
        v443 = *(v581 + 32);

        v444 = v578;
        v445 = swift_isUniquelyReferenced_nonNull_native();
        v583 = v444;
        sub_22F1302A0(9, v442, v443, v445);

        v81 = v571;
        v446 = v547;
        (v547)(v535, v571);
        v446(v534, v81);
        isUniquelyReferenced_nonNull_native = v575;
        (*v555)(v536, v575);
        v578 = v583;
        v250 = v572;
        v272 = v580;
        v384 = v576;
LABEL_228:
        if (v384 >= v530)
        {
          goto LABEL_268;
        }

        continue;
      }

      break;
    }

    v409 = *(*(v559 + 56) + 8 * v407);
    v410 = v558;

    v411 = sub_22F740B70();
    v412 = sub_22F7415C0();

    if (os_log_type_enabled(v411, v412))
    {
      v413 = swift_slowAlloc();
      v414 = swift_slowAlloc();
      v583 = v414;
      *v413 = v539;
      *(v413 + 4) = sub_22F145F20(v562, v410, &v583);
      *(v413 + 12) = 2080;
      v415 = v561;
      *(v413 + 14) = sub_22F145F20(v561, v387, &v583);
      _os_log_impl(&dword_22F0FC000, v411, v412, "Entity %s's lifespan has significant overlap with %s's lifespan!", v413, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v414, -1, -1);
      v416 = v413;
      v81 = v571;
      MEMORY[0x2319033A0](v416, -1, -1);

      v271 = v581;
      v272 = v580;
    }

    else
    {

      v271 = v581;
      v272 = v580;
      v415 = v561;
    }

    if (v270 >= v409 * v564[5])
    {

      v447 = v547;
      (v547)(v535, v81);
      v447(v534, v81);
      isUniquelyReferenced_nonNull_native = v575;
      (*v555)(v536, v575);
      v384 = v576 + 1;
      if (__OFADD__(v576, 1))
      {
        goto LABEL_372;
      }

      a1 = v577;
      v250 = v572;
      goto LABEL_228;
    }

    v461 = v558;

    v462 = v562;
    sub_22F10BBDC(&v583, v562, v461);

    v463 = sub_22F740B70();
    v464 = sub_22F7415D0();

    if (os_log_type_enabled(v463, v464))
    {
      v465 = swift_slowAlloc();
      v466 = swift_slowAlloc();
      v583 = v466;
      *v465 = v529;
      v467 = sub_22F145F20(v462, v461, &v583);

      *(v465 + 4) = v467;
      *(v465 + 12) = 2048;
      *(v465 + 14) = v270;
      *(v465 + 22) = 2080;
      v468 = sub_22F145F20(v415, v387, &v583);

      *(v465 + 24) = v468;
      *(v465 + 32) = 2048;
      *(v465 + 34) = v409;
      _os_log_impl(&dword_22F0FC000, v463, v464, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v465, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v466, -1, -1);
      MEMORY[0x2319033A0](v465, -1, -1);
    }

    else
    {
    }

    v470 = *(v581 + 24);
    v471 = *(v581 + 32);

    v472 = v578;
    v473 = swift_isUniquelyReferenced_nonNull_native();
    v583 = v472;
    sub_22F1302A0(6, v470, v471, v473);

    v474 = v571;
    v475 = v547;
    (v547)(v535, v571);
    v475(v534, v474);
    isUniquelyReferenced_nonNull_native = v575;
    (*v555)(v536, v575);
    v81 = v583;
    a1 = v577;
    v48 = v565;
    v54 = v570;
    v250 = v572;
    v55 = v567;
LABEL_269:
    v251 = v256 + v251;
    v449 = v545;
    (v551)(v545, v251);
    if (*v449 == 1)
    {
      goto LABEL_306;
    }

    (*v555)(v48, isUniquelyReferenced_nonNull_native);
LABEL_201:

LABEL_137:
    a2 = v573;
    if (v573 == v55)
    {
      goto LABEL_311;
    }
  }

  v54 = isUniquelyReferenced_nonNull_native;
  isUniquelyReferenced_nonNull_native = a1;
  a1 = v577;
LABEL_190:
  v55 = v81;

  v335 = sub_22F740B70();
  v336 = sub_22F7415E0();
  if (os_log_type_enabled(v335, v336))
  {
    v337 = swift_slowAlloc();
    v338 = swift_slowAlloc();
    v583 = v338;
    *v337 = v563;
    v339 = *(v581 + 24);
    v340 = *(v581 + 32);

    v341 = sub_22F145F20(v339, v340, &v583);
    v250 = v572;

    *(v337 + 4) = v341;
    _os_log_impl(&dword_22F0FC000, v335, v336, "Unable to find lifespan for entity %s", v337, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v338);
    v342 = v338;
    v257 = v581;
    MEMORY[0x2319033A0](v342, -1, -1);
    MEMORY[0x2319033A0](v337, -1, -1);
  }

  else
  {
  }

  v81 = *(v257 + 24);
  a2 = *(v257 + 32);

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v583 = v55;
  v343 = sub_22F1229E8(v81, a2);
  v345 = *(v55 + 16);
  v346 = (v344 & 1) == 0;
  v162 = __OFADD__(v345, v346);
  v347 = v345 + v346;
  if (v162)
  {
    goto LABEL_296;
  }

  v348 = v344;
  if (*(v55 + 24) >= v347)
  {
    v55 = v567;
    if ((v48 & 1) == 0)
    {
      v460 = v343;
      sub_22F134340();
      v343 = v460;
    }
  }

  else
  {
    sub_22F1259D0(v347, v48);
    v343 = sub_22F1229E8(v81, a2);
    v55 = v567;
    if ((v348 & 1) != (v349 & 1))
    {
      goto LABEL_375;
    }
  }

  v48 = v565;
  if (v348)
  {
    v350 = v343;

    v81 = v583;
    *(*(v583 + 56) + v350) = 8;
    goto LABEL_201;
  }

  v351 = v583;
  *(v583 + 8 * (v343 >> 6) + 64) |= 1 << v343;
  v352 = (*(v351 + 48) + 16 * v343);
  *v352 = v81;
  v352[1] = a2;
  v81 = v351;
  *(*(v351 + 56) + v343) = 8;

  v353 = *(v81 + 16);
  v162 = __OFADD__(v353, 1);
  v354 = v353 + 1;
  if (!v162)
  {
    *(v81 + 16) = v354;
    goto LABEL_137;
  }

  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:

  v247 = sub_22F14E740(MEMORY[0x277D84F90]);

  (*v555)(v48, isUniquelyReferenced_nonNull_native);
  (*(v544 + 8))(v579, v543);

LABEL_360:

  return v247;
}

uint64_t _s11PhotosGraph34ImportantEntitiesChildrenProcessorC011processUserE002inB013progressBlock35withProcessInferredChildNodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0r6PersonP0CctFZ_0(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  [v10 usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears];
  v12 = v11 * 31557600.0;
  [v10 usersChildrenInferenceMinimumLifespanYears];
  *v17 = v12;
  *&v17[1] = v13 * 31557600.0;
  v17[2] = 15;
  v18 = xmmword_22F77CAC0;
  v19 = 0;
  type metadata accessor for ImportantEntitiesChildrenContainer(0);
  v14 = swift_allocObject();
  v15 = a1;

  sub_22F240428(v15, a2, a3, a4, a5);
  sub_22F246DE0(v14, v17, a2, a3, 1);
}

uint64_t sub_22F250680(uint64_t a1)
{
  result = sub_22F73F690();
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

uint64_t sub_22F2507B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22F2508F4(uint64_t *a1, int a2)
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

uint64_t sub_22F25093C(uint64_t result, int a2, int a3)
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

uint64_t sub_22F2509A0()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v6, "InputStream: ");
  HIWORD(v6[1]) = -4864;
  sub_22F15C30C((v0 + 6), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AD0, &qword_22F77CD48);
  v1 = sub_22F740E90();
  MEMORY[0x231900B10](v1);

  MEMORY[0x231900B10](0x7265737055202D20, 0xEC000000203A7374);
  v5[0] = *(*v0 + 16);
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0x6574656C6544202CLL, 0xEB00000000203A73);
  v5[0] = *(v0[1] + 16);
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  return v6[0];
}

uint64_t sub_22F250B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F250B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F250BC0()
{
  result = qword_27DAB2AD8;
  if (!qword_27DAB2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AD8);
  }

  return result;
}

void sub_22F250E20(uint64_t a1, uint64_t a2)
{
  v5 = sub_22F7416B0();
  v7 = v6;
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_2810A91C8;
  v9 = sub_22F740DF0();
  v10 = [v8 fetchSongWithUID_];

  if (v10)
  {
    sub_22F7416A0();
    if (!v2)
    {
      v37 = v8;
      v38 = v5;
      v12 = [v10 tagIDs];
      sub_22F741420();

      v39 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
      sub_22F16BC6C(&qword_2810A9250, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277D83B68]);
      sub_22F160DE4();
      v35 = sub_22F7410E0();
      v36 = v13;

      v14 = [v10 keywords];
      sub_22F741420();

      v34 = sub_22F7410E0();
      v16 = v15;

      v17 = [v10 weightedKeywords];
      sub_22F170D8C();
      sub_22F740CA0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AE8, &qword_22F77CE00);
      sub_22F16BC6C(&qword_27DAB2AF0, &qword_27DAB2AE8, &qword_22F77CE00, MEMORY[0x277D83480]);
      v18 = sub_22F7410E0();
      v20 = v19;

      sub_22F7416A0();
      sub_22F7416A0();
      sub_22F741B00();
      MEMORY[0x231900B10](0x203A646975, 0xE500000000000000);
      v21 = v18;
      v22 = [v10 uid];
      v23 = sub_22F740E20();
      v25 = v24;

      MEMORY[0x231900B10](v23, v25);

      MEMORY[0x231900B10](0x203A656D616E0ALL, 0xE700000000000000);
      v26 = [v10 songName];
      v27 = sub_22F740E20();
      v29 = v28;

      MEMORY[0x231900B10](v27, v29);

      MEMORY[0x231900B10](0x3A7473697472610ALL, 0xE900000000000020);
      v30 = [v10 artistName];
      v31 = sub_22F740E20();
      v33 = v32;

      MEMORY[0x231900B10](v31, v33);

      MEMORY[0x231900B10](0x203A736761740ALL, 0xE700000000000000);
      MEMORY[0x231900B10](v35, v36);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F792CA0);
      MEMORY[0x231900B10](v34, v16);

      MEMORY[0x231900B10](0xD000000000000013, 0x800000022F792CC0);
      MEMORY[0x231900B10](v21, v20);

      return;
    }
  }

  else
  {
    sub_22F2519BC();
    swift_allocError();
    *v11 = a1;
    v11[1] = a2;
    swift_willThrow();
  }
}

void sub_22F2513F0(void *a1, void *a2, uint64_t a3)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    sub_22F7416A0();
    return;
  }

  v8 = v7;
  v48 = a2;
  v9 = a1;
  [v8 suggestedMood];
  v10 = PHStringForMemoryMood();
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  v12 = sub_22F740E20();
  v14 = v13;

  if (sub_22F740F10() <= 0)
  {

LABEL_5:
    v14 = 0xE100000000000000;
    v12 = 63;
  }

  v15 = [v8 moodKeywords];
  v55 = a3;
  if (v15)
  {
    v16 = v15;
    v17 = sub_22F741180();

    if (*(v17 + 16))
    {
      v50 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277D83958]);
      v18 = sub_22F740DA0();
      v20 = v19;
    }

    else
    {

      v20 = 0xE200000000000000;
      v18 = 23899;
    }
  }

  else
  {
    v20 = 0xE100000000000000;
    v18 = 63;
  }

  v21 = [v9 photoLibrary];
  if (v21)
  {
    v22 = v21;
    v47 = v18;
    if (sub_22F742040())
    {
      v23 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v23 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v53 = &type metadata for FlexMusicSongKeywordProvider;
    v54 = &protocol witness table for FlexMusicSongKeywordProvider;
    v52 = -1;
    v50 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0([objc_allocWithZone(v23) init]);
    v51 = 0;
    v24 = v22;
    v25 = sub_22F2E9C2C(v24, &v50, 0);
    if (v3)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v26 = v25;
      v46 = v12;

      swift_unknownObjectRelease();
      sub_22F2C780C(v8, v48, v26, v55);
      v28 = v27;
      sub_22F7416A0();
      v55 = 0;
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0x203A64697575, 0xE600000000000000);
      v29 = [v9 uuid];
      if (v29)
      {
        v30 = v9;
        v31 = v29;
        v32 = sub_22F740E20();
        v34 = v33;

        v9 = v30;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      MEMORY[0x231900B10](v32, v34);

      MEMORY[0x231900B10](0x203A656C7469740ALL, 0xE800000000000000);
      v49 = v9;
      v35 = [v9 title];
      v36 = sub_22F740E20();
      v38 = v37;

      MEMORY[0x231900B10](v36, v38);

      MEMORY[0x231900B10](0x6C7469746275730ALL, 0xEB00000000203A65);
      v39 = [v8 subtitle];
      if (v39)
      {
        v40 = v39;
        v41 = sub_22F740E20();
        v43 = v42;

        v44 = v47;
      }

      else
      {
        v43 = 0xE300000000000000;
        v44 = v47;
        v41 = 7104878;
      }

      MEMORY[0x231900B10](v41, v43);

      MEMORY[0x231900B10](0x4D79726F6D656D0ALL, 0xED0000203A646F6FLL);
      MEMORY[0x231900B10](v46, v14);

      MEMORY[0x231900B10](0x79654B646F6F6D0ALL, 0xEF203A7364726F77);
      MEMORY[0x231900B10](v44, v20);

      MEMORY[0x231900B10](0x657275746165660ALL, 0xEB00000000203A73);
      v45 = MusicCurationFeatures.description.getter();
      MEMORY[0x231900B10](v45);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22F2519BC()
{
  result = qword_27DAB2AE0;
  if (!qword_27DAB2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AE0);
  }

  return result;
}

uint64_t sub_22F251A38(void *a1)
{
  if ([a1 type] != 7)
  {
    goto LABEL_10;
  }

  v3 = [a1 additionalInfo];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_22F740CA0();

  if (!*(v5 + 16) || (v6 = sub_22F1229E8(0x4E796164696C6F68, 0xEB00000000656D61), (v7 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_22F13A100(*(v5 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  if (v11 == (*(v1 + 80))() && v12 == v8)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

void *sub_22F251BC0(unint64_t a1, uint64_t a2)
{
  v31 = [objc_allocWithZone(PGPhotosChallengeHolidayAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_22F741A00();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v28 = *(v30 + 80);
      v29 = a1 & 0xC000000000000001;
      v26 = a1 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x277D84F98];
      v27 = a1;
      while (1)
      {
        if (v29)
        {
          v6 = MEMORY[0x2319016F0](v4, a1);
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            goto LABEL_27;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v28();
        v9 = sub_22F740DF0();

        v10 = [v7 entityIdentifier];
        if (!v10)
        {
          sub_22F740E20();
          v10 = sub_22F740DF0();
        }

        v11 = [v31 debugInformationForHolidayName:v9 assetUUID:{v10, v26}];

        v12 = sub_22F740CA0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v5;
        a1 = v5;
        v15 = sub_22F122A80(v7);
        v16 = v5[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v5[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v32;
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a1 = &v32;
            sub_22F133A8C();
            v5 = v32;
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22F125140(v18, isUniquelyReferenced_nonNull_native);
          a1 = v32;
          v20 = sub_22F122A80(v7);
          if ((v19 & 1) != (v21 & 1))
          {
            sub_22F254B18();
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v15 = v20;
          v5 = v32;
          if (v19)
          {
LABEL_4:
            *(v5[7] + 8 * v15) = v12;

            goto LABEL_5;
          }
        }

        v5[(v15 >> 6) + 8] |= 1 << v15;
        *(v5[6] + 8 * v15) = v7;
        *(v5[7] + 8 * v15) = v12;
        v22 = v5[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_26;
        }

        v5[2] = v24;
LABEL_5:
        ++v4;
        a1 = v27;
        if (v8 == v3)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_30:

  return v5;
}

unint64_t sub_22F254B18()
{
  result = qword_27DAB0810;
  if (!qword_27DAB0810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB0810);
  }

  return result;
}

void *sub_22F254B64(unint64_t a1, uint64_t a2)
{
  v31 = [objc_allocWithZone(PGPhotosChallengeHolidayAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_22F741A00();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v28 = *(v30 + 80);
      v29 = a1 & 0xC000000000000001;
      v26 = a1 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x277D84F98];
      v27 = a1;
      while (1)
      {
        if (v29)
        {
          v6 = MEMORY[0x2319016F0](v4, a1);
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            goto LABEL_27;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v9 = [v6 entityIdentifier];
        v10 = v9;
        if (!v9)
        {
          sub_22F740E20();
          v10 = sub_22F740DF0();
        }

        v28(v9);
        v11 = sub_22F740DF0();

        v12 = [v31 predictedQuestionStateForAssetUUID:v10 holidayName:v11];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v5;
        a1 = v5;
        v15 = sub_22F122A80(v7);
        v16 = v5[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v5[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v32;
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a1 = &v32;
            sub_22F133930();
            v5 = v32;
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22F124EDC(v18, isUniquelyReferenced_nonNull_native);
          a1 = v32;
          v20 = sub_22F122A80(v7);
          if ((v19 & 1) != (v21 & 1))
          {
            sub_22F254B18();
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v15 = v20;
          v5 = v32;
          if (v19)
          {
LABEL_4:
            *(v5[7] + 2 * v15) = v12;

            goto LABEL_5;
          }
        }

        v5[(v15 >> 6) + 8] |= 1 << v15;
        *(v5[6] + 8 * v15) = v7;
        *(v5[7] + 2 * v15) = v12;
        v22 = v5[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_26;
        }

        v5[2] = v24;
LABEL_5:
        ++v4;
        a1 = v27;
        if (v8 == v3)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_30:

  return v5;
}

uint64_t sub_22F254E50()
{
  result = sub_22F3D9C54(&unk_2843DAAC8);
  qword_2810AA780 = result;
  return result;
}

uint64_t sub_22F254E78()
{
  result = sub_22F3D9C54(&unk_2843DAB48);
  qword_2810AA768 = result;
  return result;
}

id MusicForMomentElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForMomentElector.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForMomentElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F254FB4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v89 = sub_22F73F270();
  v106 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22F73F9B0();
  v105 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AF8, &qword_22F77F300);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = v74 - v16;
  v104 = sub_22F73F690();
  v17 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v77 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = v74 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v74 - v22;
  if (qword_2810A9B18 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    sub_22F1B560C("Music For Moment Elector", 24, 2u, 0, 1, qword_2810B4E18, v112);
    v111 = MEMORY[0x277D84FA0];
    v24 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_memoryCategory);
    if (qword_2810AA778 != -1)
    {
      swift_once();
    }

    if (!sub_22F15EA08(v24, qword_2810AA780))
    {
      if (qword_2810AA760 != -1)
      {
        swift_once();
      }

      if (sub_22F15EA08(v24, qword_2810AA768) || (*(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration + 8) & 1) != 0 || *(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration) > 2629800.0)
      {
        sub_22F7416A0();
        if (!v4)
        {
          sub_22F1B2BBC(1);
        }

        return;
      }
    }

    v90 = v4;
    v76 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_cache);
    v4 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_curatorEvents);
    v74[1] = a3;
    v25 = sub_22F741670();
    v26 = *(v4 + 16);

    v103 = v26;
    if (!v26)
    {
      break;
    }

    v75 = v23;
    v23 = 0;
    a1 = v4 + 32;
    a2 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 < 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 & 0xFFFFFFFFFFFFFF8;
    }

    v74[0] = v27;
    v101 = v25 & 0xC000000000000001;
    v97 = (v17 + 48);
    v96 = (v17 + 32);
    v83 = *MEMORY[0x277CC9988];
    v82 = *MEMORY[0x277CC9998];
    v81 = (v106 + 8);
    v80 = (v105 + 8);
    v91 = (v17 + 8);
    v102 = v25 >> 62;
    v79 = xmmword_22F770DF0;
    a3 = v92;
    v17 = v25;
    v100 = v25 & 0xFFFFFFFFFFFFFF8;
    v78 = v14;
    v84 = v25;
    v98 = v4;
    while (v23 < *(v4 + 16))
    {
      sub_22F15C30C(a1, &v107);
      if (v102)
      {
        if (v23 == sub_22F741A00())
        {
LABEL_43:

          __swift_destroy_boxed_opaque_existential_0(&v107);
          goto LABEL_44;
        }
      }

      else if (v23 == *(a2 + 16))
      {
        goto LABEL_43;
      }

      v105 = a1;
      if (v101)
      {
        v30 = MEMORY[0x2319016F0](v23, v17);
      }

      else
      {
        if (v23 >= *(a2 + 16))
        {
          goto LABEL_49;
        }

        v30 = *(v17 + 8 * v23 + 32);
      }

      v106 = v30;
      sub_22F162700(&v107, &v110);
      sub_22F162700(&v110, &v107);
      v31 = v108;
      v32 = v109;
      __swift_project_boxed_opaque_existential_1(&v107, v108);
      v33 = (*(v32 + 24))(v31, v32);
      if (!v33)
      {

        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
LABEL_11:
        v29 = v105;
        a2 = v100;
        __swift_destroy_boxed_opaque_existential_0(&v107);
        sub_22F120ADC(a3, &qword_27DAB2AF8, &qword_22F77F300);
        goto LABEL_12;
      }

      v34 = v33;
      v35 = v108;
      v36 = v109;
      __swift_project_boxed_opaque_existential_1(&v107, v108);
      (*(v36 + 8))(v35, v36);
      v37 = *v97;
      if ((*v97)(v14, 1, v104) == 1)
      {

        sub_22F120ADC(v14, &qword_27DAB0920, &qword_22F770B20);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        (*(*(v38 - 8) + 56))(a3, 1, 1, v38);
LABEL_27:
        v4 = v98;
        goto LABEL_11;
      }

      v94 = v34;
      v95 = *v96;
      v95(v99, v14, v104);
      v39 = v86;
      sub_22F73F970();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
      v93 = v37;
      v40 = sub_22F73F990();
      v41 = *(v40 - 8);
      v42 = *(v41 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v79;
      v45 = v44 + v43;
      v46 = *(v41 + 104);
      v46(v45, v83, v40);
      v46(v45 + v42, v82, v40);
      v47 = v85;
      sub_22F3D97CC(v44);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v48 = v88;
      v49 = v99;
      sub_22F73F860();

      sub_22F73F920();
      (*v81)(v48, v89);
      v50 = v104;
      (*v80)(v39, v87);
      v51 = *v91;
      (*v91)(v49, v50);
      if (v93(v47, 1, v50) == 1)
      {

        sub_22F120ADC(v47, &qword_27DAB0920, &qword_22F770B20);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        a3 = v92;
        (*(*(v52 - 8) + 56))(v92, 1, 1, v52);
        v53 = v95;
      }

      else
      {
        v53 = v95;
        v95(v77, v47, v104);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        v93 = v51;
        v55 = *(v54 + 48);
        a3 = v92;
        v53(v92);
        *&a3[v55] = v94;
        v51 = v93;
        (*(*(v54 - 8) + 56))(a3, 0, 1, v54);
      }

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
      if ((*(*(v56 - 8) + 48))(a3, 1, v56) == 1)
      {

        v14 = v78;
        v17 = v84;
        goto LABEL_27;
      }

      v57 = *&a3[*(v56 + 48)];
      v58 = v75;
      (v53)(v75, a3, v104);
      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [v57 coordinate];
      v61 = v60;
      [v57 coordinate];
      sub_22F34AF8C(4, v61, v62);
      v64 = v63;
      v66 = v65;
      swift_setDeallocating();

      v67 = v64;
      v68 = v106;
      v69 = v90;
      v70 = MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(0x6D617A616873, 0xE600000000000000, v67, v66, v58, v106);
      v90 = v69;
      if (v69)
      {

        (v51)(v58, v104);

        __swift_destroy_boxed_opaque_existential_0(&v107);
        return;
      }

      v71 = v70;

      v72 = sub_22F151734(v71);

      sub_22F2EA558(v72);

      (v51)(v58, v104);
      __swift_destroy_boxed_opaque_existential_0(&v107);
      v14 = v78;
      v17 = v84;
      v4 = v98;
      v29 = v105;
      a2 = v100;
LABEL_12:
      ++v23;
      a1 = v29 + 40;
      if (v103 == v23)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_42:

LABEL_44:
  sub_22F1B2BBC(0);
  v73 = v90;
  sub_22F7416A0();

  if (v73)
  {
  }
}

char *AppleMusicSongKeywordProvider.keywordsDataFrame.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 == 255)
  {
    sub_22F255F20(*v0, 255);
    v3 = sub_22F1DE30C();
    *v0 = v3;
    *(v0 + 8) = 0;
    v4 = v3;
  }

  else
  {
    v3 = *v0;
  }

  sub_22F256018(v1, v2);
  return v3;
}

void sub_22F255F20(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_22F21173C(a1);
  }
}

void AppleMusicSongKeywordProvider.keywordsDataFrame.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  sub_22F255F20(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = v4;
}

uint64_t (*AppleMusicSongKeywordProvider.keywordsDataFrame.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = AppleMusicSongKeywordProvider.keywordsDataFrame.getter();
  v5 = v4;
  sub_22F255F20(*v1, *(v1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5 & 1;
  return sub_22F255FE4;
}

uint64_t sub_22F255FE4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

id sub_22F256018(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_22F256030(result);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySo11MADataFrameCs5Error_pGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22F256070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_22F2560BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_22F256118(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_22F256160(uint64_t result, int a2, int a3)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F256224()
{
  v0 = MEMORY[0x277D84FA0];
  v51 = MEMORY[0x277D84FA0];
  v52 = MEMORY[0x277D84FA0];

  sub_22F2EA740(v1);

  sub_22F2EA740(v2);

  sub_22F2EA740(v3);

  sub_22F2EA740(v4);

  sub_22F2EA740(v5);

  sub_22F2EA740(v6);

  sub_22F2EA740(v7);
  sub_22F2EA558(v51);

  sub_22F2EA740(v8);

  sub_22F2EA740(v9);

  sub_22F2EA740(v10);

  sub_22F2EA740(v11);

  sub_22F2EA740(v12);

  sub_22F2EA740(v13);

  sub_22F2EA740(v14);
  sub_22F2EA558(v0);

  sub_22F2EA740(v15);

  sub_22F2EA740(v16);

  sub_22F2EA740(v17);

  sub_22F2EA740(v18);

  sub_22F2EA740(v19);

  sub_22F2EA740(v20);

  sub_22F2EA740(v21);
  sub_22F2EA558(v0);

  sub_22F2EA740(v22);

  sub_22F2EA740(v23);

  sub_22F2EA740(v24);

  sub_22F2EA740(v25);

  sub_22F2EA740(v26);

  sub_22F2EA740(v27);

  sub_22F2EA740(v28);
  sub_22F2EA558(v0);

  sub_22F2EA740(v29);

  sub_22F2EA740(v30);

  sub_22F2EA740(v31);

  sub_22F2EA740(v32);

  sub_22F2EA740(v33);

  sub_22F2EA740(v34);

  sub_22F2EA740(v35);
  sub_22F2EA558(v0);

  sub_22F2EA740(v36);

  sub_22F2EA740(v37);

  sub_22F2EA740(v38);

  sub_22F2EA740(v39);

  sub_22F2EA740(v40);

  sub_22F2EA740(v41);

  sub_22F2EA740(v42);
  sub_22F2EA558(v0);

  sub_22F2EA740(v43);

  sub_22F2EA740(v44);

  sub_22F2EA740(v45);

  sub_22F2EA740(v46);

  sub_22F2EA740(v47);

  sub_22F2EA740(v48);

  sub_22F2EA740(v49);
  sub_22F2EA558(v0);
  return v52;
}

uint64_t sub_22F25664C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_22F2567AC(v4, __dst) & 1;
}

uint64_t sub_22F2566A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v3;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  sub_22F256700(v6, v8);
  return v4 & 1;
}

void sub_22F256700(uint64_t *a1, uint64_t *a2)
{
  sub_22F15BD14(*a1, *a2);
  if (v4)
  {
    sub_22F15BD14(a1[1], a2[1]);
    if (v5)
    {
      sub_22F15BD14(a1[2], a2[2]);
      if (v6)
      {
        sub_22F15BD14(a1[3], a2[3]);
        if (v7)
        {
          sub_22F15BD14(a1[4], a2[4]);
          if (v8)
          {
            sub_22F15BD14(a1[5], a2[5]);
            if (v9)
            {
              v10 = a1[6];
              v11 = a2[6];

              sub_22F15BD14(v10, v11);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22F2567AC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v40 = *(a2 + 40);
  v41 = *(a1 + 40);
  v38 = *(a2 + 48);
  v39 = *(a1 + 48);
  sub_22F15BD14(*a1, *a2);
  if (v12 & 1) != 0 && (sub_22F15BD14(v5, v9), (v13) && (sub_22F15BD14(v4, v8), (v14) && (sub_22F15BD14(v7, v11), (v15) && (sub_22F15BD14(v6, v10), (v16) && (sub_22F15BD14(v41, v40), (v17) && (sub_22F15BD14(v39, v38), (v18) && (v19 = *(a1 + 72), v64[0] = *(a1 + 56), v64[1] = v19, v64[2] = *(a1 + 88), v65 = *(a1 + 104), v20 = *(a2 + 72), v62[0] = *(a2 + 56), v62[1] = v20, v62[2] = *(a2 + 88), v63 = *(a2 + 104), sub_22F256700(v64, v62), (v21) && (v22 = *(a1 + 128), v60[0] = *(a1 + 112), v60[1] = v22, v60[2] = *(a1 + 144), v61 = *(a1 + 160), v23 = *(a2 + 128), v58[0] = *(a2 + 112), v58[1] = v23, v58[2] = *(a2 + 144), v59 = *(a2 + 160), sub_22F256700(v60, v58), (v24) && (v25 = *(a1 + 184), v56[0] = *(a1 + 168), v56[1] = v25, v56[2] = *(a1 + 200), v57 = *(a1 + 216), v26 = *(a2 + 184), v54[0] = *(a2 + 168), v54[1] = v26, v54[2] = *(a2 + 200), v55 = *(a2 + 216), sub_22F256700(v56, v54), (v27) && (v28 = *(a1 + 240), v52[0] = *(a1 + 224), v52[1] = v28, v52[2] = *(a1 + 256), v53 = *(a1 + 272), v29 = *(a2 + 240), v50[0] = *(a2 + 224), v50[1] = v29, v50[2] = *(a2 + 256), v51 = *(a2 + 272), sub_22F256700(v52, v50), (v30) && (v49 = *(a1 + 328), v31 = *(a1 + 296), v48[0] = *(a1 + 280), v48[1] = v31, v48[2] = *(a1 + 312), v47 = *(a2 + 328), v32 = *(a2 + 296), v46[0] = *(a2 + 280), v46[1] = v32, v46[2] = *(a2 + 312), sub_22F256700(v48, v46), (v33))
  {
    v34 = *(a1 + 352);
    v44[0] = *(a1 + 336);
    v44[1] = v34;
    v44[2] = *(a1 + 368);
    v45 = *(a1 + 384);
    v35 = *(a2 + 352);
    v42[0] = *(a2 + 336);
    v42[1] = v35;
    v42[2] = *(a2 + 368);
    v43 = *(a2 + 384);
    sub_22F256700(v44, v42);
  }

  else
  {
    v36 = 0;
  }

  return v36 & 1;
}

unint64_t sub_22F256A2C()
{
  v1 = 0x756C61566E696167;
  v2 = 0x65536E49656D6974;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6C426F5465646166;
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

uint64_t sub_22F256AC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F25A704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F256AEC(uint64_t a1)
{
  v2 = sub_22F25963C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F256B28(uint64_t a1)
{
  v2 = sub_22F25963C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.ExitPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B08, &qword_22F77F648);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F25963C();

  sub_22F742210();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
  sub_22F741FE0();

  if (!v2)
  {
    v9 = v11;
    LOBYTE(v13) = 1;
    sub_22F741FB0();
    LOBYTE(v13) = 2;
    sub_22F741FB0();
    v13 = v9;
    v12 = 3;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FlexMLAnalysis.ExitPoint.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  sub_22F25925C(a1, *v1);
  sub_22F7421B0();
  sub_22F7421B0();

  return sub_22F25925C(a1, v3);
}

uint64_t FlexMLAnalysis.ExitPoint.hashValue.getter()
{
  v1 = v0[2];
  v3[9] = *v0;
  v3[10] = v0[1];
  v3[11] = v1;
  sub_22F742170();
  FlexMLAnalysis.ExitPoint.hash(into:)(v3);
  return sub_22F7421D0();
}

void FlexMLAnalysis.ExitPoint.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B10, &qword_22F77F650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F25963C();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    v15 = 0;
    sub_22F259690(&qword_2810A92B0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_22F741F10();
    v14 = v16;
    LOBYTE(v16) = 1;
    sub_22F741EE0();
    v10 = v9;
    LOBYTE(v16) = 2;
    sub_22F741EE0();
    v12 = v11;
    v15 = 3;
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    v13 = v16;
    *a2 = v14;
    *(a2 + 8) = v10;
    *(a2 + 12) = v12;
    *(a2 + 16) = v13;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_22F257150()
{
  v1 = v0[2];
  v3[9] = *v0;
  v3[10] = v0[1];
  v3[11] = v1;
  sub_22F742170();
  FlexMLAnalysis.ExitPoint.hash(into:)(v3);
  return sub_22F7421D0();
}

uint64_t sub_22F2571B0(uint64_t a1)
{
  v2 = v1[2];
  v4[9] = *v1;
  v4[10] = v1[1];
  v4[11] = v2;
  sub_22F742170();
  FlexMLAnalysis.ExitPoint.hash(into:)(v4);
  return sub_22F7421D0();
}

uint64_t static FlexMLAnalysis.EntryPoint.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = a1[2];
  result = *(a1 + 2);
  v7 = a2[2];
  v8 = *(a2 + 2);
  if (v4)
  {
    v9 = v2 == v3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    if (v5 == v7)
    {
      return sub_22F17AA10(result, v8);
    }

    return 0;
  }

  v10 = (v2 + 32);
  v11 = (v3 + 32);
  while (v4)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2572CC(uint64_t a1)
{
  v2 = sub_22F2596FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F257308(uint64_t a1)
{
  v2 = sub_22F2596FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.EntryPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B18, &qword_22F77F658);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2596FC();

  sub_22F742210();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
  sub_22F741FE0();

  if (!v2)
  {
    v9 = v12;
    LOBYTE(v14) = 1;
    sub_22F741FB0();
    v14 = v9;
    v13 = 2;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FlexMLAnalysis.EntryPoint.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  sub_22F25925C(a1, *v1);
  sub_22F7421B0();

  return sub_22F25925C(a1, v3);
}

uint64_t FlexMLAnalysis.EntryPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_22F742170();
  sub_22F25925C(v4, v1);
  sub_22F7421B0();
  sub_22F25925C(v4, v2);
  return sub_22F7421D0();
}

void FlexMLAnalysis.EntryPoint.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B20, &qword_22F77F660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2596FC();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    v14 = 0;
    sub_22F259690(&qword_2810A92B0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_22F741F10();
    v13 = v15;
    LOBYTE(v15) = 1;
    sub_22F741EE0();
    v10 = v9;
    v14 = 2;
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v13;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_22F2578F8(uint64_t a1)
{
  v3 = v1[2];
  sub_22F25925C(a1, *v1);
  sub_22F7421B0();

  return sub_22F25925C(a1, v3);
}

uint64_t sub_22F257968(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_22F742170();
  sub_22F25925C(v5, v2);
  sub_22F7421B0();
  sub_22F25925C(v5, v3);
  return sub_22F7421D0();
}

uint64_t static FlexMLAnalysis.VideoEvents.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_22F17AA10(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return sub_22F17AA10(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F257A90(uint64_t a1)
{
  v2 = sub_22F259750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F257ACC(uint64_t a1)
{
  v2 = sub_22F259750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.VideoEvents.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B28, &qword_22F77F668);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259750();

  sub_22F742210();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
  sub_22F741FE0();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FlexMLAnalysis.VideoEvents.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_22F25925C(a1, v3);

  return sub_22F25925C(a1, v4);
}

uint64_t FlexMLAnalysis.VideoEvents.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  sub_22F25925C(v4, v1);
  sub_22F25925C(v4, v2);
  return sub_22F7421D0();
}

void FlexMLAnalysis.VideoEvents.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B30, &qword_22F77F670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259750();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    v13 = 0;
    sub_22F259690(&qword_2810A92B0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_22F741F10();
    v9 = v14;
    v13 = 1;
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v12;
    *v12 = v9;
    v11[1] = v10;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_22F257FC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  sub_22F25925C(v4, v1);
  sub_22F25925C(v4, v2);
  return sub_22F7421D0();
}

uint64_t sub_22F258018(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_22F25925C(a1, v3);

  return sub_22F25925C(a1, v4);
}

uint64_t sub_22F258058(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22F742170();
  sub_22F25925C(v5, v2);
  sub_22F25925C(v5, v3);
  return sub_22F7421D0();
}

uint64_t sub_22F258104(uint64_t a1)
{
  v2 = sub_22F2597A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F258140(uint64_t a1)
{
  v2 = sub_22F2597A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.VisualTempo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B38, &qword_22F77F678);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v12 = *(v1 + 2);
  v11 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2597A4();

  sub_22F742210();
  v16 = v8;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
  sub_22F741FE0();

  if (!v2)
  {
    v14 = 1;
    v13 = v11;
    sub_22F741F50();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FlexMLAnalysis.VisualTempo.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  sub_22F25925C(a1, v2);
  if (v3 == 1)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  return sub_22F7421B0();
}

uint64_t FlexMLAnalysis.VisualTempo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  sub_22F742170();
  sub_22F25925C(v4, v1);
  sub_22F742190();
  if (v2 != 1)
  {
    sub_22F7421B0();
  }

  return sub_22F7421D0();
}

void FlexMLAnalysis.VisualTempo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B40, &qword_22F77F680);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2597A4();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    v11[15] = 0;
    sub_22F259690(&qword_2810A92B0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_22F741F10();
    v9 = v12;
    v11[14] = 1;
    v10 = sub_22F741E80();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 12) = BYTE4(v10) & 1;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_22F258690()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 12);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_22F742170();
  FlexMLAnalysis.VisualTempo.hash(into:)(v4);
  return sub_22F7421D0();
}

uint64_t sub_22F2586F0(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 12);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_22F742170();
  FlexMLAnalysis.VisualTempo.hash(into:)(v5);
  return sub_22F7421D0();
}

uint64_t FlexMLAnalysis.videoEvents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_22F13BB74(v2, v3);
}

double FlexMLAnalysis.visualTempo.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 44);
  *a1 = *(v1 + 32);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;

  return result;
}

uint64_t sub_22F2587B4()
{
  v1 = 0x6E696F5074697865;
  v2 = 0x6576456F65646976;
  if (*v0 != 2)
  {
    v2 = 0x65546C6175736976;
  }

  if (*v0)
  {
    v1 = 0x696F507972746E65;
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

uint64_t sub_22F25884C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F25A884(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F258874(uint64_t a1)
{
  v2 = sub_22F259AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2588B0(uint64_t a1)
{
  v2 = sub_22F259AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B48, &qword_22F77F688);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v8;
  v11 = *(v1 + 32);
  v16 = *(v1 + 44);
  v17 = v11;
  v18 = *(v1 + 40);
  v19 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259AB4();

  sub_22F742210();
  v22 = v9;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B50, &qword_22F77F690);
  sub_22F259CD0(&qword_2810A9368, sub_22F259B08, MEMORY[0x277D83948]);
  sub_22F741F70();
  if (!v2)
  {
    v13 = v19;
    v12 = v20;
    v14 = v18;

    v22 = v21;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B58, &qword_22F77F698);
    sub_22F259B5C(&qword_2810A9378, sub_22F259BD4, MEMORY[0x277D83948]);
    sub_22F741F70();
    v22 = v12;
    v23 = v13;
    v24 = 2;
    sub_22F13BB74(v12, v13);
    sub_22F259C28();
    sub_22F741F70();
    sub_22F18B0F4(v22, v23);
    v22 = v17;
    BYTE4(v23) = (v14 | (v16 << 32)) >> 32;
    LODWORD(v23) = v14;
    v24 = 3;
    sub_22F259C7C();

    sub_22F741F70();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FlexMLAnalysis.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 44);
  v10 = *(v2 + 40);
  if (*v2)
  {
    sub_22F742190();
    sub_22F2593BC(a1, v5);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_22F742190();
    if (v4)
    {
LABEL_3:
      sub_22F742190();
      sub_22F2592C4(a1, v4);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_22F742190();
      if (!v8)
      {
        return sub_22F742190();
      }

      goto LABEL_9;
    }
  }

  sub_22F742190();
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_22F742190();
  sub_22F25925C(a1, v7);
  sub_22F25925C(a1, v6);
  if (!v8)
  {
    return sub_22F742190();
  }

LABEL_9:
  sub_22F742190();
  sub_22F25925C(a1, v8);
  if (((v10 | (v9 << 32)) & 0x100000000) == 0)
  {
    sub_22F742190();
    return sub_22F7421B0();
  }

  return sub_22F742190();
}

uint64_t FlexMLAnalysis.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 10);
  v3 = *(v0 + 44);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v11 = v3;
  v10 = v2;
  sub_22F742170();
  FlexMLAnalysis.hash(into:)(v6);
  return sub_22F7421D0();
}

void FlexMLAnalysis.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B60, &qword_22F77F6A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259AB4();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B50, &qword_22F77F690);
    v22 = 0;
    sub_22F259CD0(&qword_2810A9360, sub_22F259D48, MEMORY[0x277D83978]);
    sub_22F741EA0();
    v9 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B58, &qword_22F77F698);
    v22 = 1;
    sub_22F259B5C(&qword_2810A9370, sub_22F259D9C, MEMORY[0x277D83978]);
    sub_22F741EA0();
    v19 = v20;
    v22 = 2;
    sub_22F259DF0();
    sub_22F741EA0();
    v17 = v20;
    v18 = v21;
    v22 = 3;
    sub_22F259E44();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    v11 = v19;
    v10 = v20;
    v12 = v21;
    v13 = BYTE4(v21);
    *a2 = v9;
    *(a2 + 8) = v11;
    v15 = v17;
    v14 = v18;
    *(a2 + 16) = v17;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 44) = v13;
    *(a2 + 40) = v12;

    sub_22F13BB74(v15, v14);

    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_22F18B0F4(v15, v14);
  }
}

uint64_t sub_22F259160()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 10);
  v3 = *(v0 + 44);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v11 = v3;
  v10 = v2;
  sub_22F742170();
  FlexMLAnalysis.hash(into:)(v6);
  return sub_22F7421D0();
}

uint64_t sub_22F2591C8(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 10);
  v4 = *(v1 + 44);
  v5 = v1[1];
  v8 = *v1;
  v9 = v5;
  v10 = v2;
  v12 = v4;
  v11 = v3;
  sub_22F742170();
  FlexMLAnalysis.hash(into:)(v7);
  return sub_22F7421D0();
}

uint64_t sub_22F25925C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x231901D30](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_22F7421B0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22F2592C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x231901D30](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = *v7;
      v9 = v7[2];
      MEMORY[0x231901D30](*(*v7 + 16));
      v10 = *(v8 + 16);
      if (v10)
      {
        v11 = v8 + 32;
        do
        {
          v11 += 4;
          sub_22F7421B0();
          --v10;
        }

        while (v10);
      }

      sub_22F7421B0();
      result = MEMORY[0x231901D30](*(v9 + 16));
      v12 = *(v9 + 16);
      if (v12)
      {
        v13 = v9 + 32;
        do
        {
          v13 += 4;
          result = sub_22F7421B0();
          --v12;
        }

        while (v12);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_22F2593BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x231901D30](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = *v7;
      v9 = v7[2];
      MEMORY[0x231901D30](*(*v7 + 16));
      v10 = *(v8 + 16);
      if (v10)
      {
        v11 = v8 + 32;
        do
        {
          v11 += 4;
          sub_22F7421B0();
          --v10;
        }

        while (v10);
      }

      sub_22F7421B0();
      sub_22F7421B0();
      result = MEMORY[0x231901D30](*(v9 + 16));
      v12 = *(v9 + 16);
      if (v12)
      {
        v13 = v9 + 32;
        do
        {
          v13 += 4;
          result = sub_22F7421B0();
          --v12;
        }

        while (v12);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_22F2594CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_22F741A00();
    MEMORY[0x231901D30](v8);
    v3 = sub_22F741A00();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x231901D30](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x2319016F0](i, a2);
      sub_22F741820();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_22F741820();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s11PhotosGraph14FlexMLAnalysisV9ExitPointV2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  result = *(a1 + 2);
  v9 = a2[2];
  v8 = a2[3];
  if (v4)
  {
    v10 = v2 == v3;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a2 + 2);
  if (v10)
  {
LABEL_10:
    if (v6 == v9 && v5 == v8)
    {
      return sub_22F17AA10(result, v11);
    }

    return 0;
  }

  v12 = (v2 + 32);
  v13 = (v3 + 32);
  while (v4)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F25963C()
{
  result = qword_2810ABBB8;
  if (!qword_2810ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBB8);
  }

  return result;
}

uint64_t sub_22F259690(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F2596FC()
{
  result = qword_2810ABC30;
  if (!qword_2810ABC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC30);
  }

  return result;
}

unint64_t sub_22F259750()
{
  result = qword_2810ABC08;
  if (!qword_2810ABC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC08);
  }

  return result;
}

unint64_t sub_22F2597A4()
{
  result = qword_2810ABBE0;
  if (!qword_2810ABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBE0);
  }

  return result;
}

BOOL _s11PhotosGraph14FlexMLAnalysisV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 44);
  v10 = *(a1 + 40);
  v11 = *a2;
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 44);
  if (v4)
  {
    if (!v11 || (sub_22F17B1E8(v4, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v13)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v13 || (sub_22F17B314() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (!v5)
  {
    sub_22F13BB74(0, v7);
    if (!v12)
    {
      sub_22F13BB74(0, v15);
      sub_22F18B0F4(0, v7);
      goto LABEL_22;
    }

    sub_22F13BB74(v12, v15);
    goto LABEL_19;
  }

  if (!v12)
  {
    sub_22F13BB74(v5, v7);
    sub_22F13BB74(0, v15);
    sub_22F13BB74(v5, v7);

LABEL_19:
    sub_22F18B0F4(v5, v7);
    sub_22F18B0F4(v12, v15);
    return 0;
  }

  if ((sub_22F17AA10(v5, v12) & 1) == 0)
  {
    sub_22F13BB74(v5, v7);
    sub_22F13BB74(v12, v15);
    sub_22F13BB74(v5, v7);
    sub_22F18B0F4(v12, v15);

    sub_22F18B0F4(v5, v7);
    return 0;
  }

  v16 = sub_22F17AA10(v7, v15);
  sub_22F13BB74(v5, v7);
  sub_22F13BB74(v12, v15);
  sub_22F13BB74(v5, v7);
  sub_22F18B0F4(v12, v15);

  sub_22F18B0F4(v5, v7);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (v8)
  {
    v24 = v8;
    v25 = v10;
    v26 = (v10 | (v9 << 32)) >> 32;
    if (v14)
    {
      v21 = v14;
      v22 = v19;
      v23 = ((v19 | (v20 << 32)) >> 32) & 1;
      v17 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v24, &v21);
      swift_bridgeObjectRetain_n();

      return (v17 & 1) != 0;
    }

    goto LABEL_27;
  }

  if (v14)
  {
LABEL_27:

    return 0;
  }

  return 1;
}

unint64_t sub_22F259AB4()
{
  result = qword_2810ABC48[0];
  if (!qword_2810ABC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ABC48);
  }

  return result;
}

unint64_t sub_22F259B08()
{
  result = qword_2810ABBA0;
  if (!qword_2810ABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBA0);
  }

  return result;
}

uint64_t sub_22F259B5C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2B58, &qword_22F77F698);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F259BD4()
{
  result = qword_2810ABC18;
  if (!qword_2810ABC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC18);
  }

  return result;
}

unint64_t sub_22F259C28()
{
  result = qword_2810ABBF0;
  if (!qword_2810ABBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBF0);
  }

  return result;
}

unint64_t sub_22F259C7C()
{
  result = qword_2810ABBC8;
  if (!qword_2810ABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBC8);
  }

  return result;
}

uint64_t sub_22F259CD0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2B50, &qword_22F77F690);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F259D48()
{
  result = qword_2810ABB98;
  if (!qword_2810ABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABB98);
  }

  return result;
}

unint64_t sub_22F259D9C()
{
  result = qword_2810ABC10;
  if (!qword_2810ABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC10);
  }

  return result;
}

unint64_t sub_22F259DF0()
{
  result = qword_2810ABBE8;
  if (!qword_2810ABBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBE8);
  }

  return result;
}

unint64_t sub_22F259E44()
{
  result = qword_2810ABBC0;
  if (!qword_2810ABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBC0);
  }

  return result;
}

unint64_t sub_22F259E9C()
{
  result = qword_27DAB2B68;
  if (!qword_27DAB2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B68);
  }

  return result;
}

unint64_t sub_22F259EF4()
{
  result = qword_27DAB2B70;
  if (!qword_27DAB2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B70);
  }

  return result;
}

unint64_t sub_22F259F4C()
{
  result = qword_27DAB2B78;
  if (!qword_27DAB2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B78);
  }

  return result;
}

unint64_t sub_22F259FA4()
{
  result = qword_27DAB2B80;
  if (!qword_27DAB2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B80);
  }

  return result;
}

unint64_t sub_22F259FFC()
{
  result = qword_27DAB2B88;
  if (!qword_27DAB2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14FlexMLAnalysisV11VideoEventsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F25A07C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 45))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22F25A0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_22F25A1E0()
{
  result = qword_27DAB2B90;
  if (!qword_27DAB2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B90);
  }

  return result;
}

unint64_t sub_22F25A238()
{
  result = qword_27DAB2B98;
  if (!qword_27DAB2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B98);
  }

  return result;
}

unint64_t sub_22F25A290()
{
  result = qword_27DAB2BA0;
  if (!qword_27DAB2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BA0);
  }

  return result;
}

unint64_t sub_22F25A2E8()
{
  result = qword_27DAB2BA8;
  if (!qword_27DAB2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BA8);
  }

  return result;
}

unint64_t sub_22F25A340()
{
  result = qword_27DAB2BB0;
  if (!qword_27DAB2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BB0);
  }

  return result;
}

unint64_t sub_22F25A398()
{
  result = qword_2810ABC38;
  if (!qword_2810ABC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC38);
  }

  return result;
}

unint64_t sub_22F25A3F0()
{
  result = qword_2810ABC40;
  if (!qword_2810ABC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC40);
  }

  return result;
}

unint64_t sub_22F25A448()
{
  result = qword_2810ABBD0;
  if (!qword_2810ABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBD0);
  }

  return result;
}

unint64_t sub_22F25A4A0()
{
  result = qword_2810ABBD8;
  if (!qword_2810ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBD8);
  }

  return result;
}

unint64_t sub_22F25A4F8()
{
  result = qword_2810ABBF8;
  if (!qword_2810ABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBF8);
  }

  return result;
}

unint64_t sub_22F25A550()
{
  result = qword_2810ABC00;
  if (!qword_2810ABC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC00);
  }

  return result;
}

unint64_t sub_22F25A5A8()
{
  result = qword_2810ABC20;
  if (!qword_2810ABC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC20);
  }

  return result;
}

unint64_t sub_22F25A600()
{
  result = qword_2810ABC28;
  if (!qword_2810ABC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC28);
  }

  return result;
}

unint64_t sub_22F25A658()
{
  result = qword_2810ABBA8;
  if (!qword_2810ABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBA8);
  }

  return result;
}

unint64_t sub_22F25A6B0()
{
  result = qword_2810ABBB0;
  if (!qword_2810ABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBB0);
  }

  return result;
}

uint64_t sub_22F25A704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7900B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F25A884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F25AA34(void *a1, void *a2)
{
  v2 = a2[6];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_22F122A14(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a2[13];
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = *(*(v2 + 56) + 4 * v5);
  v9 = sub_22F122A14(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a2[20];
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(*(v7 + 56) + 4 * v9);
  v13 = sub_22F122A14(a1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = a2[27];
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = *(*(v11 + 56) + 4 * v13);
  v17 = sub_22F122A14(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a2[34];
  if (!*(v19 + 16))
  {
    return 0;
  }

  v20 = *(*(v15 + 56) + 4 * v17);
  v21 = sub_22F122A14(a1);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a2[41];
  if (!*(v23 + 16))
  {
    return 0;
  }

  v24 = *(*(v19 + 56) + 4 * v21);
  v25 = sub_22F122A14(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = a2[48];
  if (!*(v27 + 16))
  {
    return 0;
  }

  v28 = *(*(v23 + 56) + 4 * v25);
  v29 = sub_22F122A14(a1);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v27 + 56) + 4 * v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v8;
  *(result + 36) = v12;
  *(result + 40) = v16;
  *(result + 44) = v20;
  *(result + 48) = v24;
  *(result + 52) = v28;
  *(result + 56) = v31;
  return result;
}

uint64_t sub_22F25ABB0(void *a1, void *a2)
{
  v2 = a2[3];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_22F122A14(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a2[10];
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = *(*(v2 + 56) + 4 * v5);
  v9 = sub_22F122A14(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a2[17];
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(*(v7 + 56) + 4 * v9);
  v13 = sub_22F122A14(a1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = a2[24];
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = *(*(v11 + 56) + 4 * v13);
  v17 = sub_22F122A14(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a2[31];
  if (!*(v19 + 16))
  {
    return 0;
  }

  v20 = *(*(v15 + 56) + 4 * v17);
  v21 = sub_22F122A14(a1);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a2[38];
  if (!*(v23 + 16))
  {
    return 0;
  }

  v24 = *(*(v19 + 56) + 4 * v21);
  v25 = sub_22F122A14(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = a2[45];
  if (!*(v27 + 16))
  {
    return 0;
  }

  v28 = *(*(v23 + 56) + 4 * v25);
  v29 = sub_22F122A14(a1);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v27 + 56) + 4 * v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v8;
  *(result + 36) = v12;
  *(result + 40) = v16;
  *(result + 44) = v20;
  *(result + 48) = v24;
  *(result + 52) = v28;
  *(result + 56) = v31;
  return result;
}

uint64_t sub_22F25AD2C(void *a1, void *a2)
{
  v2 = *a2;
  if (!*(*a2 + 16))
  {
    return 0;
  }

  v5 = sub_22F122A14(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a2[7];
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = *(*(v2 + 56) + 4 * v5);
  v9 = sub_22F122A14(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a2[14];
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(*(v7 + 56) + 4 * v9);
  v13 = sub_22F122A14(a1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = a2[21];
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = *(*(v11 + 56) + 4 * v13);
  v17 = sub_22F122A14(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a2[28];
  if (!*(v19 + 16))
  {
    return 0;
  }

  v20 = *(*(v15 + 56) + 4 * v17);
  v21 = sub_22F122A14(a1);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a2[35];
  if (!*(v23 + 16))
  {
    return 0;
  }

  v24 = *(*(v19 + 56) + 4 * v21);
  v25 = sub_22F122A14(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = a2[42];
  if (!*(v27 + 16))
  {
    return 0;
  }

  v28 = *(*(v23 + 56) + 4 * v25);
  v29 = sub_22F122A14(a1);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v27 + 56) + 4 * v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v8;
  *(result + 36) = v12;
  *(result + 40) = v16;
  *(result + 44) = v20;
  *(result + 48) = v24;
  *(result + 52) = v28;
  *(result + 56) = v31;
  return result;
}

uint64_t sub_22F25AEA8(void *a1, void *a2)
{
  v2 = a2[1];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_22F122A14(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a2[8];
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = *(*(v2 + 56) + 4 * v5);
  v9 = sub_22F122A14(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a2[15];
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(*(v7 + 56) + 4 * v9);
  v13 = sub_22F122A14(a1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = a2[22];
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = *(*(v11 + 56) + 4 * v13);
  v17 = sub_22F122A14(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a2[29];
  if (!*(v19 + 16))
  {
    return 0;
  }

  v20 = *(*(v15 + 56) + 4 * v17);
  v21 = sub_22F122A14(a1);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a2[36];
  if (!*(v23 + 16))
  {
    return 0;
  }

  v24 = *(*(v19 + 56) + 4 * v21);
  v25 = sub_22F122A14(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = a2[43];
  if (!*(v27 + 16))
  {
    return 0;
  }

  v28 = *(*(v23 + 56) + 4 * v25);
  v29 = sub_22F122A14(a1);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v27 + 56) + 4 * v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v8;
  *(result + 36) = v12;
  *(result + 40) = v16;
  *(result + 44) = v20;
  *(result + 48) = v24;
  *(result + 52) = v28;
  *(result + 56) = v31;
  return result;
}

uint64_t sub_22F25B024(void *a1, void *a2)
{
  v2 = a2[2];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_22F122A14(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a2[9];
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = *(*(v2 + 56) + 4 * v5);
  v9 = sub_22F122A14(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a2[16];
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(*(v7 + 56) + 4 * v9);
  v13 = sub_22F122A14(a1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = a2[23];
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = *(*(v11 + 56) + 4 * v13);
  v17 = sub_22F122A14(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a2[30];
  if (!*(v19 + 16))
  {
    return 0;
  }

  v20 = *(*(v15 + 56) + 4 * v17);
  v21 = sub_22F122A14(a1);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a2[37];
  if (!*(v23 + 16))
  {
    return 0;
  }

  v24 = *(*(v19 + 56) + 4 * v21);
  v25 = sub_22F122A14(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = a2[44];
  if (!*(v27 + 16))
  {
    return 0;
  }

  v28 = *(*(v23 + 56) + 4 * v25);
  v29 = sub_22F122A14(a1);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v27 + 56) + 4 * v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v8;
  *(result + 36) = v12;
  *(result + 40) = v16;
  *(result + 44) = v20;
  *(result + 48) = v24;
  *(result + 52) = v28;
  *(result + 56) = v31;
  return result;
}

uint64_t sub_22F25B1A0(void *a1, void *a2)
{
  v2 = a2[5];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_22F122A14(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a2[12];
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = *(*(v2 + 56) + 4 * v5);
  v9 = sub_22F122A14(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a2[19];
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(*(v7 + 56) + 4 * v9);
  v13 = sub_22F122A14(a1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = a2[26];
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = *(*(v11 + 56) + 4 * v13);
  v17 = sub_22F122A14(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a2[33];
  if (!*(v19 + 16))
  {
    return 0;
  }

  v20 = *(*(v15 + 56) + 4 * v17);
  v21 = sub_22F122A14(a1);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a2[40];
  if (!*(v23 + 16))
  {
    return 0;
  }

  v24 = *(*(v19 + 56) + 4 * v21);
  v25 = sub_22F122A14(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = a2[47];
  if (!*(v27 + 16))
  {
    return 0;
  }

  v28 = *(*(v23 + 56) + 4 * v25);
  v29 = sub_22F122A14(a1);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v27 + 56) + 4 * v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v8;
  *(result + 36) = v12;
  *(result + 40) = v16;
  *(result + 44) = v20;
  *(result + 48) = v24;
  *(result + 52) = v28;
  *(result + 56) = v31;
  return result;
}

uint64_t sub_22F25B31C(void *a1, void *a2)
{
  v2 = a2[4];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_22F122A14(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a2[11];
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = *(*(v2 + 56) + 4 * v5);
  v9 = sub_22F122A14(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a2[18];
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(*(v7 + 56) + 4 * v9);
  v13 = sub_22F122A14(a1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = a2[25];
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = *(*(v11 + 56) + 4 * v13);
  v17 = sub_22F122A14(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a2[32];
  if (!*(v19 + 16))
  {
    return 0;
  }

  v20 = *(*(v15 + 56) + 4 * v17);
  v21 = sub_22F122A14(a1);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a2[39];
  if (!*(v23 + 16))
  {
    return 0;
  }

  v24 = *(*(v19 + 56) + 4 * v21);
  v25 = sub_22F122A14(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = a2[46];
  if (!*(v27 + 16))
  {
    return 0;
  }

  v28 = *(*(v23 + 56) + 4 * v25);
  v29 = sub_22F122A14(a1);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v27 + 56) + 4 * v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v8;
  *(result + 36) = v12;
  *(result + 40) = v16;
  *(result + 44) = v20;
  *(result + 48) = v24;
  *(result + 52) = v28;
  *(result + 56) = v31;
  return result;
}

void sub_22F25B498(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_22F25B9B0(v9, v6, v4, a2);
      MEMORY[0x2319033A0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_22F25B604(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_22F25B604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = a4;
  v37 = a2;
  v39 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v45);
  v6 = (&v36 - v5);
  v7 = type metadata accessor for Song(0);
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v40 = 0;
  v13 = 0;
  v48 = a3;
  v14 = *(a3 + 64);
  v38 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v42 = &v36 - v11;
  v43 = v6;
  v41 = v18;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v22 = v19 | (v13 << 6);
    v23 = v48;
    v24 = *(v48 + 48);
    v50 = *(v44 + 72);
    sub_22F15CAA0(v24 + v50 * v22, v12);
    v25 = *(*(v23 + 56) + 4 * v22);
    sub_22F15CAA0(v12, v6);
    *(v6 + *(v45 + 48)) = v25;
    v26 = *v46;
    if (!*(*v46 + 16))
    {
      goto LABEL_24;
    }

    v47 = v22;
    v49 = v17;
    sub_22F742170();
    v28 = *v6;
    v27 = v6[1];

    sub_22F740D60();
    v29 = sub_22F7421D0();
    v30 = -1 << *(v26 + 32);
    v31 = v29 & ~v30;
    if ((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v32 = ~v30;
      while (1)
      {
        sub_22F15CAA0(*(v26 + 48) + v31 * v50, v9);
        if (*v9 == v28 && v9[1] == v27)
        {
          break;
        }

        v34 = sub_22F742040();
        sub_22F15CBD8(v9);
        if (v34)
        {
          goto LABEL_6;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_22F15CBD8(v9);
LABEL_6:

      v6 = v43;
      sub_22F25DFB0(v43);
      v12 = v42;
      sub_22F15CBD8(v42);
      v18 = v41;
      v17 = v49;
    }

    else
    {
LABEL_23:

      v12 = v42;
      v6 = v43;
      v18 = v41;
      v17 = v49;
      v22 = v47;
LABEL_24:
      sub_22F25DFB0(v6);
      sub_22F15CBD8(v12);
      *(v39 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_27:
        sub_22F1B1778(v39, v37, v40, v48);
        return;
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_27;
    }

    v21 = *(v38 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_22F25B9B0(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F25B604(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_22F25BA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 124);
  v6 = *(a2 + 132);
  v7 = *(a2 + 140);
  v8 = *(a2 + 148);
  v9 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  v10 = *(a3 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_22F779720;
  if (v10 == 1)
  {
    v13 = a3 + OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly;
    *(v11 + 32) = *(a3 + OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly + 4);
    *(v11 + 48) = *(v13 + 20);
    *(v11 + 56) = *(v13 + 28);
  }

  else
  {
    *(v11 + 32) = v5;
    *(v11 + 40) = v6;
    *(v11 + 48) = v7;
    *(v11 + 56) = v8;
  }

  v14 = sub_22F256224();
  sub_22F25DE90(a1, &v17);
  v15 = sub_22F25BB90(v14, v12, a1, sub_22F25ABB0);
  sub_22F25DEEC(a1);

  return v15;
}

void *sub_22F25BB90(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v53 = a4;
  v54 = a3;
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = v43 - v8;
  v45 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v45);
  v51 = (v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v43 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = v43 - v15;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v46 = (v5 + 8);
  v21 = v14;

  v22 = 0;
  v52 = MEMORY[0x277D84F98];
  while (1)
  {
    v23 = v22;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(v21 + 72);
    sub_22F15CAA0(*(a1 + 48) + v25 * (v24 | (v22 << 6)), v16);
    sub_22F15CB04(v16, v12);
    v26 = v53(v12, v54);
    if (!v26)
    {
      goto LABEL_9;
    }

    v43[0] = v21;
    v44 = v26;
    sub_22F15CAA0(v12, v51);
    v55 = v47;

    v43[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    v43[1] = sub_22F25E018();
    sub_22F73FD30();
    v55 = v44;
    sub_22F73FD30();
    sub_22F73FD20();
    v28 = v27;
    v44 = *v46;
    (v44)(v50, v48);
    (v44)(v49, v48);
    v29 = v52;
    LODWORD(v44) = swift_isUniquelyReferenced_nonNull_native();
    v55 = v29;
    v31 = sub_22F122A14(v51);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_22;
    }

    if (v29[3] >= v34)
    {
      v21 = v43[0];
      if ((v44 & 1) == 0)
      {
        v44 = v31;
        LODWORD(v52) = v30;
        sub_22F134678();
        LOBYTE(v30) = v52;
        v31 = v44;
        v21 = v43[0];
      }
    }

    else
    {
      LODWORD(v52) = v30;
      sub_22F125F5C(v34, v44);
      v35 = sub_22F122A14(v51);
      v36 = v30 & 1;
      LOBYTE(v30) = v52;
      if ((v52 & 1) != v36)
      {
        goto LABEL_24;
      }

      v31 = v35;
      v21 = v43[0];
    }

    v52 = v55;
    if (v30)
    {
      *(v55[7] + 4 * v31) = v28;
      sub_22F15CBD8(v51);
LABEL_9:
      sub_22F15CBD8(v12);
    }

    else
    {
      v44 = v31;
      v55[(v31 >> 6) + 8] |= 1 << v31;
      v37 = v52[6] + v31 * v25;
      v38 = v51;
      sub_22F15CAA0(v51, v37);
      *(v52[7] + 4 * v44) = v28;
      sub_22F15CBD8(v38);
      sub_22F15CBD8(v12);
      v39 = v52[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_23;
      }

      v52[2] = v41;
    }
  }

  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return v52;
    }

    v19 = *(a1 + 56 + 8 * v22);
    ++v23;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_22F25DEEC(v54);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F25C054(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v324 = a3;
  v316 = a4;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v329);
  v328 = &v314 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v327 = &v314 - v9;
  MEMORY[0x28223BE20](v10);
  v326 = &v314 - v11;
  v12 = type metadata accessor for Song(0);
  v325 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v317 = &v314 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v318 = &v314 - v15;
  MEMORY[0x28223BE20](v16);
  v319 = &v314 - v17;
  MEMORY[0x28223BE20](v18);
  v320 = &v314 - v19;
  MEMORY[0x28223BE20](v20);
  v321 = &v314 - v21;
  MEMORY[0x28223BE20](v22);
  v322 = &v314 - v23;
  MEMORY[0x28223BE20](v24);
  v323 = &v314 - v25;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v26 = qword_2810B4E90;
  *&v27 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - Slicing", 24, 2u, v27, 0, v26, &v408);
  v28 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 48);
  v418 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 32);
  v419 = v28;
  v420[0] = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 64);
  *(v420 + 12) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 76);
  v29 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 16);
  v416 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration);
  v417 = v29;
  v30 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 92);
  v31 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 96);
  v32 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 100);
  v33 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 104);
  v34 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 108);
  v35 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 112);
  v36 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 116);
  v37 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 136);
  v412 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 120);
  v413 = v37;
  v414 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 152);
  *(&v38 + 1) = *(&v414 + 1);
  v415 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 168);
  v39 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 176);
  LODWORD(v421) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 172);
  LODWORD(v358) = v39;
  v40 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 184);
  LODWORD(v357) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 180);
  LODWORD(v356) = v40;
  v41 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 192);
  LODWORD(v355) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 188);
  LODWORD(v354) = v41;
  *&v38 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 196);
  v359 = v38;
  LODWORD(v37) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 204);
  v337 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 208);
  v338 = v37;
  LODWORD(v37) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 212);
  v335 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 216);
  v336 = v37;
  LODWORD(v37) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 220);
  v333 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 224);
  v334 = v37;
  *&v38 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 228);
  v353 = v38;
  v42 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 252);
  v351 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 236);
  v352 = v42;
  v43 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 268);
  LODWORD(v350) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 272);
  LODWORD(v349) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 276);
  LODWORD(v348) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 280);
  LODWORD(v347) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 284);
  LODWORD(v42) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 288);
  v345 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 292);
  LODWORD(v346) = v42;
  v44 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 344);
  v409 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 328);
  v410 = v44;
  v45 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 296);
  v331 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 300);
  v332 = v43;
  v411 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 360);
  LODWORD(v44) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 304);
  v339 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 308);
  v340 = v44;
  LODWORD(v44) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 312);
  v341 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 316);
  v342 = v44;
  LODWORD(v44) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 320);
  v343 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 324);
  v344 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  v46 = swift_allocObject();
  v330 = xmmword_22F779720;
  *(v46 + 16) = xmmword_22F779720;
  *(v46 + 32) = v30;
  *(v46 + 36) = v31;
  *(v46 + 40) = v32;
  *(v46 + 44) = v33;
  *(v46 + 48) = v34;
  *(v46 + 52) = v35;
  *(v46 + 56) = v36;
  v47 = sub_22F256224();
  sub_22F25DE90(a1, v361);
  v48 = sub_22F25BB90(v47, v46, a1, sub_22F25AA34);
  if (v4)
  {
    sub_22F25DEEC(a1);

    return;
  }

  v315 = v48;
  sub_22F25DEEC(a1);

  v361[2] = v418;
  v361[3] = v419;
  *v362 = v420[0];
  *&v362[12] = *(v420 + 12);
  v361[0] = v416;
  v361[1] = v417;
  v363 = v30;
  v364 = v31;
  v365 = v32;
  v366 = v33;
  v367 = v34;
  v368 = v35;
  v369 = v36;
  v370 = v412;
  v371 = v413;
  v372 = v414;
  v397 = v45;
  v405 = v409;
  v406 = v410;
  v373 = v415;
  v374 = v421;
  v375 = v358;
  v376 = v357;
  v377 = v356;
  v378 = v355;
  v379 = v354;
  v380 = v359;
  v49 = v337;
  v50 = v338;
  v381 = v338;
  v382 = v337;
  v51 = v335;
  v52 = v336;
  v383 = v336;
  v384 = v335;
  v53 = v333;
  v54 = v334;
  v385 = v334;
  v386 = v333;
  v387 = v353;
  v388 = v351;
  v389 = v352;
  v55 = v331;
  v56 = v332;
  v390 = v332;
  v391 = v350;
  v392 = v349;
  v393 = v348;
  v394 = v347;
  v395 = v346;
  v396 = v345;
  v398 = v331;
  v399 = v340;
  v400 = v339;
  v401 = v342;
  v402 = v341;
  v403 = v344;
  v404 = v343;
  v407 = v411;
  v57 = sub_22F25BA38(a1, v361, a2);
  v58 = swift_allocObject();
  *(v58 + 16) = v330;
  v59 = v358;
  *(v58 + 32) = v421;
  *(v58 + 36) = v59;
  v60 = v356;
  *(v58 + 40) = v357;
  *(v58 + 44) = v60;
  v61 = v354;
  *(v58 + 48) = v355;
  *(v58 + 52) = v61;
  *(v58 + 56) = v359;
  v62 = sub_22F256224();
  sub_22F25DE90(a1, v361);
  v63 = sub_22F25BB90(v62, v58, a1, sub_22F25AD2C);
  sub_22F25DEEC(a1);

  v64 = swift_allocObject();
  *(v64 + 16) = v330;
  *(v64 + 32) = v50;
  *(v64 + 36) = v49;
  *(v64 + 40) = v52;
  *(v64 + 44) = v51;
  *(v64 + 48) = v54;
  *(v64 + 52) = v53;
  *(v64 + 56) = v353;
  v65 = sub_22F256224();
  sub_22F25DE90(a1, v361);
  *&v359 = sub_22F25BB90(v65, v64, a1, sub_22F25AEA8);
  sub_22F25DEEC(a1);

  v66 = swift_allocObject();
  v68 = v351;
  v67 = v352;
  *(v66 + 16) = v330;
  *(v66 + 32) = v68;
  *(v66 + 48) = v67;
  *(v66 + 56) = DWORD2(v67);
  v69 = sub_22F256224();
  sub_22F25DE90(a1, v361);
  v358 = sub_22F25BB90(v69, v66, a1, sub_22F25B024);
  sub_22F25DEEC(a1);

  v70 = swift_allocObject();
  *(v70 + 16) = v330;
  v71 = v350;
  *(v70 + 32) = v56;
  *(v70 + 36) = v71;
  v72 = v348;
  *(v70 + 40) = v349;
  *(v70 + 44) = v72;
  v73 = v345;
  v74 = v346;
  *(v70 + 48) = v347;
  *(v70 + 52) = v74;
  *(v70 + 56) = v73;
  v75 = sub_22F256224();
  sub_22F25DE90(a1, v361);
  v76 = sub_22F25BB90(v75, v70, a1, sub_22F25B1A0);
  *&v353 = v63;
  v77 = v76;
  sub_22F25DEEC(a1);

  v78 = swift_allocObject();
  *(v78 + 16) = v330;
  v80 = v339;
  v79 = v340;
  *(v78 + 32) = v55;
  *(v78 + 36) = v79;
  v82 = v341;
  v81 = v342;
  *(v78 + 40) = v80;
  *(v78 + 44) = v81;
  v83 = v343;
  v84 = v344;
  *(v78 + 48) = v82;
  *(v78 + 52) = v84;
  *(v78 + 56) = v83;
  v85 = sub_22F256224();
  sub_22F25DE90(a1, v361);
  v86 = sub_22F25BB90(v85, v78, a1, sub_22F25B31C);
  v348 = v77;
  v87 = v86;
  sub_22F25DEEC(a1);

  sub_22F741690();
  v347 = v87;
  *&v361[0] = MEMORY[0x277D84FA0];
  sub_22F25B498(v315, v361);
  v89 = v88;
  v90 = 0;

  *&v351 = v89;
  v91 = *(v89 + 16);
  v92 = MEMORY[0x277D84F90];
  v93 = v353;
  if (v91)
  {
    v349 = 0;
    v360 = MEMORY[0x277D84F90];
    sub_22F146514(0, v91, 0);
    v421 = v360;
    v357 = v351 + 64;
    v94 = sub_22F741980();
    v95 = v351;
    v96 = 0;
    v350 = v351 + 72;
    v97 = v325;
    v314 = v57;
    *&v352 = v91;
    while ((v94 & 0x8000000000000000) == 0 && v94 < 1 << *(v95 + 32))
    {
      v354 = v96;
      v100 = v94 >> 6;
      if ((*(v357 + 8 * (v94 >> 6)) & (1 << v94)) == 0)
      {
        goto LABEL_149;
      }

      v355 = *(v95 + 36);
      v101 = *(v95 + 48);
      v102 = v95;
      v356 = *(v97 + 72);
      v103 = v326;
      sub_22F15CAA0(v101 + v356 * v94, v326);
      v104 = *(*(v102 + 56) + 4 * v94);
      v105 = v103;
      v106 = v327;
      sub_22F15CB04(v105, v327);
      *(v106 + *(v329 + 48)) = v104;
      v107 = v106;
      v108 = v328;
      sub_22F25DF40(v107, v328);
      v109 = v108;
      v110 = v323;
      sub_22F15CB04(v109, v323);
      v111 = v421;
      v360 = v421;
      v113 = *(v421 + 16);
      v112 = *(v421 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_22F146514((v112 > 1), v113 + 1, 1);
        v110 = v323;
        v111 = v360;
      }

      *(v111 + 16) = v113 + 1;
      v114 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v421 = v111;
      sub_22F15CB04(v110, v111 + v114 + v113 * v356);
      v98 = 1 << *(v102 + 32);
      if (v94 >= v98)
      {
        goto LABEL_150;
      }

      v115 = *(v357 + 8 * v100);
      if ((v115 & (1 << v94)) == 0)
      {
        goto LABEL_151;
      }

      v95 = v102;
      v93 = v353;
      v116 = v352;
      if (v355 != *(v102 + 36))
      {
        goto LABEL_152;
      }

      v117 = v115 & (-2 << (v94 & 0x3F));
      if (v117)
      {
        v98 = __clz(__rbit64(v117)) | v94 & 0x7FFFFFFFFFFFFFC0;
        v57 = v314;
        v99 = v354;
      }

      else
      {
        v118 = v100 << 6;
        v119 = v100 + 1;
        v120 = (v350 + 8 * v100);
        v57 = v314;
        while (v119 < (v98 + 63) >> 6)
        {
          v122 = *v120++;
          v121 = v122;
          v118 += 64;
          ++v119;
          if (v122)
          {
            sub_22F107D18(v94, v355, 0);
            v95 = v351;
            v98 = __clz(__rbit64(v121)) + v118;
            goto LABEL_23;
          }
        }

        sub_22F107D18(v94, v355, 0);
        v95 = v351;
LABEL_23:
        v97 = v325;
        v99 = v354;
      }

      v96 = v99 + 1;
      v94 = v98;
      if (v96 == v116)
      {
        v90 = v349;
        v92 = v421;
        goto LABEL_26;
      }
    }

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

  v97 = v325;
LABEL_26:
  sub_22F2F2E24(v92);

  sub_22F25B498(v57, v361);
  v124 = v123;

  v350 = v124;
  v125 = *(v124 + 16);
  v126 = MEMORY[0x277D84F90];
  if (v125)
  {
    v346 = v90;
    v360 = MEMORY[0x277D84F90];
    sub_22F146514(0, v125, 0);
    v421 = v360;
    v127 = v350 + 64;
    v128 = sub_22F741980();
    v129 = v350;
    v130 = 0;
    v349 = v350 + 72;
    *&v352 = v125;
    v354 = v127;
    while ((v128 & 0x8000000000000000) == 0 && v128 < 1 << *(v129 + 32))
    {
      v356 = v130;
      v133 = v128 >> 6;
      if ((*(v127 + 8 * (v128 >> 6)) & (1 << v128)) == 0)
      {
        goto LABEL_154;
      }

      v355 = *(v129 + 36);
      v134 = *(v129 + 48);
      v135 = v129;
      v357 = *(v97 + 72);
      v136 = v326;
      sub_22F15CAA0(v134 + v357 * v128, v326);
      v137 = *(*(v135 + 56) + 4 * v128);
      v138 = v136;
      v139 = v327;
      sub_22F15CB04(v138, v327);
      *(v139 + *(v329 + 48)) = v137;
      v140 = v139;
      v141 = v328;
      sub_22F25DF40(v140, v328);
      v142 = v141;
      v143 = v322;
      sub_22F15CB04(v142, v322);
      v144 = v421;
      v360 = v421;
      v146 = *(v421 + 16);
      v145 = *(v421 + 24);
      if (v146 >= v145 >> 1)
      {
        sub_22F146514((v145 > 1), v146 + 1, 1);
        v143 = v322;
        v144 = v360;
      }

      *(v144 + 16) = v146 + 1;
      v147 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v421 = v144;
      sub_22F15CB04(v143, v144 + v147 + v146 * v357);
      v131 = 1 << *(v135 + 32);
      if (v128 >= v131)
      {
        goto LABEL_155;
      }

      v127 = v354;
      v148 = *(v354 + 8 * v133);
      if ((v148 & (1 << v128)) == 0)
      {
        goto LABEL_156;
      }

      v129 = v135;
      if (v355 != *(v135 + 36))
      {
        goto LABEL_157;
      }

      v149 = v148 & (-2 << (v128 & 0x3F));
      if (v149)
      {
        v131 = __clz(__rbit64(v149)) | v128 & 0x7FFFFFFFFFFFFFC0;
        v132 = v352;
      }

      else
      {
        v150 = v133 << 6;
        v151 = v133 + 1;
        v152 = (v349 + 8 * v133);
        v132 = v352;
        while (v151 < (v131 + 63) >> 6)
        {
          v154 = *v152++;
          v153 = v154;
          v150 += 64;
          ++v151;
          if (v154)
          {
            sub_22F107D18(v128, v355, 0);
            v129 = v350;
            v131 = __clz(__rbit64(v153)) + v150;
            goto LABEL_44;
          }
        }

        sub_22F107D18(v128, v355, 0);
        v129 = v350;
LABEL_44:
        v97 = v325;
      }

      v130 = v356 + 1;
      v128 = v131;
      if (v356 + 1 == v132)
      {
        v93 = v353;
        v90 = v346;
        v126 = v421;
        goto LABEL_46;
      }
    }

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
    goto LABEL_158;
  }

LABEL_46:
  sub_22F2F2E24(v126);

  v155 = v90;
  sub_22F25B498(v93, v361);
  v157 = v156;
  v158 = v90;

  *&v353 = v157;
  v159 = *(v157 + 16);
  v160 = MEMORY[0x277D84F90];
  if (v159)
  {
    v349 = v155;
    v360 = MEMORY[0x277D84F90];
    sub_22F146514(0, v159, 0);
    v160 = v360;
    v161 = v353 + 64;
    v162 = sub_22F741980();
    v163 = v353;
    v164 = 0;
    *&v352 = v353 + 72;
    v354 = v159;
    v355 = v161;
    while ((v162 & 0x8000000000000000) == 0 && v162 < 1 << *(v163 + 32))
    {
      v357 = v164;
      v166 = v162 >> 6;
      if ((*(v161 + 8 * (v162 >> 6)) & (1 << v162)) == 0)
      {
        goto LABEL_159;
      }

      v356 = *(v163 + 36);
      v167 = *(v163 + 48);
      v421 = *(v97 + 72);
      v168 = v326;
      sub_22F15CAA0(v167 + v421 * v162, v326);
      v169 = *(*(v163 + 56) + 4 * v162);
      v170 = v168;
      v171 = v327;
      sub_22F15CB04(v170, v327);
      *(v171 + *(v329 + 48)) = v169;
      v172 = v171;
      v173 = v328;
      sub_22F25DF40(v172, v328);
      v174 = v173;
      v175 = v321;
      sub_22F15CB04(v174, v321);
      v176 = v160;
      v360 = v160;
      v178 = *(v160 + 16);
      v177 = *(v160 + 24);
      if (v178 >= v177 >> 1)
      {
        sub_22F146514((v177 > 1), v178 + 1, 1);
        v175 = v321;
        v176 = v360;
      }

      *(v176 + 16) = v178 + 1;
      v160 = v176;
      sub_22F15CB04(v175, v176 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v178 * v421);
      v165 = 1 << *(v163 + 32);
      if (v162 >= v165)
      {
        goto LABEL_160;
      }

      v161 = v355;
      v179 = *(v355 + 8 * v166);
      if ((v179 & (1 << v162)) == 0)
      {
        goto LABEL_161;
      }

      if (v356 != *(v163 + 36))
      {
        goto LABEL_162;
      }

      v180 = v179 & (-2 << (v162 & 0x3F));
      if (v180)
      {
        v165 = __clz(__rbit64(v180)) | v162 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v181 = v166 << 6;
        v182 = v166 + 1;
        v183 = (v352 + 8 * v166);
        while (v182 < (v165 + 63) >> 6)
        {
          v185 = *v183++;
          v184 = v185;
          v181 += 64;
          ++v182;
          if (v185)
          {
            sub_22F107D18(v162, v356, 0);
            v163 = v353;
            v165 = __clz(__rbit64(v184)) + v181;
            goto LABEL_64;
          }
        }

        sub_22F107D18(v162, v356, 0);
        v163 = v353;
LABEL_64:
        v97 = v325;
      }

      v164 = v357 + 1;
      v162 = v165;
      if (v357 + 1 == v354)
      {
        v158 = v349;
        goto LABEL_66;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

LABEL_66:
  sub_22F2F2E24(v160);

  sub_22F25B498(v359, v361);
  v187 = v186;
  v188 = v158;

  v354 = v187;
  v189 = *(v187 + 16);
  v190 = MEMORY[0x277D84F90];
  if (v189)
  {
    v349 = v158;
    v360 = MEMORY[0x277D84F90];
    sub_22F146514(0, v189, 0);
    v190 = v360;
    v191 = v354 + 64;
    v192 = sub_22F741980();
    v193 = v354;
    v194 = 0;
    *&v352 = v354 + 72;
    v355 = v189;
    v356 = v191;
    while ((v192 & 0x8000000000000000) == 0 && v192 < 1 << *(v193 + 32))
    {
      v421 = v194;
      v196 = v192 >> 6;
      if ((*(v191 + 8 * (v192 >> 6)) & (1 << v192)) == 0)
      {
        goto LABEL_164;
      }

      v357 = *(v193 + 36);
      v197 = *(v193 + 48);
      *&v359 = *(v97 + 72);
      v198 = v326;
      sub_22F15CAA0(v197 + v359 * v192, v326);
      v199 = *(*(v193 + 56) + 4 * v192);
      v200 = v198;
      v201 = v327;
      sub_22F15CB04(v200, v327);
      *(v201 + *(v329 + 48)) = v199;
      v202 = v201;
      v203 = v328;
      sub_22F25DF40(v202, v328);
      v204 = v203;
      v205 = v320;
      sub_22F15CB04(v204, v320);
      v206 = v190;
      v360 = v190;
      v208 = *(v190 + 16);
      v207 = *(v190 + 24);
      if (v208 >= v207 >> 1)
      {
        sub_22F146514((v207 > 1), v208 + 1, 1);
        v205 = v320;
        v206 = v360;
      }

      *(v206 + 16) = v208 + 1;
      v190 = v206;
      sub_22F15CB04(v205, v206 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v208 * v359);
      v195 = 1 << *(v193 + 32);
      if (v192 >= v195)
      {
        goto LABEL_165;
      }

      v191 = v356;
      v209 = *(v356 + 8 * v196);
      if ((v209 & (1 << v192)) == 0)
      {
        goto LABEL_166;
      }

      if (v357 != *(v193 + 36))
      {
        goto LABEL_167;
      }

      v210 = v209 & (-2 << (v192 & 0x3F));
      if (v210)
      {
        v195 = __clz(__rbit64(v210)) | v192 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v211 = v196 << 6;
        v212 = v196 + 1;
        v213 = (v352 + 8 * v196);
        while (v212 < (v195 + 63) >> 6)
        {
          v215 = *v213++;
          v214 = v215;
          v211 += 64;
          ++v212;
          if (v215)
          {
            sub_22F107D18(v192, v357, 0);
            v193 = v354;
            v195 = __clz(__rbit64(v214)) + v211;
            goto LABEL_84;
          }
        }

        sub_22F107D18(v192, v357, 0);
        v193 = v354;
LABEL_84:
        v97 = v325;
      }

      v194 = v421 + 1;
      v192 = v195;
      if (v421 + 1 == v355)
      {
        v188 = v349;
        goto LABEL_86;
      }
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

LABEL_86:
  sub_22F2F2E24(v190);

  sub_22F25B498(v358, v361);
  v217 = v216;

  v218 = *(v217 + 16);
  v219 = MEMORY[0x277D84F90];
  if (v218)
  {
    *&v352 = v188;
    v360 = MEMORY[0x277D84F90];
    sub_22F146514(0, v218, 0);
    v219 = v360;
    *&v359 = v217 + 64;
    v220 = sub_22F741980();
    v221 = 0;
    v355 = v217 + 72;
    v356 = v218;
    while ((v220 & 0x8000000000000000) == 0 && v220 < 1 << *(v217 + 32))
    {
      v358 = v221;
      v225 = v220 >> 6;
      if ((*(v359 + 8 * (v220 >> 6)) & (1 << v220)) == 0)
      {
        goto LABEL_169;
      }

      v357 = *(v217 + 36);
      v226 = *(v217 + 48);
      v421 = *(v97 + 72);
      v227 = v326;
      sub_22F15CAA0(v226 + v421 * v220, v326);
      v228 = *(*(v217 + 56) + 4 * v220);
      v229 = v227;
      v230 = v327;
      sub_22F15CB04(v229, v327);
      *(v230 + *(v329 + 48)) = v228;
      v231 = v230;
      v232 = v328;
      sub_22F25DF40(v231, v328);
      v233 = v232;
      v234 = v319;
      sub_22F15CB04(v233, v319);
      v235 = v219;
      v360 = v219;
      v237 = *(v219 + 16);
      v236 = *(v219 + 24);
      if (v237 >= v236 >> 1)
      {
        sub_22F146514((v236 > 1), v237 + 1, 1);
        v234 = v319;
        v235 = v360;
      }

      *(v235 + 16) = v237 + 1;
      v219 = v235;
      sub_22F15CB04(v234, v235 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v237 * v421);
      v222 = 1 << *(v217 + 32);
      if (v220 >= v222)
      {
        goto LABEL_170;
      }

      v238 = *(v359 + 8 * v225);
      if ((v238 & (1 << v220)) == 0)
      {
        goto LABEL_171;
      }

      if (v357 != *(v217 + 36))
      {
        goto LABEL_172;
      }

      v239 = v238 & (-2 << (v220 & 0x3F));
      if (v239)
      {
        v222 = __clz(__rbit64(v239)) | v220 & 0x7FFFFFFFFFFFFFC0;
        v223 = v356;
        v224 = v358;
      }

      else
      {
        v240 = v217;
        v241 = v225 << 6;
        v242 = v225 + 1;
        v243 = (v355 + 8 * v225);
        v223 = v356;
        while (v242 < (v222 + 63) >> 6)
        {
          v245 = *v243++;
          v244 = v245;
          v241 += 64;
          ++v242;
          if (v245)
          {
            sub_22F107D18(v220, v357, 0);
            v222 = __clz(__rbit64(v244)) + v241;
            goto LABEL_104;
          }
        }

        sub_22F107D18(v220, v357, 0);
LABEL_104:
        v97 = v325;
        v217 = v240;
        v224 = v358;
      }

      v221 = v224 + 1;
      v220 = v222;
      if (v221 == v223)
      {
        v188 = v352;
        goto LABEL_106;
      }
    }

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
    goto LABEL_173;
  }

LABEL_106:
  v349 = v217;
  sub_22F2F2E24(v219);

  v246 = v188;
  sub_22F25B498(v348, v361);
  v248 = v247;
  v249 = v188;

  v250 = *(v248 + 16);
  v251 = MEMORY[0x277D84F90];
  if (v250)
  {
    v348 = v246;
    v360 = MEMORY[0x277D84F90];
    sub_22F146514(0, v250, 0);
    *&v359 = v360;
    v252 = v248 + 64;
    v253 = sub_22F741980();
    v254 = 0;
    *&v352 = v248 + 72;
    v355 = v250;
    v356 = v248 + 64;
    while ((v253 & 0x8000000000000000) == 0 && v253 < 1 << *(v248 + 32))
    {
      v357 = v254;
      v258 = v253 >> 6;
      if ((*(v252 + 8 * (v253 >> 6)) & (1 << v253)) == 0)
      {
        goto LABEL_174;
      }

      v358 = *(v248 + 36);
      v259 = *(v248 + 48);
      v421 = *(v97 + 72);
      v260 = v326;
      sub_22F15CAA0(v259 + v421 * v253, v326);
      v261 = *(*(v248 + 56) + 4 * v253);
      v262 = v260;
      v263 = v327;
      sub_22F15CB04(v262, v327);
      *(v263 + *(v329 + 48)) = v261;
      v264 = v263;
      v265 = v328;
      sub_22F25DF40(v264, v328);
      v266 = v265;
      v267 = v318;
      sub_22F15CB04(v266, v318);
      v268 = v359;
      v360 = v359;
      v270 = *(v359 + 16);
      v269 = *(v359 + 24);
      if (v270 >= v269 >> 1)
      {
        sub_22F146514((v269 > 1), v270 + 1, 1);
        v267 = v318;
        v268 = v360;
      }

      *(v268 + 16) = v270 + 1;
      v271 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      *&v359 = v268;
      sub_22F15CB04(v267, v268 + v271 + v270 * v421);
      v255 = 1 << *(v248 + 32);
      if (v253 >= v255)
      {
        goto LABEL_175;
      }

      v252 = v356;
      v272 = *(v356 + 8 * v258);
      if ((v272 & (1 << v253)) == 0)
      {
        goto LABEL_176;
      }

      if (v358 != *(v248 + 36))
      {
        goto LABEL_177;
      }

      v273 = v272 & (-2 << (v253 & 0x3F));
      if (v273)
      {
        v255 = __clz(__rbit64(v273)) | v253 & 0x7FFFFFFFFFFFFFC0;
        v256 = v355;
        v257 = v357;
      }

      else
      {
        v274 = v258 << 6;
        v275 = v258 + 1;
        v276 = (v352 + 8 * v258);
        v256 = v355;
        while (v275 < (v255 + 63) >> 6)
        {
          v278 = *v276++;
          v277 = v278;
          v274 += 64;
          ++v275;
          if (v278)
          {
            sub_22F107D18(v253, v358, 0);
            v255 = __clz(__rbit64(v277)) + v274;
            goto LABEL_124;
          }
        }

        sub_22F107D18(v253, v358, 0);
LABEL_124:
        v97 = v325;
        v257 = v357;
      }

      v254 = v257 + 1;
      v253 = v255;
      if (v254 == v256)
      {
        v249 = v348;
        v251 = v359;
        goto LABEL_126;
      }
    }

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
    goto LABEL_178;
  }

LABEL_126:
  sub_22F2F2E24(v251);

  sub_22F25B498(v347, v361);
  v280 = v279;

  v281 = *(v280 + 16);
  v282 = MEMORY[0x277D84F90];
  if (!v281)
  {
LABEL_145:
    sub_22F2F2E24(v282);

    sub_22F741690();
    if (v249)
    {
    }

    else
    {
      sub_22F1B2BBC(0);
      sub_22F7416A0();

      v311 = v316;
      v312 = v350;
      *v316 = v351;
      v311[1] = v312;
      v313 = v354;
      v311[2] = v353;
      v311[3] = v313;
      v311[4] = v349;
      v311[5] = v248;
      v311[6] = v280;
    }

    return;
  }

  v347 = v249;
  v348 = v248;
  v360 = MEMORY[0x277D84F90];
  sub_22F146514(0, v281, 0);
  *&v359 = v360;
  v283 = v280 + 64;
  v284 = sub_22F741980();
  v285 = 0;
  *&v352 = v280 + 72;
  v355 = v281;
  v356 = v280 + 64;
  while ((v284 & 0x8000000000000000) == 0 && v284 < 1 << *(v280 + 32))
  {
    v357 = v285;
    v288 = v284 >> 6;
    v289 = v325;
    if ((*(v283 + 8 * (v284 >> 6)) & (1 << v284)) == 0)
    {
      goto LABEL_179;
    }

    v358 = *(v280 + 36);
    v290 = *(v280 + 48);
    v421 = *(v325 + 72);
    v291 = v326;
    sub_22F15CAA0(v290 + v421 * v284, v326);
    v292 = *(*(v280 + 56) + 4 * v284);
    v293 = v291;
    v294 = v327;
    sub_22F15CB04(v293, v327);
    *(v294 + *(v329 + 48)) = v292;
    v295 = v294;
    v296 = v328;
    sub_22F25DF40(v295, v328);
    v297 = v296;
    v298 = v317;
    sub_22F15CB04(v297, v317);
    v299 = v359;
    v360 = v359;
    v300 = v280;
    v302 = *(v359 + 16);
    v301 = *(v359 + 24);
    if (v302 >= v301 >> 1)
    {
      sub_22F146514((v301 > 1), v302 + 1, 1);
      v298 = v317;
      v299 = v360;
    }

    *(v299 + 16) = v302 + 1;
    v303 = (*(v289 + 80) + 32) & ~*(v289 + 80);
    *&v359 = v299;
    sub_22F15CB04(v298, v299 + v303 + v302 * v421);
    v286 = 1 << *(v300 + 32);
    if (v284 >= v286)
    {
      goto LABEL_180;
    }

    v283 = v356;
    v304 = *(v356 + 8 * v288);
    if ((v304 & (1 << v284)) == 0)
    {
      goto LABEL_181;
    }

    v280 = v300;
    if (v358 != *(v300 + 36))
    {
      goto LABEL_182;
    }

    v305 = v304 & (-2 << (v284 & 0x3F));
    if (v305)
    {
      v286 = __clz(__rbit64(v305)) | v284 & 0x7FFFFFFFFFFFFFC0;
      v287 = v355;
    }

    else
    {
      v306 = v288 << 6;
      v307 = v288 + 1;
      v308 = (v352 + 8 * v288);
      v287 = v355;
      while (v307 < (v286 + 63) >> 6)
      {
        v310 = *v308++;
        v309 = v310;
        v306 += 64;
        ++v307;
        if (v310)
        {
          sub_22F107D18(v284, v358, 0);
          v286 = __clz(__rbit64(v309)) + v306;
          goto LABEL_129;
        }
      }

      sub_22F107D18(v284, v358, 0);
    }

LABEL_129:
    v285 = v357 + 1;
    v284 = v286;
    if (v357 + 1 == v287)
    {
      v249 = v347;
      v248 = v348;
      v282 = v359;
      goto LABEL_145;
    }
  }

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
}

uint64_t sub_22F25DF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F25DFB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F25E018()
{
  result = qword_2810A92B8;
  if (!qword_2810A92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92B8);
  }

  return result;
}

uint64_t PhotosChallengeEvaluationResult.algorithmName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotosChallengeEvaluationResult.experimentName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PhotosChallengeEvaluationResult.confusionMatrix.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotosChallengeEvaluationResult(0) + 24);
  v4 = sub_22F73FB70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PhotosChallengeEvaluationResult(uint64_t a1)
{
  result = qword_27DAB2BB8;
  if (!qword_27DAB2BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosChallengeEvaluationResult.csvDescription.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](*v1, v1[1]);
  MEMORY[0x231900B10](44, 0xE100000000000000);
  MEMORY[0x231900B10](v1[2], v1[3]);
  MEMORY[0x231900B10](44, 0xE100000000000000);
  type metadata accessor for PhotosChallengeEvaluationResult(0);
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB00();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FAE0();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB20();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB10();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB60();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB30();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB40();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB50();
  sub_22F7413E0();
  return 0;
}

uint64_t PhotosChallengeEvaluationResult.description.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F796040);
  MEMORY[0x231900B10](*v1, v1[1]);
  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F796060);
  MEMORY[0x231900B10](v1[2], v1[3]);
  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F796080);
  type metadata accessor for PhotosChallengeEvaluationResult(0);
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F7960A0);
  sub_22F73FB00();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F7960C0);
  sub_22F73FAE0();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F7960E0);
  sub_22F73FB20();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F796100);
  sub_22F73FB10();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F796120);
  sub_22F73FB60();
  sub_22F7413E0();
  MEMORY[0x231900B10](0x6163657222090A2CLL, 0xED0000203A226C6CLL);
  sub_22F73FB30();
  sub_22F7413E0();
  MEMORY[0x231900B10](0x3A22316622090A2CLL, 0xE900000000000020);
  sub_22F73FB40();
  sub_22F7413E0();
  MEMORY[0x231900B10](0x2263636D22090A2CLL, 0xEA0000000000203ALL);
  sub_22F73FB50();
  sub_22F7413E0();
  MEMORY[0x231900B10](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_22F25E774(uint64_t a1)
{
  result = sub_22F73FB70();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id MusicCurationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurationManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F25EA14(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v9 = type metadata accessor for CollectionCuration(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v16);
  v21 = *&a3[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions];
  if (!*(v21 + 16))
  {
    v34 = a3;
    return;
  }

  v62 = v17;
  v63 = a3;
  v59 = v20;
  v66 = v19;
  v64 = (&v55 - v18);
  v22 = *(type metadata accessor for Song(0) - 8);
  v23 = (v21 + ((*(v22 + 80) + 32) & ~*(v22 + 80)));
  v60 = *v23;
  v68 = v4;
  v24 = v23[1];

  v25 = sub_22F7416B0();
  v67 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v27 = swift_allocObject();
  v61 = xmmword_22F771340;
  *(v27 + 16) = xmmword_22F771340;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;
  sub_22F25F004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v28 = swift_allocObject();
  v65 = a1;
  v29 = a4;
  v30 = v28;
  *(v28 + 16) = xmmword_22F770DF0;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_22F153470();
  strcpy((v30 + 32), "collectionId");
  *(v30 + 45) = 0;
  *(v30 + 46) = -5120;
  *(v30 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v30 + 104) = sub_22F25F050();
  *(v30 + 72) = v27;

  v31 = sub_22F741560();
  v32 = v68;
  v33 = sub_22F33E998();
  if (v32)
  {

    return;
  }

  v56 = a2;
  v57 = v29;
  v35 = v65;
  v58 = v25;
  v68 = 0;
  v36 = v33;

  if (v36[2])
  {
    v37 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    sub_22F25F0B4(v36 + v37, v15);

    v38 = v64;
    sub_22F25F118(v15, v64);
    v39 = v38[3];
    if (v39)
    {
      v40 = v38[2];

      MusicCuration.replaceFirstSongInBestSongSuggestions(with:)(v40, v39);

      sub_22F25F17C(v38);
      return;
    }

    v47 = *v38;
    v46 = v38[1];
    v48 = v38[5];
    v65 = v38[4];

    v49 = v24;
    v50 = v59;
    sub_22F73F680();
    *v50 = v47;
    v50[1] = v46;
    v50[2] = v60;
    v50[3] = v49;
    v50[4] = v65;
    v50[5] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v51 = swift_allocObject();
    *(v51 + 16) = v61;
    sub_22F25F0B4(v50, v51 + v37);
    v52 = v67;
    v53 = v68;
    MusicCache.write(collectionCurations:progressReporter:)(v51);
    if (v53)
    {
      sub_22F25F17C(v50);

      swift_setDeallocating();
      sub_22F25F17C(v51 + v37);
      swift_deallocClassInstance();
      sub_22F25F17C(v38);
      return;
    }

    sub_22F25F17C(v50);

    swift_setDeallocating();
    sub_22F25F17C(v51 + v37);
    swift_deallocClassInstance();
    sub_22F25F17C(v38);
  }

  else
  {

    sub_22F73F680();
    v41 = v56;
    *v11 = v35;
    v11[1] = v41;
    v11[2] = v60;
    v11[3] = v24;
    v11[4] = 0;
    v11[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v42 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v61;
    sub_22F25F0B4(v11, v43 + v42);

    v44 = v67;
    v45 = v68;
    MusicCache.write(collectionCurations:progressReporter:)(v43);
    if (v45)
    {
      sub_22F25F17C(v11);

      swift_setDeallocating();
      sub_22F25F17C(v43 + v42);
      swift_deallocClassInstance();
      return;
    }

    sub_22F25F17C(v11);

    swift_setDeallocating();
    sub_22F25F17C(v43 + v42);
    swift_deallocClassInstance();
  }

  v54 = v63;
}

unint64_t sub_22F25F004()
{
  result = qword_2810A91E0;
  if (!qword_2810A91E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A91E0);
  }

  return result;
}

unint64_t sub_22F25F050()
{
  result = qword_2810A92D0;
  if (!qword_2810A92D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92D0);
  }

  return result;
}

uint64_t sub_22F25F0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionCuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F25F118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionCuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F25F17C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionCuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersonalEventMomentFetcher.init(photoLibrary:graph:cachedMomentUUIDByAssetUUID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void *PersonalEventMomentFetcher.personalEventGroundingResultByQueryToken(with:associatedPersonUUID:scopedMomentUUIDs:progressReporter:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v147 = a4;
  v148 = a1;
  v157 = sub_22F7407B0();
  v144 = *(v157 - 1);
  MEMORY[0x28223BE20](v157);
  v140 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v139 = &v111 - v12;
  MEMORY[0x28223BE20](v13);
  v151 = &v111 - v14;
  MEMORY[0x28223BE20](v15);
  v150 = &v111 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EA0, &qword_22F777700);
  MEMORY[0x28223BE20](v17 - 8);
  v149 = &v111 - v18;
  v153 = sub_22F740A50();
  v141 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v138 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v152 = &v111 - v21;
  MEMORY[0x28223BE20](v22);
  v156 = &v111 - v23;
  v162 = sub_22F73FDA0();
  v24 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v155 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v111 - v27;
  v29 = *v5;
  v30 = v5[1];
  v146 = v5[2];
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v31 = qword_2810B4DF0;
  *&v32 = CACurrentMediaTime();
  sub_22F1B560C("PersonalEventMomentFetcher", 26, 2u, v32, 0, v31, v161);
  sub_22F741690();
  if (v6)
  {
    goto LABEL_49;
  }

  v143 = a5;
  sub_22F191888();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v33);
  v35 = sub_22F740DF0();
  v36 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (!v36)
  {
    if (qword_2810A9400 != -1)
    {
LABEL_54:
      swift_once();
    }

    v49 = sub_22F740B90();
    __swift_project_value_buffer(v49, qword_2810B4CE0);
    v50 = sub_22F740B70();
    v51 = sub_22F7415E0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22F0FC000, v50, v51, "No personLocalIdentifier is found, immediately return", v52, 2u);
      MEMORY[0x2319033A0](v52, -1, -1);
    }

    a2 = sub_22F14F8C0(MEMORY[0x277D84F90]);
    sub_22F1B2BBC(0);

    return a2;
  }

  v135 = sub_22F740E20();
  v38 = v37;

  if (qword_2810A9400 != -1)
  {
LABEL_52:
    swift_once();
  }

  v39 = sub_22F740B90();
  v40 = __swift_project_value_buffer(v39, qword_2810B4CE0);

  v123 = v40;
  v41 = sub_22F740B70();
  v42 = sub_22F7415F0();

  v43 = os_log_type_enabled(v41, v42);
  v132 = v29;
  v131 = v30;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = v24;
    v46 = swift_slowAlloc();
    v158 = v46;
    *v44 = 136315138;
    *(v44 + 4) = sub_22F145F20(v135, v38, &v158);
    _os_log_impl(&dword_22F0FC000, v41, v42, "Associated person localIdentifier for personal event grounding = %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v47 = v46;
    v24 = v45;
    v48 = v157;
    MEMORY[0x2319033A0](v47, -1, -1);
    MEMORY[0x2319033A0](v44, -1, -1);

    a2 = v153;
  }

  else
  {

    a2 = v153;
    v48 = v157;
  }

  v53 = 0.2;
  sub_22F741690();
  if (v7)
  {

LABEL_49:
    sub_22F1B2BBC(0);

    return a2;
  }

  v127 = v38;
  v38 = *(v148 + 16);
  if (!v38)
  {

    v141 = MEMORY[0x277D84F98];
LABEL_47:
    sub_22F7416A0();
    sub_22F1B2BBC(0);

    return v141;
  }

  v55 = 0.8 / v38;
  v57 = *(v24 + 16);
  v56 = v24 + 16;
  v154 = v57;
  v58 = v148 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
  v145 = *(v56 + 56);
  v142 = (v141 + 6);
  v130 = (v141 + 4);
  v134 = (v141 + 2);
  v129 = (v141 + 11);
  v128 = *MEMORY[0x277D3CA70];
  v124 = *MEMORY[0x277D3CA88];
  v122 = *MEMORY[0x277D3CA80];
  v121 = *MEMORY[0x277D3CA78];
  v133 = (v141 + 1);
  v126 = (v144 + 16);
  v125 = (v144 + 8);
  v120 = v144 + 32;
  v148 = v56 - 8;
  v119 = v144 + 40;
  v141 = MEMORY[0x277D84F98];
  *&v54 = 136315138;
  v115 = v54;
  v59 = v149;
  v136 = v28;
  v137 = v56;
  v57(v28, v58, v162);
  while (1)
  {
    v157 = objc_autoreleasePoolPush();
    sub_22F73FD60();
    if ((*v142)(v59, 1, a2) == 1)
    {
      sub_22F2601C8(v59);
      goto LABEL_17;
    }

    v61 = v156;
    (*v130)(v156, v59, a2);
    v62 = *v134;
    v63 = v152;
    (*v134)(v152, v61, a2);
    v64 = (*v129)(v63, a2);
    if (v64 == v128)
    {
      break;
    }

    if (v64 == v124)
    {
      v158 = v132;
      v159 = v131;
      v160 = v146;
      v76 = v139;
      sub_22F2C0C50(v135, v127, v147);
      v77 = v140;
      (*v126)(v140, v76, v48);
      v78 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = v78;
      v80 = v77;
      a2 = v153;
      v28 = v136;
      sub_22F131790(v80, v136, isUniquelyReferenced_nonNull_native);
      v81 = v76;
      v59 = v149;
      (*v125)(v81, v48);
      v141 = v158;
    }

    else
    {
      v82 = v64 == v122 || v64 == v121;
      v28 = v136;
      if (!v82)
      {
        v95 = v138;
        v62(v138, v156, a2);
        v96 = sub_22F740B70();
        v117 = sub_22F7415E0();
        v118 = v96;
        v97 = os_log_type_enabled(v96, v117);
        v98 = v133;
        v99 = v133 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v97)
        {
          v100 = swift_slowAlloc();
          v116 = v100;
          v112 = swift_slowAlloc();
          v158 = v112;
          *v100 = v115;
          v114 = v99;
          v101 = v98;
          v102 = sub_22F740A40();
          v104 = v103;
          v113 = *v101;
          v113(v95, a2);
          v105 = sub_22F145F20(v102, v104, &v158);
          v28 = v136;

          v106 = v116;
          *(v116 + 1) = v105;
          _os_log_impl(&dword_22F0FC000, v118, v117, "Unsupported personal event type: %s", v106, 0xCu);
          v107 = v112;
          __swift_destroy_boxed_opaque_existential_0(v112);
          MEMORY[0x2319033A0](v107, -1, -1);
          MEMORY[0x2319033A0](v116, -1, -1);

          v113(v152, a2);
        }

        else
        {

          v108 = v95;
          v109 = *v98;
          (*v98)(v108, a2);
          v109(v152, a2);
        }

        v59 = v149;
      }
    }

LABEL_44:
    v53 = v55 + v53;
    sub_22F741690();
    (*v133)(v156, a2);
LABEL_17:
    v60 = v162;
    objc_autoreleasePoolPop(v157);
    (*v148)(v28, v60);
    v58 += v145;
    if (!--v38)
    {

      goto LABEL_47;
    }

    v154(v28, v58, v60);
  }

  v28 = v48;
  v29 = 0;
  v158 = v132;
  v159 = v131;
  v160 = v146;
  v65 = v150;
  sub_22F1F4DEC(v135, v127, v147);
  v66 = v155;
  v154(v155, v136, v162);
  v67 = v65;
  v68 = v28;
  (*v126)(v151, v67, v28);
  v7 = v141;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v158 = v7;
  v30 = sub_22F123028(v66);
  v70 = *(v7 + 16);
  v71 = (v69 & 1) == 0;
  v72 = v70 + v71;
  if (__OFADD__(v70, v71))
  {
    __break(1u);
    goto LABEL_52;
  }

  v73 = v69;
  if (*(v7 + 24) >= v72)
  {
    if ((v24 & 1) == 0)
    {
      sub_22F1363A0();
    }

    goto LABEL_35;
  }

  sub_22F12902C(v72, v24);
  v74 = sub_22F123028(v155);
  if ((v73 & 1) == (v75 & 1))
  {
    v30 = v74;
LABEL_35:
    v83 = v158;
    v141 = v158;
    if (v73)
    {
      v84 = v144;
      v48 = v68;
      (*(v144 + 40))(v158[7] + *(v144 + 72) * v30, v151, v68);
      (*v148)(v155, v162);
      (*(v84 + 8))(v150, v68);
    }

    else
    {
      v158[(v30 >> 6) + 8] |= 1 << v30;
      v85 = v155;
      v86 = v162;
      v154((*(v83 + 48) + v30 * v145), v155, v162);
      v87 = *(v83 + 56);
      v88 = v144;
      (*(v144 + 32))(v87 + *(v144 + 72) * v30, v151, v68);
      v89 = v85;
      v48 = v68;
      (*v148)(v89, v86);
      v90 = *(v88 + 8);
      v91 = v141;
      v90(v150, v68);
      v92 = v91[2];
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        __break(1u);
        goto LABEL_54;
      }

      v91[2] = v94;
    }

    a2 = v153;
    v59 = v149;
    v28 = v136;
    goto LABEL_44;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F2601C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EA0, &qword_22F777700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_22F260240(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F2602A8()
{
  swift_beginAccess();

  return result;
}

double sub_22F2602F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_22F2603A8()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F2603EC(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_22F26049C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F260504()
{
  swift_beginAccess();

  return result;
}

double sub_22F26054C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_22F260604(void *a1)
{
  v2 = v1;
  v4 = sub_22F740460();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  sub_22F740B80();
  *(v1 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup) = 0;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults) = 0;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 40))(v8, v9);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  v14 = [v13 librarySpecificFetchOptions];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22F771EB0;
  *(v15 + 32) = sub_22F742140();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v16 = sub_22F741160();

  [v14 setIncludedDetectionTypes_];

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_22F2A6EB8(v10, v17, v18);

  if (v19)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D3C468], v4);
    v20 = static CollectionTrigger.generateTriggerResults(from:type:)(v19, v7);

    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  *(v2 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults) = v20;
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t PeopleRandom.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PeopleRandom.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_22F260A58()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F260AA4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22F260AEC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F260B48(void *a1)
{
  v2 = v1;
  v4 = sub_22F740460();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v9 = [a1 librarySpecificFetchOptions];
  [v9 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771350;
  *(v10 + 32) = sub_22F742140();
  *(v10 + 40) = sub_22F742140();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v11 = sub_22F741160();

  [v9 setIncludedDetectionTypes_];

  v12 = [objc_opt_self() fetchPersonsWithOptions_];
  (*(v5 + 104))(v8, *MEMORY[0x277D3C440], v4);
  v13 = static CollectionTrigger.generateTriggerResults(from:type:)(v12, v8);

  (*(v5 + 8))(v8, v4);
  *(v2 + 24) = v13;
  return v2;
}

uint64_t sub_22F260DE8(void *a1)
{
  v2 = v1;
  v4 = sub_22F740460();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v9 = [a1 librarySpecificFetchOptions];
  v10 = [objc_opt_self() fetchAssetCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];
  (*(v5 + 104))(v8, *MEMORY[0x277D3C450], v4);
  v11 = static CollectionTrigger.generateTriggerResults(from:type:)(v10, v8);

  (*(v5 + 8))(v8, v4);
  *(v2 + 24) = v11;
  return v2;
}

uint64_t sub_22F260F90(void *a1)
{
  v2 = v1;
  v4 = sub_22F740460();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v9 = [a1 librarySpecificFetchOptions];
  [v9 setIncludePendingMemories_];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F770DF0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22F153470();
  strcpy((v10 + 32), "featuredState");
  *(v10 + 46) = -4864;
  v12 = MEMORY[0x277D83C10];
  *(v10 + 96) = MEMORY[0x277D83B88];
  *(v10 + 104) = v12;
  *(v10 + 64) = v11;
  *(v10 + 72) = 1;
  v13 = sub_22F741560();
  [v9 setPredicate_];

  v14 = [objc_opt_self() fetchMemoriesWithOptions_];
  (*(v5 + 104))(v8, *MEMORY[0x277D3C460], v4);
  v15 = static CollectionTrigger.generateTriggerResults(from:type:)(v14, v8);

  (*(v5 + 8))(v8, v4);
  *(v2 + 24) = v15;
  return v2;
}

uint64_t _s11PhotosGraph10PetsRandomCfD_0()
{

  return swift_deallocClassInstance();
}

double keypath_get_9Tm@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

void keypath_get_11Tm(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

void keypath_set_12Tm(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

double keypath_get_13Tm@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);

  return result;
}

uint64_t type metadata accessor for PeopleRandom(uint64_t a1)
{
  result = qword_27DAB2BC8;
  if (!qword_27DAB2BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2613D8(uint64_t a1)
{
  result = sub_22F740B90();
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

uint64_t sub_22F262298(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v23[0] = a4;
  v23[1] = a5;
  v8 = v5;
  v10 = sub_22F740460();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F740560();
  v15 = MEMORY[0x28223BE20](v14);
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  (*(v17 + 104))(v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D3C570], v15);
  sub_22F740570();
  swift_allocObject();
  v18 = a1;
  v19 = sub_22F740550();
  a2(0);
  v20 = a3(v19);
  (*(v11 + 104))(v13, *v23[0], v10);
  v21 = static CollectionTrigger.generateTriggerResults(from:type:)(v20, v13);

  (*(v11 + 8))(v13, v10);
  *(v8 + 24) = v21;
  return v8;
}

uint64_t sub_22F262784(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = &v131 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v153 = &v131 - v9;
  v10 = sub_22F73F690();
  v154 = *(v10 - 8);
  v155 = v10;
  MEMORY[0x28223BE20](v10);
  v152 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Song(0);
  v151 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v147 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v148 = (&v131 - v14);
  MEMORY[0x28223BE20](v15);
  v150 = &v131 - v16;
  MEMORY[0x28223BE20](v17);
  v163 = (&v131 - v18);
  v19 = sub_22F7416E0();
  v166 = v20;
  v167 = v19;
  v164 = v22;
  v165 = v21;
  v156 = a3;
  v168 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_cache);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v23 = swift_allocObject();
  v158 = xmmword_22F771340;
  *(v23 + 16) = xmmword_22F771340;
  v161 = a1;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  v24 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v26 = swift_allocObject();
  v157 = xmmword_22F770DF0;
  *(v26 + 16) = xmmword_22F770DF0;
  *(v26 + 56) = MEMORY[0x277D837D0];
  v27 = sub_22F153470();
  *(v26 + 64) = v27;
  *(v26 + 32) = 0x44496D616461;
  *(v26 + 40) = 0xE600000000000000;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v26 + 96) = v28;
  v29 = sub_22F25F050();
  *(v26 + 104) = v29;
  *(v26 + 72) = v23;
  v162 = a2;

  v30 = v24;
  v31 = sub_22F741560();
  v169 = 0;
  v170 = 0;
  v171 = 1;
  v32 = v167;
  v33 = v172;
  v34 = sub_22F196B2C(v31, &v169, v167);
  v172 = v33;
  if (v33)
  {
  }

  else
  {
    v142 = v29;
    v143 = v28;
    v144 = v27;
    v145 = v25;
    v146 = v30;
    v36 = v34;

    if (*(v36 + 16))
    {
      v37 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v38 = v150;
      sub_22F15CAA0(v36 + v37, v150);

      v39 = v38;
      v40 = v163;
      sub_22F15CB04(v39, v163);
      v41 = *(v40 + 72);
      v42 = 20302;
      if (v41)
      {
        v42 = 5457241;
      }

      v43 = 0xE200000000000000;
      if (v41)
      {
        v43 = 0xE300000000000000;
      }

      v44 = v41 == 2;
      v45 = 63;
      if (v41 == 2)
      {
        v46 = 63;
      }

      else
      {
        v46 = v42;
      }

      v137 = v46;
      v47 = 0xE100000000000000;
      if (v44)
      {
        v48 = 0xE100000000000000;
      }

      else
      {
        v48 = v43;
      }

      v151 = v48;
      v49 = v160;
      v50 = v166;
      if ((*(v40 + *(v160 + 72) + 4) & 1) == 0)
      {
        v169 = 0;
        v170 = 0xE000000000000000;
        sub_22F7413E0();
        v45 = v169;
        v47 = v170;
      }

      v51 = *(v40 + v49[19] + 4);
      v52 = v154;
      v53 = v152;
      v150 = v47;
      v135 = v45;
      if (v51)
      {
        v141 = 0xE100000000000000;
        v54 = 63;
        v55 = &v164;
      }

      else
      {
        v169 = 0;
        v170 = 0xE000000000000000;
        sub_22F7413E0();
        v54 = v170;
        v134 = v169;
        v55 = &v171;
      }

      *(v55 - 32) = v54;
      if (*(v40 + v49[20] + 4))
      {
        v140 = 0xE100000000000000;
        v58 = 63;
        v59 = &v163;
      }

      else
      {
        v169 = 0;
        v170 = 0xE000000000000000;
        sub_22F7413E0();
        v58 = v170;
        v133 = v169;
        v59 = &v170;
      }

      *(v59 - 32) = v58;
      if (*(v40 + v49[21] + 4))
      {
        v139 = 0xE100000000000000;
        v60 = 63;
        v61 = &v162;
      }

      else
      {
        v169 = 0;
        v170 = 0xE000000000000000;
        sub_22F7413E0();
        v60 = v170;
        v132 = v169;
        v61 = &v169;
      }

      *(v61 - 32) = v60;
      if (v40[12])
      {
        v138 = 0xE100000000000000;
        v62 = 63;
        v63 = &v161;
      }

      else
      {
        v169 = 0;
        v170 = 0xE000000000000000;
        sub_22F7413E0();
        v62 = v170;
        v131 = v169;
        v63 = &v168;
      }

      *(v63 - 32) = v62;
      v64 = v40 + v49[16];
      v65 = v153;
      sub_22F13BA9C(v64, v153, &qword_27DAB0920, &qword_22F770B20);
      v66 = v155;
      if ((*(v52 + 48))(v65, 1, v155) == 1)
      {
        sub_22F120ADC(v65, &qword_27DAB0920, &qword_22F770B20);
        v153 = 0xE100000000000000;
        v136 = 63;
      }

      else
      {
        (*(v52 + 32))(v53, v65, v66);
        sub_22F1E3D6C();
        v136 = sub_22F742010();
        v153 = v67;
        (*(v52 + 8))(v53, v66);
      }

      v68 = _s11PhotosGraph29MusicFeatureExtractionContextC05applecdeF04withAcA0c7CuratorF0C_tFZ_0(v156);
      v69 = v68 + OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider;
      swift_beginAccess();
      v70 = *(v69 + 24);
      v71 = *(v69 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
      v72 = (*(v71 + 8))(v70, v71);
      LOBYTE(v70) = v73;
      swift_endAccess();
      if (v70)
      {
        v169 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
        swift_willThrowTypedImpl();

        sub_22F21173C(v72);
        v155 = 120;
        v156 = 0xE100000000000000;
        v75 = v163;
      }

      else
      {
        v75 = v163;
        v76 = v172;
        sub_22F20C400(v163);
        if (v76)
        {
          sub_22F21173C(v72);

          v172 = 0;
          v155 = 120;
          v156 = 0xE100000000000000;
        }

        else
        {
          v172 = 0;
          sub_22F21173C(v72);
          v155 = sub_22F740CB0();
          v156 = v77;
          v75 = v163;
        }
      }

      v78 = *v75;
      v79 = v75[1];
      v169 = MEMORY[0x277D84F90];
      MEMORY[0x28223BE20](v74);
      *(&v131 - 6) = v78;
      *(&v131 - 5) = v79;
      *(&v131 - 4) = v80;
      *(&v131 - 3) = v50;
      *(&v131 - 2) = &v169;
      v81 = v172;
      sub_22F7417A0();
      if (v81)
      {

        v102 = 0xE100000000000000;
        v154 = 120;
      }

      else
      {
        sub_22F7416A0();
        v154 = MEMORY[0x231900D40](v169, MEMORY[0x277D837D0]);
        v102 = v101;
      }

      v103 = v162;
      v82 = swift_allocObject();
      *(v82 + 16) = v158;
      *(v82 + 32) = v161;
      *(v82 + 40) = v103;
      v83 = swift_allocObject();
      *(v83 + 16) = v157;
      v84 = v144;
      *(v83 + 56) = MEMORY[0x277D837D0];
      *(v83 + 64) = v84;
      *(v83 + 32) = 0x44496D616461;
      *(v83 + 40) = 0xE600000000000000;
      v85 = v142;
      *(v83 + 96) = v143;
      *(v83 + 104) = v85;
      *(v83 + 72) = v82;

      v86 = sub_22F741560();
      sub_22F2DA3D8(v86);
      v172 = 0;
      v88 = v87;

      if (*(v88 + 16))
      {
        v89 = v147;
        sub_22F15CAA0(v88 + v37, v147);

        v90 = v148;
        sub_22F15CB04(v89, v148);
        v92 = v90[15];
        v91 = v90[16];
        v93 = 63;
        if (!v91)
        {
          v92 = 63;
        }

        *&v158 = v92;
        v94 = 0xE100000000000000;
        if (v91)
        {
          v95 = v91;
        }

        else
        {
          v95 = 0xE100000000000000;
        }

        v159 = v95;
        v96 = v90[18];
        if (v96)
        {
          v93 = v90[17];
        }

        v162 = v93;
        if (v96)
        {
          v94 = v96;
        }

        v168 = v94;
        v97 = v160;
        v98 = *(v90 + *(v160 + 96));
        if (v98 == 2)
        {

          v99 = 0xE100000000000000;
          v100 = 63;
        }

        else
        {
          v169 = 0;
          v170 = 0xE000000000000000;
          if (v98)
          {
            v104 = 1702195828;
          }

          else
          {
            v104 = 0x65736C6166;
          }

          if (v98)
          {
            v105 = 0xE400000000000000;
          }

          else
          {
            v105 = 0xE500000000000000;
          }

          MEMORY[0x231900B10](v104, v105);

          v100 = v169;
          v99 = v170;
        }

        v152 = v100;
        v106 = (v90 + *(v97 + 100));
        v108 = *v106;
        v107 = v106[1];
        v109 = 63;
        if (v107)
        {
          v109 = v108;
        }

        *&v157 = v109;
        v110 = 0xE100000000000000;
        if (v107)
        {
          v110 = v107;
        }

        v161 = v110;

        sub_22F15CBD8(v90);
      }

      else
      {

        v161 = 0xE100000000000000;
        *&v157 = 63;
        v152 = 63;
        v99 = 0xE100000000000000;
        v162 = 63;
        v168 = 0xE100000000000000;
        *&v158 = 63;
        v159 = 0xE100000000000000;
        v97 = v160;
      }

      v169 = 0;
      v170 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0x203A44496D616461, 0xE800000000000000);
      MEMORY[0x231900B10](v78, v79);
      MEMORY[0x231900B10](0x203A656C7469740ALL, 0xE800000000000000);
      v111 = v163;
      v112 = v163[3];
      if (v112)
      {
        v113 = v163[2];
      }

      else
      {
        v113 = 63;
      }

      if (v112)
      {
        v114 = v163[3];
      }

      else
      {
        v114 = 0xE100000000000000;
      }

      MEMORY[0x231900B10](v113, v114);

      MEMORY[0x231900B10](0x3A7473697472610ALL, 0xE900000000000020);
      v115 = v111[5];
      if (v115)
      {
        v116 = v111[4];
      }

      else
      {
        v116 = 63;
      }

      if (v115)
      {
        v117 = v111[5];
      }

      else
      {
        v117 = 0xE100000000000000;
      }

      MEMORY[0x231900B10](v116, v117);

      MEMORY[0x231900B10](0x203A6D75626C610ALL, 0xE800000000000000);
      v118 = v111[7];
      if (v118)
      {
        v119 = v111[6];
      }

      else
      {
        v119 = 63;
      }

      if (v118)
      {
        v120 = v111[7];
      }

      else
      {
        v120 = 0xE100000000000000;
      }

      MEMORY[0x231900B10](v119, v120);

      MEMORY[0x231900B10](0x6173756F72610A0ALL, 0xEB00000000203A6CLL);
      MEMORY[0x231900B10](v135, v150);

      MEMORY[0x231900B10](0x65636E656C61760ALL, 0xEA0000000000203ALL);
      MEMORY[0x231900B10](v134, v141);

      MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F7962B0);
      MEMORY[0x231900B10](v133, v140);

      MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F7962D0);
      MEMORY[0x231900B10](v132, v139);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F7962F0);
      MEMORY[0x231900B10](v131, v138);

      MEMORY[0x231900B10](0x6F4C6F696475610ALL, 0xEE00203A656C6163);
      v121 = v111 + *(v97 + 60);
      v122 = v149;
      sub_22F13BA9C(v121, v149, &qword_27DAB0C90, &unk_22F785B70);
      v123 = sub_22F73F7C0();
      v124 = *(v123 - 8);
      if ((*(v124 + 48))(v122, 1, v123) == 1)
      {
        sub_22F120ADC(v122, &qword_27DAB0C90, &unk_22F785B70);
        v125 = 0xE100000000000000;
        v126 = 63;
      }

      else
      {
        v127 = sub_22F73F6F0();
        v125 = v128;
        (*(v124 + 8))(v122, v123);
        v126 = v127;
      }

      v130 = v165;
      v129 = v166;
      MEMORY[0x231900B10](v126, v125);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F796310);
      MEMORY[0x231900B10](v155, v156);

      MEMORY[0x231900B10](0x696C70784573690ALL, 0xED0000203A746963);
      MEMORY[0x231900B10](v137, v151);

      MEMORY[0x231900B10](0xD000000000000019, 0x800000022F796330);
      MEMORY[0x231900B10](v154, v102);

      MEMORY[0x231900B10](0xD000000000000019, 0x800000022F796350);
      MEMORY[0x231900B10](v136, v153);

      MEMORY[0x231900B10](0x5255676E6F730A0ALL, 0xEF203A687461504CLL);
      MEMORY[0x231900B10](v158, v159);

      MEMORY[0x231900B10](0xD000000000000013, 0x800000022F796370);
      MEMORY[0x231900B10](v162, v168);

      MEMORY[0x231900B10](0xD000000000000021, 0x800000022F796390);
      MEMORY[0x231900B10](v152, v99);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F7963C0);
      MEMORY[0x231900B10](v157, v161);

      v25 = v169;
      sub_22F15CBD8(v163);
    }

    else
    {

      sub_22F263F04();
      v25 = swift_allocError();
      v56 = v162;
      *v57 = v161;
      *(v57 + 8) = v56;
      *(v57 + 16) = 0;
      swift_willThrow();
    }
  }

  return v25;
}