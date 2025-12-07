uint64_t sub_1CF1EFDD8(void *a1)
{
  v2 = sub_1CF9E6118();
  v114 = *(v2 - 8);
  v115 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v111 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v104 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v104 - v7;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v104 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v104 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v104 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v104 - v28;
  v112 = a1;
  sub_1CF9E5988();
  sub_1CF9E5988();
  v30 = v9;
  v32 = *(v9 + 8);
  v31 = (v9 + 8);
  v33 = v8;
  v32(v26, v8);
  v34 = sub_1CF7A4B00(v29, 0);
  v105 = v30;
  v106 = v23;
  v35 = v111;
  v104 = v17;
  v113 = v34;
  v32(v29, v8);
  v36 = v32;
  if (v113)
  {
    v37 = [objc_opt_self() defaultManager];
    sub_1CF9E5988();
    sub_1CF9E5988();
    v36(v20, v8);
    sub_1CF9E5988();
    v38 = v36;
    v36(v26, v33);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;
    v41 = v104;
    sub_1CF9E5958();
    v40, v42, v43, v44, v45, v46, v47, v48;
    v49 = v110;
    sub_1CF9E5958();
    sub_1CF9E5A18();
    v51 = v50;
    v52 = sub_1CF9E6888();
    v51, v53, v54, v55, v56, v57, v58, v59;
    v112 = v37;
    [v37 fp:v52 createPathIfNeeded:?];

    v60 = fpfs_current_or_default_log();
    v61 = v109;
    sub_1CF9E6128();
    v62 = v108;
    (*(v105 + 16))(v108, v49, v33);
    v63 = sub_1CF9E6108();
    v64 = sub_1CF9E72C8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = v62;
      v111 = v31;
      v68 = v66;
      v116[0] = v66;
      *v65 = 136315138;
      v69 = sub_1CF9E5A18();
      v71 = v70;
      v38(v67, v33);
      v72 = v61;
      v73 = sub_1CEFD0DF0(v69, v71, v116);
      v74 = v71;
      v41 = v104;
      v74, v75, v76, v77, v78, v79, v80, v81;
      *(v65 + 4) = v73;
      _os_log_impl(&dword_1CEFC7000, v63, v64, "Marking domain as needing reindexing at %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1D386CDC0](v68, -1, -1);
      v82 = v65;
      v49 = v110;
      MEMORY[0x1D386CDC0](v82, -1, -1);

      (*(v114 + 8))(v72, v115);
    }

    else
    {

      v38(v62, v33);
      (*(v114 + 8))(v61, v115);
    }

    v101 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
    v102 = sub_1CF9E5928();
    [v101 writeToURL:v102 atomically:0];

    v38(v49, v33);
    v38(v41, v33);
    return (v38)(v106, v33);
  }

  else
  {
    v83 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v84 = v107;
    (*(v105 + 16))(v107, v112, v8);
    v85 = sub_1CF9E6108();
    v86 = sub_1CF9E72A8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v116[0] = v88;
      *v87 = 136315138;
      sub_1CF1FD858(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v89 = sub_1CF9E7F98();
      v90 = v84;
      v92 = v91;
      v36(v90, v33);
      v93 = sub_1CEFD0DF0(v89, v92, v116);
      v92, v94, v95, v96, v97, v98, v99, v100;
      *(v87 + 4) = v93;
      _os_log_impl(&dword_1CEFC7000, v85, v86, "No providerID found for url %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x1D386CDC0](v88, -1, -1);
      MEMORY[0x1D386CDC0](v87, -1, -1);
    }

    else
    {

      v36(v84, v8);
    }

    return (*(v114 + 8))(v35, v115);
  }
}

uint64_t sub_1CF1F068C(void *a1, uint64_t a2, uint64_t a3, void **a4, void (*a5)(void, void), uint64_t a6, void *a7, uint64_t *a8)
{
  v442 = a7;
  v443 = a8;
  v446 = a4;
  v451 = a3;
  v474 = *MEMORY[0x1E69E9840];
  v12 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v428 = &v424 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5268();
  v429 = *(v14 - 8);
  v430 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v427 = &v424 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v435 = &v424 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v436 = &v424 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v438 = &v424 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v440 = &v424 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v444 = &v424 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v448 = &v424 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v450 = &v424 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v432 = &v424 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v431 = &v424 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v433 = &v424 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v434 = &v424 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v437 = &v424 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v439 = &v424 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v441 = (&v424 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v445 = &v424 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v452 = (&v424 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v424 - v50;
  v52 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v53 = sub_1CF9E6108();
  v54 = sub_1CF9E7298();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v449 = a5;
    v56 = a6;
    v57 = v16;
    v58 = a2;
    v59 = a1;
    v60 = v17;
    v61 = v55;
    *v55 = 0;
    _os_log_impl(&dword_1CEFC7000, v53, v54, "Disabling foreign keys...", v55, 2u);
    v62 = v61;
    v17 = v60;
    a1 = v59;
    a2 = v58;
    v16 = v57;
    a6 = v56;
    a5 = v449;
    MEMORY[0x1D386CDC0](v62, -1, -1);
  }

  v63 = a1;
  v66 = *(v17 + 8);
  v64 = v17 + 8;
  v65 = v66;
  v66(v51, v16);
  swift_beginAccess();
  v67 = *(a2 + 24);
  *(a2 + 16) = 0xD000000000000012;
  *(a2 + 24) = 0x80000001CFA2F730;
  v67, v68, v69, v70, v71, v72, v73, v74;
  v472 = sub_1CF1E8018;
  v473 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v469 = 1107296256;
  v470 = sub_1CEFE7548;
  v471 = &block_descriptor_167;
  v75 = _Block_copy(&aBlock);

  aBlock = 0;
  v447 = v63;
  v76 = [v63 executeSwift:v75 error:&aBlock];
  _Block_release(v75);
  v77 = aBlock;
  v78 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (!v76)
    {
      v449 = v65;
      v92 = sub_1CF9E57F8();

      swift_willThrow();
      v93 = fpfs_current_or_default_log();
      v94 = v450;
      sub_1CF9E6128();

      v95 = v92;
      v96 = sub_1CF9E6108();
      v97 = sub_1CF9E72A8();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v426 = v16;
        v100 = v99;
        v101 = swift_slowAlloc();
        aBlock = v101;
        *v98 = 136315394;
        swift_beginAccess();
        v425 = v64;
        v102 = *(a2 + 16);
        v103 = *(a2 + 24);

        v104 = sub_1CEFD0DF0(v102, v103, &aBlock);
        v103, v105, v106, v107, v108, v109, v110, v111;
        *(v98 + 4) = v104;
        *(v98 + 12) = 2112;
        swift_getErrorValue();
        v112 = Error.prettyDescription.getter(v463, v464);
        *(v98 + 14) = v112;
        *v100 = v112;
        _os_log_impl(&dword_1CEFC7000, v96, v97, "[%s] Failed to disable foreign keys: %@", v98, 0x16u);
        sub_1CF19CAB0(v100);
        MEMORY[0x1D386CDC0](v100, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x1D386CDC0](v101, -1, -1);
        MEMORY[0x1D386CDC0](v98, -1, -1);

        v449(v450, v426);
      }

      else
      {

        v449(v94, v16);
      }

      swift_beginAccess();
      v113 = *(a2 + 16);
      v114 = *(a2 + 24);
      v115 = v92;

      sub_1CF1EF95C(v451, v92, -1, v113, v114);

      v114, v116, v117, v118, v119, v120, v121, v122;
      return 0;
    }

    v80 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v81 = sub_1CF9E6108();
    v82 = sub_1CF9E7298();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1CEFC7000, v81, v82, "Updating history table...", v83, 2u);
      MEMORY[0x1D386CDC0](v83, -1, -1);
    }

    v65(v452, v16);
    swift_beginAccess();
    v84 = *(a2 + 24);
    *(a2 + 16) = 0xD000000000000014;
    *(a2 + 24) = 0x80000001CFA2F750;
    v84, v85, v86, v87, v88, v89, v90, v91;
    v76 = 0;
    sub_1CF1F3510(v446, a5, a6);
    v123 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v124 = sub_1CF9E6108();
    v125 = sub_1CF9E7298();
    v126 = os_log_type_enabled(v124, v125);
    v426 = v16;
    if (v126)
    {
      v127 = swift_slowAlloc();
      LODWORD(v452) = a6;
      v128 = v65;
      v129 = v64;
      v130 = v127;
      *v127 = 0;
      _os_log_impl(&dword_1CEFC7000, v124, v125, "Patching reconciliation table...", v127, 2u);
      v131 = v130;
      v64 = v129;
      v65 = v128;
      v16 = v426;
      a6 = v452;
      MEMORY[0x1D386CDC0](v131, -1, -1);
    }

    v65(v445, v16);
    swift_beginAccess();
    v132 = *(a2 + 24);
    *(a2 + 16) = 0xD000000000000018;
    *(a2 + 24) = 0x80000001CFA2F770;
    v132, v133, v134, v135, v136, v137, v138, v139;
    aBlock = 0;
    sub_1CF7D5920(sub_1CF1F3764, 0, a5);
    v449 = v65;
    v174 = sub_1CF7D55FC(sub_1CF1F38CC, 0, a5, a6);
    LODWORD(v452) = a6;
    if ([v174 next])
    {
      v77 = v442;
      do
      {
        v176 = objc_autoreleasePoolPush();
        sub_1CF1F38E8(v174, v77, &aBlock, a5, v452);
        objc_autoreleasePoolPop(v176);
      }

      while (([v174 next] & 1) != 0);
      v177 = aBlock;

      if (v177 > 0)
      {
        *v443 = v177;
        sub_1CF1FD788();
        v178 = swift_allocError();
        *v179 = v177;
        swift_willThrow();
        v76 = v178;
        v140 = fpfs_current_or_default_log();
        v141 = v444;
        sub_1CF9E6128();

        v142 = v76;
        v143 = sub_1CF9E6108();
        v144 = sub_1CF9E72A8();

        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v425 = v64;
          v147 = v146;
          v148 = swift_slowAlloc();
          aBlock = v148;
          *v145 = 136315394;
          swift_beginAccess();
          v149 = *(a2 + 16);
          v150 = *(a2 + 24);

          v151 = sub_1CEFD0DF0(v149, v150, &aBlock);
          v150, v152, v153, v154, v155, v156, v157, v158;
          *(v145 + 4) = v151;
          *(v145 + 12) = 2112;
          swift_getErrorValue();
          v159 = Error.prettyDescription.getter(v461, v462);
          *(v145 + 14) = v159;
          *v147 = v159;
          _os_log_impl(&dword_1CEFC7000, v143, v144, "[%s] Failed to patch the reconciliation_table table: %@", v145, 0x16u);
          sub_1CF19CAB0(v147);
          MEMORY[0x1D386CDC0](v147, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v148);
          MEMORY[0x1D386CDC0](v148, -1, -1);
          MEMORY[0x1D386CDC0](v145, -1, -1);

          v449(v444, v426);
        }

        else
        {

          v449(v141, v16);
        }

        v160 = *v443;
LABEL_19:
        swift_beginAccess();
        v161 = *(a2 + 16);
        v162 = *(a2 + 24);
        v163 = v76;

        v164 = v451;
LABEL_20:
        sub_1CF1EF95C(v164, v76, v160, v161, v162);

        v162, v165, v166, v167, v168, v169, v170, v171;
        v172 = v447;
        goto LABEL_21;
      }
    }

    else
    {

      v77 = v442;
    }

    v180 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v181 = sub_1CF9E6108();
    v182 = sub_1CF9E7298();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_1CEFC7000, v181, v182, "Patching FSSnapshot table...", v183, 2u);
      v184 = v183;
      v77 = v442;
      MEMORY[0x1D386CDC0](v184, -1, -1);
    }

    v65(v441, v16);
    swift_beginAccess();
    v185 = *(a2 + 24);
    *(a2 + 16) = 0xD000000000000014;
    *(a2 + 24) = 0x80000001CFA2F790;
    v185, v186, v187, v188, v189, v190, v191, v192;
    aBlock = 0;
    v193 = v452;
    sub_1CF7D5920(sub_1CF1F43D0, 0, a5);
    v215 = sub_1CF7D55FC(sub_1CF1F4540, 0, a5, v193);
    if ([v215 next])
    {
      do
      {
        v217 = objc_autoreleasePoolPush();
        sub_1CF1F455C(v215, v77, &aBlock, a5, v452);
        objc_autoreleasePoolPop(v217);
      }

      while (([v215 next] & 1) != 0);
      v218 = aBlock;

      if (v218 > 0)
      {
        *v443 = v218;
        sub_1CF1FD788();
        v219 = swift_allocError();
        *v220 = v218;
        swift_willThrow();
        v76 = v219;
        v194 = fpfs_current_or_default_log();
        v195 = v440;
        sub_1CF9E6128();

        v196 = v76;
        v197 = sub_1CF9E6108();
        v198 = sub_1CF9E72A8();

        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          aBlock = v201;
          *v199 = 136315394;
          swift_beginAccess();
          v425 = v64;
          v202 = *(a2 + 16);
          v203 = *(a2 + 24);

          v204 = sub_1CEFD0DF0(v202, v203, &aBlock);
          v203, v205, v206, v207, v208, v209, v210, v211;
          *(v199 + 4) = v204;
          *(v199 + 12) = 2112;
          swift_getErrorValue();
          v212 = Error.prettyDescription.getter(v459, v460);
          *(v199 + 14) = v212;
          *v200 = v212;
          _os_log_impl(&dword_1CEFC7000, v197, v198, "[%s] Failed to patch the fs_snapshot table: %@", v199, 0x16u);
          sub_1CF19CAB0(v200);
          MEMORY[0x1D386CDC0](v200, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v201);
          MEMORY[0x1D386CDC0](v201, -1, -1);
          MEMORY[0x1D386CDC0](v199, -1, -1);

          v449(v440, v426);
        }

        else
        {

          v65(v195, v426);
        }

        v213 = v451;
        v160 = *v443;
        swift_beginAccess();
        v161 = *(a2 + 16);
        v162 = *(a2 + 24);
        v214 = v76;

        v164 = v213;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v221 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v222 = sub_1CF9E6108();
    v223 = sub_1CF9E7298();
    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      *v224 = 0;
      _os_log_impl(&dword_1CEFC7000, v222, v223, "Patching FSItemJobs table...", v224, 2u);
      v225 = v224;
      v77 = v442;
      MEMORY[0x1D386CDC0](v225, -1, -1);
    }

    v65(v439, v16);
    swift_beginAccess();
    v226 = *(a2 + 24);
    *(a2 + 16) = 0xD000000000000014;
    *(a2 + 24) = 0x80000001CFA2F7B0;
    v226, v227, v228, v229, v230, v231, v232, v233;
    isEscapingClosureAtFileLocation = sub_1CF7D55FC(sub_1CF1F4D3C, 0, a5, v452);
  }

  v267 = isEscapingClosureAtFileLocation;
  v268 = [isEscapingClosureAtFileLocation next];
  v425 = v64;
  if ((v268 & 1) == 0)
  {
LABEL_94:

LABEL_95:
    v313 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v314 = sub_1CF9E6108();
    v315 = sub_1CF9E7298();
    if (os_log_type_enabled(v314, v315))
    {
      v316 = swift_slowAlloc();
      *v316 = 0;
      _os_log_impl(&dword_1CEFC7000, v314, v315, "Patching FSThrottle table...", v316, 2u);
      v317 = v316;
      v77 = v442;
      MEMORY[0x1D386CDC0](v317, -1, -1);
    }

    v65(v437, v16);
    swift_beginAccess();
    v318 = *(a2 + 24);
    *(a2 + 16) = 0xD000000000000014;
    *(a2 + 24) = 0x80000001CFA2F7D0;
    v318, v319, v320, v321, v322, v323, v324, v325;
    v326 = sub_1CF7D55FC(sub_1CF1F4FC8, 0, a5, v452);
    v424 = a2;
    if (!v76)
    {
      v347 = v326;
      v348 = v447;
      if ([v326 next])
      {
        do
        {
          v349 = objc_autoreleasePoolPush();
          sub_1CF1F4FE4(v347, v77, a5, v452);
          objc_autoreleasePoolPop(v349);
        }

        while (([v347 next] & 1) != 0);
      }

      v350 = fpfs_current_or_default_log();
      v351 = v434;
      sub_1CF9E6128();
      v352 = sub_1CF9E6108();
      v353 = sub_1CF9E7298();
      if (os_log_type_enabled(v352, v353))
      {
        v354 = swift_slowAlloc();
        *v354 = 0;
        _os_log_impl(&dword_1CEFC7000, v352, v353, "Patching Jobs table...", v354, 2u);
        MEMORY[0x1D386CDC0](v354, -1, -1);
      }

      v449(v351, v426);
      v355 = v424;
      swift_beginAccess();
      v356 = *(v355 + 24);
      strcpy((v355 + 16), "patchJobsTable");
      *(v355 + 31) = -18;
      v356, v357, v358, v359, v360, v361, v362, v363;
      v465[0] = 0;
      v364 = sub_1CF7D55FC(sub_1CF1F5528, 0, a5, v452);
      v398 = v364;
      if ([v364 next])
      {
        v399 = v452;
        do
        {
          v400 = objc_autoreleasePoolPush();
          sub_1CF1F5544(v398, v442, v465, a5, v399);
          objc_autoreleasePoolPop(v400);
        }

        while (([v398 next] & 1) != 0);
        v401 = v465[0];

        if (v401 > 0)
        {
          *v443 = v401;
          sub_1CF1FD788();
          v402 = swift_allocError();
          *v403 = v401;
          v404 = v402;
          swift_willThrow();
          v365 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v366 = v404;
          v367 = sub_1CF9E6108();
          v368 = sub_1CF9E72A8();

          if (os_log_type_enabled(v367, v368))
          {
            v369 = swift_slowAlloc();
            v370 = swift_slowAlloc();
            v371 = swift_slowAlloc();
            v465[0] = v371;
            *v369 = 136315394;
            v372 = v424;
            swift_beginAccess();
            v373 = *(v372 + 16);
            v374 = *(v372 + 24);

            v375 = sub_1CEFD0DF0(v373, v374, v465);
            v374, v376, v377, v378, v379, v380, v381, v382;
            *(v369 + 4) = v375;
            *(v369 + 12) = 2112;
            swift_getErrorValue();
            v383 = Error.prettyDescription.getter(v453, v454);
            *(v369 + 14) = v383;
            *v370 = v383;
            _os_log_impl(&dword_1CEFC7000, v367, v368, "[%s] Failed to patch the jobs table: %@", v369, 0x16u);
            sub_1CF19CAB0(v370);
            MEMORY[0x1D386CDC0](v370, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v371);
            MEMORY[0x1D386CDC0](v371, -1, -1);
            MEMORY[0x1D386CDC0](v369, -1, -1);
          }

          v449(v435, v426);
          v384 = *v443;
          v385 = v424;
          swift_beginAccess();
          v386 = *(v385 + 16);
          v387 = *(v385 + 24);
          v388 = v404;

          sub_1CF1EF95C(v451, v404, v384, v386, v387);

          v387, v389, v390, v391, v392, v393, v394, v395;
          v172 = v348;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v405 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v406 = sub_1CF9E6108();
      v407 = sub_1CF9E7298();
      if (os_log_type_enabled(v406, v407))
      {
        v408 = swift_slowAlloc();
        *v408 = 0;
        _os_log_impl(&dword_1CEFC7000, v406, v407, "Patching Tombstone table...", v408, 2u);
        MEMORY[0x1D386CDC0](v408, -1, -1);
      }

      v449(v433, v426);
      v409 = v424;
      swift_beginAccess();
      v410 = *(v409 + 24);
      *(v409 + 16) = 0xD000000000000013;
      *(v409 + 24) = 0x80000001CFA2F7F0;
      v410, v411, v412, v413, v414, v415, v416, v417;
      sub_1CF7D5920(sub_1CF1F646C, 0, a5);
      v420 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v421 = sub_1CF9E6108();
      v422 = sub_1CF9E7298();
      if (os_log_type_enabled(v421, v422))
      {
        v423 = swift_slowAlloc();
        *v423 = 0;
        _os_log_impl(&dword_1CEFC7000, v421, v422, "Database was updated successfully, commiting changes...", v423, 2u);
        MEMORY[0x1D386CDC0](v423, -1, -1);
      }

      v449(v431, v426);
      sub_1CF1F3174(v348);
      return 1;
    }

    v327 = fpfs_current_or_default_log();
    v328 = v436;
    sub_1CF9E6128();
    v329 = v424;

    v330 = v76;
    v331 = sub_1CF9E6108();
    v332 = sub_1CF9E72A8();
    a2 = v329;

    if (os_log_type_enabled(v331, v332))
    {
      v333 = swift_slowAlloc();
      v334 = swift_slowAlloc();
      v335 = swift_slowAlloc();
      v466 = v335;
      *v333 = 136315394;
      swift_beginAccess();
      v336 = *(a2 + 16);
      v337 = *(a2 + 24);

      v338 = sub_1CEFD0DF0(v336, v337, &v466);
      v337, v339, v340, v341, v342, v343, v344, v345;
      *(v333 + 4) = v338;
      *(v333 + 12) = 2112;
      swift_getErrorValue();
      v346 = Error.prettyDescription.getter(v455, v456);
      *(v333 + 14) = v346;
      *v334 = v346;
      _os_log_impl(&dword_1CEFC7000, v331, v332, "[%s] Failed to patch the fs_throttle table: %@", v333, 0x16u);
      sub_1CF19CAB0(v334);
      MEMORY[0x1D386CDC0](v334, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v335);
      MEMORY[0x1D386CDC0](v335, -1, -1);
      MEMORY[0x1D386CDC0](v333, -1, -1);

      v449(v436, v426);
    }

    else
    {

      v65(v328, v426);
    }

    v160 = *v443;
    goto LABEL_19;
  }

  v444 = 0;
  v445 = v267;
  v446 = &v470;
  do
  {
    v448 = objc_autoreleasePoolPush();
    v450 = [v267 longAtIndex_];
    v269 = [v267 longAtIndex_];
    if (!v269)
    {
      goto LABEL_74;
    }

    if (v269 == 0x8000000000000000)
    {
      v269 = 1;
      goto LABEL_74;
    }

    v270 = a2;
    if ((v269 & 0x8000000000000000) == 0)
    {
      v271 = v77[3];
      MEMORY[0x1EEE9AC00](v269);
      *(&v424 - 2) = v273;
      *(&v424 - 1) = v272;
      v465[0] = 0;
      v466 = 0;
      v467 = 1;
      v274 = swift_allocObject();
      *(v274 + 16) = &v466;
      *(v274 + 24) = sub_1CF1FD7DC;
      *(v274 + 32) = &v424 - 4;
      *(v274 + 40) = v465;
      *(v274 + 48) = 5;
      v275 = swift_allocObject();
      *(v275 + 16) = sub_1CF1FD7F8;
      *(v275 + 24) = v274;
      v472 = sub_1CF1FDB58;
      v473 = v275;
      aBlock = MEMORY[0x1E69E9820];
      v469 = 1107296256;
      v470 = sub_1CF033B10;
      v471 = &block_descriptor_177;
      v276 = _Block_copy(&aBlock);

      v277 = [v271 performWithFlags:5 action:v276];
      _Block_release(v276);
      LOBYTE(v276) = swift_isEscapingClosureAtFileLocation();

      if (v276)
      {
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
        goto LABEL_141;
      }

      v278 = v465[0];
      if (v465[0])
      {
        v279 = 0;
      }

      else
      {
        v279 = v277;
      }

      if (v279 != 1)
      {
        if (v465[0])
        {
LABEL_128:
          swift_willThrow();

          goto LABEL_129;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (v467)
      {
        goto LABEL_139;
      }

      a2 = v270;
      v280 = v466;

      v269 = v280;
      v267 = v445;
LABEL_74:
      MEMORY[0x1EEE9AC00](v269);
      *(&v424 - 4) = v289;
      *(&v424 - 24) = v290;
      *(&v424 - 2) = v450;
      v291 = swift_allocObject();
      *(v291 + 16) = sub_1CF1FD7FC;
      *(v291 + 24) = &v424 - 6;
      v472 = sub_1CEFE75B8;
      v473 = v291;
      aBlock = MEMORY[0x1E69E9820];
      v469 = 1107296256;
      v470 = sub_1CEFE7548;
      v471 = &block_descriptor_183;
      v292 = _Block_copy(&aBlock);

      aBlock = 0;
      v293 = [a5 executeSwift:v292 error:&aBlock];
      _Block_release(v292);
      v294 = aBlock;
      LOBYTE(v292) = swift_isEscapingClosureAtFileLocation();

      if (v292)
      {
        __break(1u);
      }

      if (!v293)
      {
        v278 = sub_1CF9E57F8();

        swift_willThrow();
        v234 = v438;
        goto LABEL_130;
      }

      if ([v267 isNullAtIndex_])
      {
        v16 = v426;
        v65 = v449;
        v77 = v442;
        goto LABEL_52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
      if ([v267 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      v270 = a2;
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_143;
      }

      sub_1CF9E5688();
      swift_allocObject();
      sub_1CF9E5678();
      v295 = [v445 dataAtIndex_];
      v296 = sub_1CF9E5B88();
      v298 = v297;

      sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
      sub_1CF9E5668();
      if (v76)
      {
        sub_1CEFE4714(v296, v298);

        v278 = v76;
        goto LABEL_129;
      }

      sub_1CEFE4714(v296, v298);

      type metadata accessor for VFSDirectoryLister(0);
      v299 = swift_dynamicCastClass();
      if (v299)
      {
        v300 = v299;
        v301 = swift_beginAccess();
        MEMORY[0x1EEE9AC00](v301);
        *(&v424 - 4) = v303;
        *(&v424 - 3) = v302;
        *(&v424 - 4) = v304;

        v305 = sub_1CF1E85B4(5, sub_1CF1FD80C, (&v424 - 6));
        a2 = v270;
        *(v300 + 24) = v305;
        *(v300 + 32) = v306;
        if ((v306 & 0x100000000) == 0)
        {

          v307 = __OFADD__(v444++, 1);
          if (v307)
          {
            goto LABEL_136;
          }

          goto LABEL_90;
        }

        MEMORY[0x1EEE9AC00](v305);
        v308 = v450;
        *(&v424 - 2) = v300;
        *(&v424 - 1) = v308;
        v309 = swift_allocObject();
        *(v309 + 16) = sub_1CF1FD82C;
        *(v309 + 24) = &v424 - 4;
        v472 = sub_1CEFE7610;
        v473 = v309;
        aBlock = MEMORY[0x1E69E9820];
        v469 = 1107296256;
        v470 = sub_1CEFE7548;
        v471 = &block_descriptor_190;
        v310 = _Block_copy(&aBlock);

        aBlock = 0;
        v311 = [a5 executeSwift:v310 error:&aBlock];
        _Block_release(v310);
        v312 = aBlock;
        LOBYTE(v310) = swift_isEscapingClosureAtFileLocation();

        if (v310)
        {
          goto LABEL_137;
        }

        if (!v311)
        {
          v278 = sub_1CF9E57F8();

          swift_willThrow();

          goto LABEL_129;
        }
      }

      else
      {
      }

      a2 = v270;
LABEL_90:
      v16 = v426;
      v65 = v449;
      v77 = v442;
      v267 = v445;
      goto LABEL_52;
    }

    if (-v269 >> 32)
    {
      sub_1CF9E51B8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF1FD858(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v418 = v427;
      v419 = v430;
      sub_1CF9E57D8();
      v278 = sub_1CF9E50D8();
      (*(v429 + 8))(v418, v419);
      swift_willThrow();
LABEL_129:
      a2 = v270;
      v234 = v438;
      v267 = v445;
LABEL_130:
      objc_autoreleasePoolPop(v448);

      v65 = v449;
      goto LABEL_44;
    }

    v441 = &v424;
    v281 = v77[3];
    MEMORY[0x1EEE9AC00](v269);
    *(&v424 - 2) = v77;
    *(&v424 - 2) = v282;
    v466 = 0;
    LODWORD(v465[0]) = 0;
    WORD2(v465[0]) = 256;
    v283 = swift_allocObject();
    *(v283 + 16) = v465;
    *(v283 + 24) = sub_1CF1FD834;
    *(v283 + 32) = &v424 - 4;
    *(v283 + 40) = &v466;
    *(v283 + 48) = 5;
    v284 = swift_allocObject();
    *(v284 + 16) = sub_1CF1FD854;
    *(v284 + 24) = v283;
    v472 = sub_1CF1FDB58;
    v473 = v284;
    aBlock = MEMORY[0x1E69E9820];
    v469 = 1107296256;
    v470 = sub_1CF033B10;
    v471 = &block_descriptor_200;
    v285 = _Block_copy(&aBlock);

    v286 = [v281 performWithFlags:5 action:v285];
    _Block_release(v285);
    LOBYTE(v285) = swift_isEscapingClosureAtFileLocation();

    if (v285)
    {
      goto LABEL_138;
    }

    v278 = v466;
    if (v466)
    {
      v287 = 0;
    }

    else
    {
      v287 = v286;
    }

    if (v287 != 1)
    {
      if (v466)
      {
        goto LABEL_128;
      }

LABEL_142:
      __break(1u);
LABEL_143:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v65 = v449;
    if ((v465[0] & 0x10000000000) != 0)
    {
      goto LABEL_140;
    }

    a2 = v270;
    v288 = LODWORD(v465[0]) | (BYTE4(v465[0]) << 32);

    v16 = v426;
    v267 = v445;
    if ((v288 & 0x100000000) == 0)
    {
      v269 = v288;
      goto LABEL_74;
    }

    v307 = __OFADD__(v444++, 1);
    v77 = v442;
    if (v307)
    {
      __break(1u);
      goto LABEL_94;
    }

LABEL_52:
    objc_autoreleasePoolPop(v448);
  }

  while (([v267 next] & 1) != 0);

  if (v444 <= 0)
  {
    goto LABEL_95;
  }

  v396 = v444;
  *v443 = v444;
  sub_1CF1FD788();
  v278 = swift_allocError();
  *v397 = v396;
  swift_willThrow();
  v234 = v438;
LABEL_44:
  v235 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v236 = v278;
  v237 = sub_1CF9E6108();
  v238 = sub_1CF9E72A8();

  if (os_log_type_enabled(v237, v238))
  {
    v239 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    v452 = swift_slowAlloc();
    aBlock = v452;
    *v239 = 136315394;
    swift_beginAccess();
    v241 = *(a2 + 16);
    v242 = *(a2 + 24);

    v243 = sub_1CEFD0DF0(v241, v242, &aBlock);
    v244 = v242;
    v245 = v447;
    v244, v246, v247, v248, v249, v250, v251, v252;
    *(v239 + 4) = v243;
    *(v239 + 12) = 2112;
    swift_getErrorValue();
    v253 = Error.prettyDescription.getter(v457, v458);
    *(v239 + 14) = v253;
    *v240 = v253;
    _os_log_impl(&dword_1CEFC7000, v237, v238, "[%s] Failed to patch the fs_item_jobs table: %@", v239, 0x16u);
    sub_1CF19CAB0(v240);
    MEMORY[0x1D386CDC0](v240, -1, -1);
    v254 = v452;
    __swift_destroy_boxed_opaque_existential_1(v452);
    MEMORY[0x1D386CDC0](v254, -1, -1);
    MEMORY[0x1D386CDC0](v239, -1, -1);

    v449(v438, v426);
    v255 = v451;
  }

  else
  {

    v65(v234, v426);
    v255 = v451;
    v245 = v447;
  }

  v256 = *v443;
  swift_beginAccess();
  v257 = *(a2 + 16);
  v258 = *(a2 + 24);
  v259 = v278;

  sub_1CF1EF95C(v255, v278, v256, v257, v258);

  v258, v260, v261, v262, v263, v264, v265, v266;
  v172 = v245;
LABEL_21:
  sub_1CF1F3174(v172);
  return 0;
}

uint64_t sub_1CF1F3174(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7298();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "Reenabling foreign keys...", v12, 2u);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  v13 = *(v3 + 8);
  v13(v8, v2);
  aBlock[4] = sub_1CF0BA6D0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_239;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v15 = [a1 executeSwift:v14 error:aBlock];
  _Block_release(v14);
  v16 = aBlock[0];
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  if (!v15)
  {
    v18 = sub_1CF9E57F8();

    swift_willThrow();
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v20 = v18;
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_getErrorValue();
      v25 = Error.prettyDescription.getter(v26[1], v26[2]);
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "Failed to enable foreign keys: %@", v23, 0xCu);
      sub_1CF19CAB0(v24);
      MEMORY[0x1D386CDC0](v24, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    else
    {
    }

    return (v13)(v5, v2);
  }

  return result;
}

void sub_1CF1F3510(void *a1, void *a2, uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v6 = a1[7];
  ObjectType = swift_getObjectType();
  v8 = sub_1CF95F3A0(&v67, ObjectType, &type metadata for SQLDatabaseReadWriteAccessor, v6, &off_1F4C17938);
  if (!v3)
  {
    v64 = v8;
    v69 = 0;
    v9 = *(a1 + qword_1EDEBBE30);
    v10 = FPVersion();
    if (v10)
    {
      v11 = v10;
      v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v63 = v12;

      v13 = *(**(a1[5] + 16) + 120);

      v15 = v13(v14);
      v17 = v16;

      v18 = *(v9 + 16);
      v19 = *(v9 + 24);
      v20 = FPOSVersion();
      if (v20)
      {
        v21 = v20;
        v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v65 = v18;
      v66 = v19;
      MEMORY[0x1EEE9AC00](v20);
      v54[2] = v22;
      v54[3] = v24;
      v55 = 720903;
      v25 = v63;
      v56 = v64;
      v57 = v62;
      v58 = v63;
      v59 = v15;
      v60 = v17;
      v61 = &v65;

      sub_1CF7D5920(sub_1CF1FD9BC, v54, a2);
      v25, v26, v27, v28, v29, v30, v31, v32;
      v17, v33, v34, v35, v36, v37, v38, v39;
      v24, v40, v41, v42, v43, v44, v45, v46;
      v66, v47, v48, v49, v50, v51, v52, v53;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CF1F3764()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA2FEF0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA2FF40);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA2FF70);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA2FF90);
  return 0;
}

void sub_1CF1F38E8(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v67 = a3;
  v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  v12 = [a1 longAtIndex_];
  v13 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  v14 = [a1 isNullAtIndex_];
  v15 = v14;
  if (v14)
  {
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v64 = v14;
    v16 = [a1 longAtIndex_];
    v17 = [a1 unsignedIntAtIndex_];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    MEMORY[0x1EEE9AC00](v17);
    v53 = a2;
    v54 = v16;
    LODWORD(v55) = v18;
    v19 = sub_1CF1E85B4(5, sub_1CF1FDAC8, &v51);
    if (v5)
    {
      return;
    }

    if ((v20 & 0x100000000) == 0)
    {
      v21 = v67;
      v22 = *v67 + 1;
      if (__OFADD__(*v67, 1))
      {
LABEL_53:
        __break(1u);
        return;
      }

LABEL_11:
      *v21 = v22;
      return;
    }

    v62 = v19;
    v63 = v20;
    v15 = v64;
    v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    v13 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  }

  if ([a1 v13[463]])
  {
    v67 = 0;
    v61 = 255;
    goto LABEL_5;
  }

  v23 = a2;
  v24 = a1;
  v25 = [v24 v11[478]];
  v26 = v25 + 0x7FFFFFFFFFFFFFFFLL;
  if ((v25 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v26 = v25;
  }

  if (v25 >= 1)
  {
    v27 = 0x7FFFFFFF - v25;
  }

  else
  {
    v27 = v26;
  }

  sub_1CEFE9AC4(v27, &v65);
  if (v5)
  {

    return;
  }

  if (v66)
  {
    a2 = v23;
    if (v66 == 1)
    {
      MEMORY[0x1EEE9AC00](v37);
      v55 = v23;
      v56 = v38;
      v67 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v53);
      v6 = 0;
      v61 = 1;
      v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    }

    else
    {
      v61 = v66;
      v67 = v65;
    }

    goto LABEL_41;
  }

  v64 = v7;
  MEMORY[0x1EEE9AC00](v37);
  v55 = v23;
  LODWORD(v56) = v41;
  v34 = sub_1CF1E8204(5, sub_1CF1FDB40, &v53);
  if ((v34 & 0x100000000) != 0)
  {
    v21 = v67;
    v22 = *v67 + 1;
    if (__OFADD__(*v67, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_11;
  }

  v61 = 0;
  v67 = v34;
  a2 = v23;
LABEL_41:
  v13 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
LABEL_5:
  v60 = [a1 v13[463]];
  if (v60)
  {
    v59 = 0;
    goto LABEL_22;
  }

  v64 = v15;
  v28 = [a1 v11[478]];
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  MEMORY[0x1EEE9AC00](v28);
  v55 = a2;
  v56 = v29;
  v30 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v53);
  if (v6)
  {
    return;
  }

  v59 = v30;
  v6 = 0;
  v15 = v64;
  v13 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
LABEL_22:
  v58 = [a1 v13[463]];
  if (v58)
  {
    v57 = 0;
    goto LABEL_27;
  }

  v64 = v15;
  v31 = [a1 v11[478]];
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  MEMORY[0x1EEE9AC00](v31);
  v55 = a2;
  v56 = v32;
  v33 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v53);
  if (v6)
  {
    return;
  }

  v57 = v33;
  v6 = 0;
  LOBYTE(v15) = v64;
  v13 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
LABEL_27:
  if ([a1 v13[463]])
  {
    v34 = 0;
LABEL_29:
    MEMORY[0x1EEE9AC00](v34);
    v44[2] = v62;
    v45 = v15;
    v46 = v63;
    v47 = v15;
    v48 = v67;
    v49 = v61;
    v50 = v59;
    v51 = v60;
    v52 = v57;
    LOBYTE(v53) = v58;
    v54 = v35;
    LOBYTE(v55) = v36;
    v56 = v12;
    sub_1CF7D5920(sub_1CF1FD8A0, v44, a4);
    return;
  }

  sub_1CEFE9AC4([a1 v11[478]], &v65);
  if (!v6)
  {
    v34 = v65;
    if (v66)
    {
      if (v66 == 1)
      {
        MEMORY[0x1EEE9AC00](v65);
        v55 = v40;
        v56 = v39;
        v34 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v53);
      }

      goto LABEL_29;
    }

    MEMORY[0x1EEE9AC00](v65);
    v55 = v42;
    LODWORD(v56) = v43;
    v34 = sub_1CF1E8204(5, sub_1CF1FDB40, &v53);
LABEL_47:
    if ((v34 & 0x100000000) != 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = v34;
    }

    goto LABEL_29;
  }
}

uint64_t sub_1CF1F3F3C(void *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, unsigned __int8 a6, uint64_t a7, char a8, uint64_t a9, char a10, unint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA2F810);
  v19 = 0;
  if ((a3 & 1) == 0)
  {
    v19 = sub_1CF9E8268();
  }

  v20 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA2F850);
  if ((a4 & 0x100000000) != 0)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_1CF9E8258();
  }

  v32 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  MEMORY[0x1D3868CC0](v33, v35);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0x2064695F73660A2CLL, 0xEA0000000000203DLL);
  if (a6 > 1u)
  {
    if (a6 == 255)
    {
      v43 = [a1 bindObjectParameter_];
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a6)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    a5 = (a5 != 0) << 63;
    goto LABEL_14;
  }

  a5 = -a5;
LABEL_14:
  v43 = [a1 bindLongParameter_];
LABEL_15:
  v44 = v43;
  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;

  MEMORY[0x1D3868CC0](v45, v47);
  v47, v48, v49, v50, v51, v52, v53, v54;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA2F870);
  if (a8)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_1CF9E8268();
  }

  v56 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v59 = v58;

  MEMORY[0x1D3868CC0](v57, v59);
  v59, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA2F8A0);
  if (a10)
  {
    v67 = 0;
  }

  else
  {
    v67 = sub_1CF9E8268();
  }

  v68 = a11;
  v69 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v72 = v71;

  MEMORY[0x1D3868CC0](v70, v72);
  v72, v73, v74, v75, v76, v77, v78, v79;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA2F8D0);
  if (a12 <= 1u)
  {
    if (!a12)
    {
      v68 = -a11;
LABEL_29:
      v80 = [a1 bindLongParameter_];
      goto LABEL_30;
    }

    if ((a11 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    v68 = (a11 != 0) << 63;
    goto LABEL_29;
  }

  if (a12 != 255)
  {
    goto LABEL_28;
  }

  v80 = [a1 bindObjectParameter_];
LABEL_30:
  v81 = v80;
  v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v84 = v83;

  MEMORY[0x1D3868CC0](v82, v84);
  v84, v85, v86, v87, v88, v89, v90, v91;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v92 = [a1 bindLongParameter_];
  v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v95 = v94;

  MEMORY[0x1D3868CC0](v93, v95);
  v95, v96, v97, v98, v99, v100, v101, v102;
  return v104;
}

uint64_t sub_1CF1F43D0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA2FD00);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA2FD40);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA2FD70);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x2045534C4520200ALL, 0xEF29444E450A6469);
  return 0;
}

void sub_1CF1F455C(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v47 = [a1 longAtIndex_];
  v10 = [a1 longAtIndex_];
  v11 = [a1 longAtIndex_];
  if (((v11 | v10) & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 > 0xFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v44 = a4;
  MEMORY[0x1EEE9AC00](v11);
  v37 = a2;
  v38 = v10;
  LODWORD(v39) = v12;
  v13 = sub_1CF1E85B4(5, sub_1CF1FDAC8, &v35);
  if (!v5)
  {
    if ((v14 & 0x100000000) == 0)
    {
      v15 = *a3 + 1;
      if (!__OFADD__(*a3, 1))
      {
LABEL_6:
        *a3 = v15;
        return;
      }

      goto LABEL_37;
    }

    v42 = v13;
    v43 = v14;
    v16 = a1;
    v17 = [v16 longAtIndex_];
    v18 = v17 + 0x7FFFFFFFFFFFFFFFLL;
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v18 = v17;
    }

    if (v17 >= 1)
    {
      v19 = 0x7FFFFFFF - v17;
    }

    else
    {
      v19 = v18;
    }

    sub_1CEFE9AC4(v19, &v45);

    v21 = v46;
    if (v46)
    {
      if (v46 == 1)
      {
        MEMORY[0x1EEE9AC00](v20);
        v39 = a2;
        v40 = v22;
        v23 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v37);
      }

      else
      {
        v23 = v45;
      }
    }

    else
    {
      v23 = &v41;
      MEMORY[0x1EEE9AC00](v20);
      v39 = a2;
      LODWORD(v40) = v24;
      v25 = sub_1CF1E8204(5, sub_1CF1FDB40, &v37);
      if ((v25 & 0x100000000) != 0)
      {
        v15 = *a3 + 1;
        if (!__OFADD__(*a3, 1))
        {
          goto LABEL_6;
        }

        __break(1u);
LABEL_30:
        if ((v25 & 0x100000000) == 0)
        {
          v41 = v25;
          goto LABEL_25;
        }

        v15 = *a3 + 1;
        if (!__OFADD__(*a3, 1))
        {
          goto LABEL_6;
        }

        __break(1u);
        goto LABEL_35;
      }

      v23 = v25;
    }

    sub_1CEFE9AC4([v16 longAtIndex_], &v45);
    LOBYTE(v10) = v46;
    if (v46)
    {
      if (v46 == 1)
      {
        MEMORY[0x1EEE9AC00](v26);
        v39 = a2;
        v40 = v27;
        v41 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v37);
      }

      else
      {
        v41 = v45;
      }

LABEL_25:
      v29 = [v16 longAtIndex_];
      if ((v29 & 0x8000000000000000) == 0)
      {
        MEMORY[0x1EEE9AC00](v29);
        v39 = a2;
        v40 = v30;
        v31 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v37);
        MEMORY[0x1EEE9AC00](v31);
        v33[2] = v42;
        v34 = v43;
        v35 = v23;
        v36 = v21;
        v37 = v41;
        LOBYTE(v38) = v10;
        v39 = v32;
        v40 = v47;
        sub_1CF7D5920(sub_1CF1FD914, v33, v44);
        return;
      }

      goto LABEL_38;
    }

    v41 = &v41;
    MEMORY[0x1EEE9AC00](v26);
    v39 = a2;
    LODWORD(v40) = v28;
    v25 = sub_1CF1E8204(5, sub_1CF1FDB40, &v37);
    goto LABEL_30;
  }
}

uint64_t sub_1CF1F49B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA2F8F0);
  v15 = sub_1CF9E8268();
  v16 = [a1 bindObjectParameter_];

  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2F920);
  v27 = [a1 bindUnsignedIntegerParameter_];
  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;

  MEMORY[0x1D3868CC0](v28, v30);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0x203D2064690A2CLL, 0xE700000000000000);
  if (!a5)
  {
LABEL_5:
    a4 = -a4;
    goto LABEL_7;
  }

  if (a5 == 1)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  a4 = (a4 != 0) << 63;
LABEL_7:
  v38 = [a1 bindLongParameter_];
  v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v41 = v40;

  MEMORY[0x1D3868CC0](v39, v41);
  v41, v42, v43, v44, v45, v46, v47, v48;
  MEMORY[0x1D3868CC0](0x746E657261700A2CLL, 0xEE00203D2064695FLL);
  if (!a7)
  {
LABEL_11:
    a6 = -a6;
    goto LABEL_13;
  }

  if (a7 != 1)
  {
    a6 = (a6 != 0) << 63;
    goto LABEL_13;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  v49 = [a1 bindLongParameter_];
  v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v51;

  MEMORY[0x1D3868CC0](v50, v52);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA2F940);
  v60 = sub_1CF9E8268();
  v61 = [a1 bindObjectParameter_];

  v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v64 = v63;

  MEMORY[0x1D3868CC0](v62, v64);
  v64, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v72 = [a1 bindLongParameter_];
  v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v75 = v74;

  MEMORY[0x1D3868CC0](v73, v75);
  v75, v76, v77, v78, v79, v80, v81, v82;
  return 0;
}

uint64_t sub_1CF1F4D58(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA2F9A0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D206469776FLL);
  v19 = [a1 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return v31;
}

uint64_t sub_1CF1F4EC0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA2F960);
  v6 = sub_1CF1DF8C0(a2);
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v16 = [a1 bindLongParameter_];
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return 0;
}

void sub_1CF1F4FE4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v39 = a2;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 longAtIndex_];
  sub_1CEFE9AC4([a1 longAtIndex_], &v37);
  if (!v4)
  {
    v32 = v8;
    v33 = v9;
    v34 = v13;
    v35 = a3;
    v36 = a4;
    v14 = v37;
    v15 = v38;
    if (v38)
    {
      if (v38 == 1)
      {
        MEMORY[0x1EEE9AC00](v37);
        *(&v31 - 2) = v17;
        *(&v31 - 1) = v16;
        v14 = sub_1CF1E83E0(5, sub_1CF1FDB28, (&v31 - 4));
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v37);
      *(&v31 - 2) = v18;
      *(&v31 - 2) = v19;
      v14 = sub_1CF1E8204(5, sub_1CF1FDB40, (&v31 - 4));
      if ((v14 & 0x100000000) != 0)
      {
        v25 = fpfs_current_or_default_log();
        v26 = v12;
        sub_1CF9E6128();
        v27 = sub_1CF9E6108();
        v28 = sub_1CF9E7298();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1CEFC7000, v27, v28, "item not found in fs throttle, removing row", v29, 2u);
          MEMORY[0x1D386CDC0](v29, -1, -1);
        }

        v30 = (*(v33 + 8))(v26, v32);
        MEMORY[0x1EEE9AC00](v30);
        v21 = &v31 - 4;
        v20 = v35;
        *(&v31 - 2) = v34;
        v24 = sub_1CF1FD974;
        goto LABEL_8;
      }

      v14 = v14;
    }

    MEMORY[0x1EEE9AC00](v14);
    v21 = &v31 - 6;
    *(&v31 - 4) = v22;
    *(&v31 - 24) = v15;
    *(&v31 - 2) = v23;
    v24 = sub_1CF1FD964;
LABEL_8:
    sub_1CF7D5920(v24, v21, v20);
  }
}

unint64_t sub_1CF1F5308(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  v11 = [a1 bindLongParameter_];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  return 0xD000000000000026;
}

uint64_t sub_1CF1F53C0(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA2FA00);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v19 = [a1 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return v31;
}

void sub_1CF1F5544(void *a1, uint64_t a2, uint64_t *a3, void *a4, int a5)
{
  v6 = v5;
  v77 = a5;
  v11 = [a1 longAtIndex_];
  v12 = [a1 longAtIndex_];
  v13 = v12;
  if (v12 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1CF043D7C([a1 longAtIndex_]);
  if (v13 > 1 || ((((v16 > 0x16u) | (0x3FFFF8u >> v16)) ^ v15) & 1) == 0)
  {
    v25 = v16 != 89 && v13 <= 1 && v16 == 20;
    if (v25 && (v15 & 1) == 0)
    {
      v30 = a1;
      v31 = [v30 longAtIndex_];
      v32 = v31 + 0x7FFFFFFFFFFFFFFFLL;
      if ((v31 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v32 = v31;
      }

      if (v31 >= 1)
      {
        v33 = 0x7FFFFFFF - v31;
      }

      else
      {
        v33 = v32;
      }

      sub_1CEFE9AC4(v33, &v74);
      if (v5)
      {

        return;
      }

      v76 = v75;
      if (v75)
      {
        if (v75 == 1)
        {
          v73 = &v72;
          MEMORY[0x1EEE9AC00](v46);
          v70 = a2;
          v71 = v47;
          v72 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v68);
        }

        else
        {
          v72 = v74;
        }
      }

      else
      {
        v73 = &v72;
        MEMORY[0x1EEE9AC00](v46);
        v70 = a2;
        LODWORD(v71) = v49;
        v50 = sub_1CF1E8204(5, sub_1CF1FDB40, &v68);
        if ((v50 & 0x100000000) != 0)
        {
          v56 = *a3 + 1;
          if (!__OFADD__(*a3, 1))
          {
            goto LABEL_85;
          }

          goto LABEL_90;
        }

        v72 = v50;
      }

      v51 = v30;
      v52 = [v51 longAtIndex_];
      v53 = v52 + 0x7FFFFFFFFFFFFFFFLL;
      if ((v52 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v53 = v52;
      }

      if (v52 >= 1)
      {
        v54 = 0x7FFFFFFF - v52;
      }

      else
      {
        v54 = v53;
      }

      sub_1CEFE9AC4(v54, &v74);

      v21 = v74;
      v22 = v75;
      if (v75)
      {
        if (v75 == 1)
        {
          MEMORY[0x1EEE9AC00](v74);
          v70 = a2;
          v71 = v55;
          v21 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v68);
        }

        goto LABEL_83;
      }

LABEL_81:
      MEMORY[0x1EEE9AC00](v21);
      v70 = a2;
      LODWORD(v71) = v62;
      v21 = sub_1CF1E8204(5, sub_1CF1FDB40, &v68);
      if ((v21 & 0x100000000) == 0)
      {
        v21 = v21;
LABEL_83:
        MEMORY[0x1EEE9AC00](v21);
        v58 = &v65;
        v66 = v72;
        v67 = v76;
        v68 = v63;
        v69 = v22;
        v70 = v64;
        v61 = sub_1CF1FD994;
        goto LABEL_75;
      }

      v56 = *a3 + 1;
      if (!__OFADD__(*a3, 1))
      {
        goto LABEL_85;
      }

      __break(1u);
LABEL_90:
      __break(1u);
      return;
    }

    if ([a1 isNullAtIndex_])
    {
LABEL_26:
      if (([a1 isNullAtIndex_] & 1) == 0)
      {
        sub_1CF1DFFC4(5);
        if (!v6)
        {
          type metadata accessor for VFSStagedContext();
          v34 = swift_dynamicCastClass();
          if (v34)
          {
            v35 = v34;
            MEMORY[0x1EEE9AC00](v34);
            v70 = a2;
            v71 = v36;

            v37 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v68);
            *(v35 + 16) = v37;
            MEMORY[0x1EEE9AC00](v37);
            v70 = a2;
            LODWORD(v71) = v38;
            v39 = sub_1CF1E8204(5, sub_1CF1FDB40, &v68);
            if ((v39 & 0x100000000) == 0)
            {
              *(v35 + 32) = v39;
            }

            MEMORY[0x1EEE9AC00](v39);
            v70 = a2;
            v71 = v40;
            v41 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v68);
            *(v35 + 24) = v41;
            MEMORY[0x1EEE9AC00](v41);
            v70 = v35;
            v71 = v11;
            sub_1CF7D5920(sub_1CF1FD98C, &v68, a4);
          }

          else
          {
          }
        }
      }

      return;
    }

    v26 = a1;
    v27 = [v26 longAtIndex_];
    v28 = v27 + 0x7FFFFFFFFFFFFFFFLL;
    if ((v27 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v28 = v27;
    }

    if (v27 >= 1)
    {
      v29 = 0x7FFFFFFF - v27;
    }

    else
    {
      v29 = v28;
    }

    sub_1CEFE9AC4(v29, &v74);
    if (v5)
    {

      return;
    }

    v21 = v74;
    v22 = v75;
    if (v75)
    {
      if (v75 == 1)
      {
        MEMORY[0x1EEE9AC00](v74);
        v70 = a2;
        v71 = v42;
        v21 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v68);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v74);
      v70 = a2;
      LODWORD(v71) = v48;
      v21 = sub_1CF1E8204(5, sub_1CF1FDB40, &v68);
      if ((v21 & 0x100000000) != 0)
      {
        v56 = *a3 + 1;
        if (!__OFADD__(*a3, 1))
        {
          goto LABEL_85;
        }

        __break(1u);
        goto LABEL_81;
      }

      v21 = v21;
    }

LABEL_74:
    MEMORY[0x1EEE9AC00](v21);
    v58 = &v66;
    v68 = v59;
    v69 = v22;
    v70 = v60;
    v61 = sub_1CF1FD97C;
LABEL_75:
    sub_1CF7D5920(v61, v58, v57);
    v6 = 0;
    goto LABEL_26;
  }

  v17 = a1;
  v18 = [v17 longAtIndex_];
  v19 = v18 + 0x7FFFFFFFFFFFFFFFLL;
  if ((v18 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v19 = v18;
  }

  if (v18 >= 1)
  {
    v20 = 0x7FFFFFFF - v18;
  }

  else
  {
    v20 = v19;
  }

  sub_1CEFE9AC4(v20, &v74);

  if (!v5)
  {
    v21 = v74;
    v22 = v75;
    if (v75)
    {
      if (v75 == 1)
      {
        MEMORY[0x1EEE9AC00](v74);
        v70 = a2;
        v71 = v23;
        v21 = sub_1CF1E83E0(5, sub_1CF1FDB28, &v68);
      }

      goto LABEL_53;
    }

    MEMORY[0x1EEE9AC00](v74);
    v70 = a2;
    LODWORD(v71) = v43;
    v21 = sub_1CF1E8204(5, sub_1CF1FDB40, &v68);
    if ((v21 & 0x100000000) == 0)
    {
      v21 = v21;
LABEL_53:
      MEMORY[0x1EEE9AC00](v21);
      v68 = v44;
      v69 = v22;
      v70 = v11;
      sub_1CF7D5920(sub_1CF1FD9AC, &v66, v45);
      v6 = 0;
      goto LABEL_26;
    }

    v56 = *a3 + 1;
    if (!__OFADD__(*a3, 1))
    {
LABEL_85:
      *a3 = v56;
      return;
    }

    __break(1u);
    goto LABEL_74;
  }
}

uint64_t sub_1CF1F5E84(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA2FA30);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v19 = [a1 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return v31;
}

uint64_t sub_1CF1F5FEC(void *a1, unint64_t a2, char a3, unint64_t a4, char a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA2FA30);
  if (!a3)
  {
LABEL_5:
    a2 = -a2;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  a2 = (a2 != 0) << 63;
LABEL_7:
  v12 = [a1 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA2FA60);
  if (!a5)
  {
LABEL_11:
    a4 = -a4;
    goto LABEL_13;
  }

  if (a5 != 1)
  {
    a4 = (a4 != 0) << 63;
    goto LABEL_13;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  v23 = [a1 bindLongParameter_];
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  MEMORY[0x1D3868CC0](v24, v26);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v34 = [a1 bindLongParameter_];
  v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v37 = v36;

  MEMORY[0x1D3868CC0](v35, v37);
  v37, v38, v39, v40, v41, v42, v43, v44;
  return v46;
}

uint64_t sub_1CF1F61FC(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA2FAC0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v19 = [a1 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return v31;
}

uint64_t sub_1CF1F6364(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA2FA80);
  v6 = sub_1CF1DF8FC(a2);
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x722045524548570ALL, 0xEF203D204449776FLL);
  v16 = [a1 bindLongParameter_];
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return 0;
}

uint64_t sub_1CF1F649C()
{
  v0 = type metadata accessor for VFSLookupItemContinuation(0);
  sub_1CF387D24(v0);
  v1 = type metadata accessor for VFSDirectoryLister(0);
  sub_1CF387D24(v1);
  v2 = type metadata accessor for VFSStagedContext();
  sub_1CF387D24(v2);
  v3 = type metadata accessor for VFSTrackingContinuation(0);

  return sub_1CF387D24(v3);
}

uint64_t sub_1CF1F64EC()
{
  sub_1CF2CFFAC();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF1F651C()
{
  v0 = type metadata accessor for FileProviderPageToken();

  return sub_1CF387D24(v0);
}

id sub_1CF1F6548@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6967280];
  *a1 = *MEMORY[0x1E6967280];
  return v1;
}

uint64_t sub_1CF1F655C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F65BC(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE638, &qword_1CF9FE470);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = &v14[1];
  v17 = &a4[1];
  if (v9)
  {
    v18 = 24 * v12;
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, v18);
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F66D8(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE630, &qword_1CF9FE468);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F67E4(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE628, &qword_1CF9FE460);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  v19 = 16 * v12;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[v19])
    {
      memmove(v17, v18, v19);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v17, v18, v19);
  }

  a4, v18, v19, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F696C(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = &v14[1];
  v17 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F6AC8(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F6BD8(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F6CD4(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 8 * v12))
    {
      memmove(&v14[1], &a4[1], 8 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F6E08(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6C0, &qword_1CF9FE540);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  if (v9)
  {
    v19 = 32 * v12;
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, v19);
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, v19, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F6F14(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE820, &unk_1CF9FE6F0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 6);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= &a4[2 * v12 + 1])
    {
      memmove(&v14[1], &a4[1], v12 << 6);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7094(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE808, &qword_1CF9FE6D0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7198(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7F8, &unk_1CF9FE6C0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 24 * v12))
    {
      memmove(&v14[1], &a4[1], 24 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE800, &qword_1CFA12A50);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F72E0(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 8 * v12))
    {
      memmove(&v14[1], &a4[1], 8 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F742C(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *a4->tester;
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->tree;
  if (v13 <= v14)
  {
    v15 = *a4->tree;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    *v16->tree = v14;
    *v16->tester = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || &v16[1] >= (&a4[1] + 40 * v14))
    {
      memmove(&v16[1], &a4[1], 40 * v14);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7588(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7D0, &qword_1CF9FE6A0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = &v14[1];
  v17 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, 24 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F76A8(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE860, &qword_1CF9FE750);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 40 * v12))
    {
      memmove(&v14[1], &a4[1], 40 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE868, &qword_1CF9FE758);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F77F0(_TtC18FileProviderDaemon8FSTester *result, const char *a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    v17 = 16 * v12;
    if (v14 != a4 || &v14[1] >= (&a4[1] + 16 * v12))
    {
      memmove(&v14[1], &a4[1], v17);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
    swift_arrayInitWithCopy();
  }

  a4, a2, v17, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F796C(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6A8, &qword_1CF9FE518);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 96);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= &a4[3 * v12 + 1])
    {
      memmove(&v14[1], &a4[1], 96 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B0, &unk_1CF9FE520);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7AB4(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F20, &unk_1CFA18130);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 96);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= &a4[3 * v12 + 1])
    {
      memmove(&v14[1], &a4[1], 96 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B8, &unk_1CF9FE530);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7C44(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE840, &qword_1CF9FE728);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &a4[1];
  if (v9)
  {
    if (v14 < a4 || &v14[1] >= &v17[8 * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7D74(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *a4->tester;
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->tree;
  if (v13 <= v14)
  {
    v15 = *a4->tree;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    *v16->tree = v14;
    *v16->tester = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || &v16[1] >= (&a4[1] + 16 * v14))
    {
      memmove(&v16[1], &a4[1], 16 * v14);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7EA8(_TtC18FileProviderDaemon8FSTester *result, const char *a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6A0, &qword_1CF9FE4F8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    v16 = 24 * v12;
    if (v14 != a4 || &v14[1] >= (&a4[1] + 24 * v12))
    {
      memmove(&v14[1], &a4[1], v16);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
    swift_arrayInitWithCopy();
  }

  a4, a2, v16, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F7FEC(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE848, &qword_1CF9FE730);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= &a4[v12 + 1])
    {
      memmove(&v14[1], &a4[1], 32 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE850, &unk_1CF9FE738);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F81D4(_TtC18FileProviderDaemon8FSTester *result, const char *a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *a4->tester;
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->tree;
  if (v13 <= v14)
  {
    v15 = *a4->tree;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    *v16->tree = v14;
    *v16->tester = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    v18 = 48 * v14;
    if (v16 != a4 || &v16[1] >= (&a4[1] + 48 * v14))
    {
      memmove(&v16[1], &a4[1], v18);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, v18, a4, a5, a6, a7, a8;
  return v16;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F8318(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE700, &qword_1CF9FE598);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = &v14[1];
  v17 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, 24 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v16, v17, 24 * v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F847C(_TtC18FileProviderDaemon8FSTester *result, const char *a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *a4->tester;
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->tree;
  if (v13 <= v14)
  {
    v15 = *a4->tree;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    *v16->tree = v14;
    *v16->tester = 2 * ((v17 - 32) / 120);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    v18 = 120 * v14;
    if (v16 != a4 || &v16[1] >= (&a4[1] + 120 * v14))
    {
      memmove(&v16[1], &a4[1], v18);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, v18, a4, a5, a6, a7, a8;
  return v16;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F85E8(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *a4->tester;
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->tree;
  if (v13 <= v14)
  {
    v15 = *a4->tree;
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  *v19->tree = v14;
  *v19->tester = 2 * ((result - v18) / v17);
LABEL_19:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v27 = *(v22 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = a4 + v28;
  if (v11)
  {
    if (v19 < a4 || v19 + v28 >= &v29[*(v27 + 72) * v14])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v29, v21, v22, v23, v24, v25, v26;
  return v19;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F87F4(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *a4->tester;
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->tree;
  if (v13 <= v14)
  {
    v15 = *a4->tree;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    *v16->tree = v14;
    *v16->tester = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || &v16[1] >= (&a4[1] + 8 * v14))
    {
      memmove(&v16[1], &a4[1], 8 * v14);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1F8928(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04A0, &unk_1CF9FE5B0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 40 * v12))
    {
      memmove(&v14[1], &a4[1], 40 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE718, &unk_1CFA058A0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1CF1F8B24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1CF1F8C34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *sub_1CF1F8CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_1CF1F8D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1CF1F8E14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1CF1F8EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1CF1F8F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1CF1F9064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_1CF1F9100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 3) + (v9 >> 63));
  return result;
}

uint64_t sub_1CF1F91C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF1F91F4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF1F9248(uint64_t a1)
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF1F9400(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1CF9E7818();
LABEL_9:
  result = sub_1CF9E79B8();
  *v2 = result;
  return result;
}

int *sub_1CF1F94A0(int *result, int *a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_11:
    v6 = a3;
LABEL_13:
    *result = a4;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4)
    {
      v4 = -a4 & a4;
      v5 = v4 ^ a4;
      *a2 = v4;
      if (a3 != 1)
      {
        v6 = 1;
        while (1)
        {
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (a4 == v4)
          {
            a4 = 0;
            goto LABEL_13;
          }

          v8 = v5;
          v4 = v5 & -v5;
          v5 ^= v4;
          a2[v6++] = v4;
          a4 = v8;
          if (v7 == a3)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_10:
      a4 = v5;
      goto LABEL_11;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1CF1F952C(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_11:
    v6 = a3;
LABEL_13:
    *result = a4;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4)
    {
      v4 = -a4 & a4;
      v5 = v4 ^ a4;
      *a2 = v4;
      if (a3 != 1)
      {
        v6 = 1;
        while (1)
        {
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (a4 == v4)
          {
            a4 = 0;
            goto LABEL_13;
          }

          v8 = v5;
          v4 = v5 & -v5;
          v5 ^= v4;
          a2[v6++] = v4;
          a4 = v8;
          if (v7 == a3)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_10:
      a4 = v5;
      goto LABEL_11;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF1F9648(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v8 = a4;
  v18 = a4;
  if (!a2)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_19:
    *result = v8;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = result;
    a5(0);
    sub_1CF1FD858(a6, a7, a8);
    v14 = 0;
    while (1)
    {
      if (sub_1CF9E7798())
      {
        v8 = v18;
        v9 = v14;
        goto LABEL_18;
      }

      v15 = __clz(__rbit64(v8));
      v16 = v15 >= 0x40 ? 0 : 1 << v15;
      result = sub_1CF9E7798();
      if ((result & 1) == 0)
      {
        v8 &= ~v16;
        v18 = v8;
      }

      *(a2 + 8 * v14) = v16;
      if (v9 - 1 == v14)
      {
        break;
      }

      if (__OFADD__(++v14, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v8 = v18;
LABEL_18:
    result = v17;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_1CF1F97A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      LOBYTE(v18) = *(v18 + 26);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 26) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1F9918(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1F9A6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1CF1A91AC(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1CF054EA0(v20, v21);
      sub_1CF054EA0(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1CF1F9BD8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1CF1F9D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v36 = a4;
  v19 = *(a4 + 64);
  v18 = a4 + 64;
  v17 = v19;
  v20 = -1 << *(v18 - 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v36;
    a1[1] = v18;
    a1[2] = ~v20;
    a1[3] = v23;
    a1[4] = v22;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a3;
    v23 = 0;
    v32 = v20;
    v24 = (63 - v20) >> 6;
    v25 = 1;
    while (v22)
    {
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      a1 = *(v35 + 72);
      sub_1CEFE4F24(*(v36 + 56) + a1 * (v28 | (v23 << 6)), v13, a6);
      sub_1CEFE4BF8(v13, v16, a6);
      sub_1CEFE4BF8(v16, a2, a6);
      if (v25 == v34)
      {
        a1 = v33;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v26 = v23;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v27 >= v24)
      {
        break;
      }

      v22 = *(v18 + 8 * v27);
      ++v26;
      if (v22)
      {
        v23 = v27;
        goto LABEL_14;
      }
    }

    v22 = 0;
    if (v24 <= v23 + 1)
    {
      v30 = v23 + 1;
    }

    else
    {
      v30 = v24;
    }

    v23 = v30 - 1;
    a1 = v33;
LABEL_23:
    v20 = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1CF1F9FB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      if (v14 == v10)
      {
        sub_1CF1FB2C0(v19, v20, v21, v22);
        goto LABEL_24;
      }

      v11 += 32;
      sub_1CF1FB2C0(v19, v20, v21, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FA120(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 48) + 48 * (v14 | (v9 << 6));
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      v18 = *(v15 + 16);
      *a2 = *v15;
      *(a2 + 16) = v18;
      *(a2 + 32) = v16;
      *(a2 + 40) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 48;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1CF1FA234(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FA388(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {
        v24 = v19;
        goto LABEL_24;
      }

      v11 += 24;
      v21 = v19;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FA4E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOBYTE(v14) = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1CF1FA5F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1CEFF6FC0(*(a4 + 56) + ((v12 << 10) | (16 * v17)), v20);
      sub_1CEFF701C(v20, v21);
      sub_1CEFF701C(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 16;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1CF1FA760(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[6];
      v25 = *(v31 + 72);
      sub_1CF1FD5C8(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_1CF1FD638(v10, v13);
      sub_1CF1FD638(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1CF1FA994(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      v9 &= v9 - 1;
      v19 = *(a4 + 56) + 32 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      LOBYTE(v19) = *(v19 + 24);
      *v11 = v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 32) = v19;
      if (v14 == v10)
      {
        v26 = v18;
        goto LABEL_24;
      }

      v11 += 40;
      v23 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FAB04(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = *(a4 + 48) + 16 * v15;
      v17 = *v16;
      LOBYTE(v16) = *(v16 + 8);
      v18 = *(a4 + 56) + 32 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = v19;
      *(a2 + 24) = v20;
      *(a2 + 32) = v21;
      *(a2 + 40) = v18;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 48;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v23 = v9 + 1;
    }

    else
    {
      v23 = (63 - v6) >> 6;
    }

    v9 = v23 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1CF1FAC30(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1CF1FAD8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE830, &qword_1EC4BE828, &qword_1CF9FE700, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE828, &qword_1CF9FE700);
            v9 = sub_1CF8E36EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1FAF40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE7C0, &qword_1EC4BE7B8, &qword_1CF9FE680, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7B8, &qword_1CF9FE680);
            v9 = sub_1CF8E36EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1FB0F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE680, &qword_1EC4BE678, &qword_1CF9FE4D8, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE678, &qword_1CF9FE4D8);
            v9 = sub_1CF8E36EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CF1FB2C0(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v4 = a2;
        v6 = result;
        a2 = v4;
        result = a3;
      }

      else if (a4 != 2)
      {
        return result;
      }

      v8 = result;
      v7 = a2;
      result = v8;
    }
  }

  else if (a4 - 3 >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF1FB354()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000073, 0x80000001CFA2F5D0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA2F650);
  return 0;
}

void sub_1CF1FB410(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA2F6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E7B58();
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF1FB4D4(int a1, uint64_t a2, uint64_t a3)
{
  v222 = a3;
  v203 = a1;
  v226[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v219 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v204 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v205 = &v197 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v209 = &v197 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v211 = &v197 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v208 = &v197 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v216 = &v197 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v215 = &v197 - v17;
  v214 = sub_1CF9E6938();
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v212 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E5A58();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v206 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v207 = &v197 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v210 = &v197 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v220 = &v197 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v197 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v197 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v197 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v197 - v39;
  v41 = OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL;
  v223 = v20;
  v42 = *(v20 + 16);
  v42(&v197 - v39, a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL, v19, v38);
  v221 = a2;
  v218 = v41;
  (v42)(v36, a2 + v41, v19);
  v43 = objc_allocWithZone(type metadata accessor for FPFSSQLBackupEngine(0));
  v44 = FPFSSQLBackupEngine.init(userURL:outputUserURL:)(v40, v36);
  if (v44)
  {
    v217 = v4;
    v45 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL;
    v46 = v44;
    (v42)(v33, &v44[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v19);
    (v42)(v30, &v46[v45], v19);
    type metadata accessor for SQLBackupManifest(0);
    swift_allocObject();
    v47 = sub_1CF1BA200(v30);
    v200 = v33;
    v202 = v47;

    v198 = v46;
    sub_1CF9E5988();
    v49 = v220;
    sub_1CF9E5958();
    v50 = *(v223 + 8);
    v201 = v19;
    v223 += 8;
    v199 = v50;
    v50(v40, v19);
    v51 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v52 = sub_1CF9E5928();
    v224 = 0;
    v53 = [v51 removeItemAtURL:v52 error:&v224];

    if (v53)
    {
      v54 = v224;
    }

    else
    {
      v55 = v224;
      v56 = sub_1CF9E57F8();

      swift_willThrow();
    }

    v57 = v221;
    v224 = 0;
    v225 = 0xE000000000000000;
    v58 = *(v221 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_backupBuild + 8);
    if (v58)
    {
      v59 = *(v221 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_backupBuild);
      v226[0] = 0;
      v226[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v226[1], v60, v61, v62, v63, v64, v65, v66;
      strcpy(v226, "backup build: ");
      HIBYTE(v226[1]) = -18;
      MEMORY[0x1D3868CC0](v59, v58);
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      v67 = v226[1];
      MEMORY[0x1D3868CC0](v226[0], v226[1]);
      v67, v68, v69, v70, v71, v72, v73, v74;
    }

    v75 = *(v57 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreType + 8);
    if (v75)
    {
      v76 = *(v57 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreType);
      v226[0] = 0;
      v226[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v226[1], v77, v78, v79, v80, v81, v82, v83;
      strcpy(v226, "restore type: ");
      HIBYTE(v226[1]) = -18;
      MEMORY[0x1D3868CC0](v76, v75);
      v84 = v226[1];
      MEMORY[0x1D3868CC0](v226[0], v226[1]);
      v84, v85, v86, v87, v88, v89, v90, v91;
    }

    v197 = v20 + 16;
    v92 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    sub_1CF9E5A18();
    v94 = v93;
    v95 = sub_1CF9E6888();
    v94, v96, v97, v98, v99, v100, v101, v102;
    v103 = v225;
    v104 = v212;
    sub_1CF9E6918();
    v105 = sub_1CF9E68C8();
    v107 = v106;
    v103, v106, v108, v109, v110, v111, v112, v113;
    (*(v213 + 8))(v104, v214);
    if (v107 >> 60 == 15)
    {
      v114 = 0;
    }

    else
    {
      v114 = sub_1CF9E5B48();
      sub_1CEFE48D8(v105, v107);
    }

    v115 = v219;
    v116 = [v92 createFileAtPath:v95 contents:v114 attributes:0];

    v117 = v221;
    if ((v116 & 1) == 0)
    {
      v118 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v119 = sub_1CF9E6108();
      v120 = sub_1CF9E72A8();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 67109120;
        *(v121 + 4) = MEMORY[0x1D38683F0]();
        _os_log_impl(&dword_1CEFC7000, v119, v120, "Failed to save restore timestamp on disk: %d", v121, 8u);
        MEMORY[0x1D386CDC0](v121, -1, -1);
      }

      (*(v115 + 8))(v215, v217);
    }

    v122 = sub_1CF9E5A18();
    v123 = (v117 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath);
    v124 = *(v117 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath + 8);
    *v123 = v122;
    v123[1] = v125;
    v124, v125, v126, v127, v128, v129, v130, v131;
    v132 = sub_1CF9E5A18();
    v134 = v133;
    v135 = fpfs_current_or_default_log();
    v136 = v216;
    sub_1CF9E6128();

    v137 = sub_1CF9E6108();
    v138 = sub_1CF9E72C8();
    v134, v139, v140, v141, v142, v143, v144, v145;
    if (os_log_type_enabled(v137, v138))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v226[0] = v147;
      *v146 = 136315138;
      *(v146 + 4) = sub_1CEFD0DF0(v132, v134, v226);
      _os_log_impl(&dword_1CEFC7000, v137, v138, "Populating new columns with base path: %s", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v147);
      v148 = v147;
      v49 = v220;
      MEMORY[0x1D386CDC0](v148, -1, -1);
      MEMORY[0x1D386CDC0](v146, -1, -1);
    }

    v216 = *(v115 + 8);
    v149 = (v216)(v136, v217);
    v150 = v202;
    MEMORY[0x1EEE9AC00](v149);
    *(&v197 - 4) = v150;
    *(&v197 - 3) = v132;
    *(&v197 - 2) = v134;
    sub_1CF1E8034(21, sub_1CF1FDAB0, (&v197 - 6));
    v134, v151, v152, v153, v154, v155, v156, v157;

    v158 = fpfs_current_or_default_log();
    v159 = v208;
    sub_1CF9E6128();
    v160 = sub_1CF9E6108();
    v161 = sub_1CF9E72C8();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_1CEFC7000, v160, v161, "Creating indexes", v162, 2u);
      MEMORY[0x1D386CDC0](v162, -1, -1);
    }

    v163 = v217;
    (v216)(v159, v217);
    v164 = v202;
    sub_1CF1E8034(21, sub_1CF1FDA98, v202);
    v165 = v201;
    sub_1CF1EB170(*(v221 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_fpDatabaseURLs), v164);
    v173 = v166;
    if (v167)
    {
      v174 = v167;
      v175 = sub_1CF9E57E8();
      v176 = v199;
      if (v173)
      {
        v177 = sub_1CF9E6888();
      }

      else
      {
        v177 = 0;
      }

      (*(v222 + 16))(v222, 0, v175, v177);

      v173, v179, v180, v181, v182, v183, v184, v185;

      v186 = v49;
      v187 = v165;
    }

    else
    {
      v166, v166, 0, v168, v169, v170, v171, v172;
      v178 = v206;
      sub_1CF9E5958();
      sub_1CF33988C(v178);
      v176 = v199;
      v199(v178, v165);
      sub_1CF1BC728();
      if (v203)
      {
        sub_1CF33BA94();
      }

      v188 = fpfs_current_or_default_log();
      v189 = v204;
      sub_1CF9E6128();
      v190 = sub_1CF9E6108();
      v191 = sub_1CF9E72C8();
      v192 = os_log_type_enabled(v190, v191);
      v193 = v222;
      if (v192)
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        _os_log_impl(&dword_1CEFC7000, v190, v191, "Calling completion handler with success.", v194, 2u);
        v195 = v194;
        v163 = v217;
        MEMORY[0x1D386CDC0](v195, -1, -1);
      }

      (v216)(v189, v163);
      v196 = sub_1CF9E6888();
      (*(v193 + 16))(v193, 1, 0, v196);

      v186 = v49;
      v187 = v165;
    }

    v176(v186, v187);
    v176(v200, v165);
  }

  else
  {
    v48 = sub_1CF9E6888();
    (*(v222 + 16))(v222, 1, 0, v48);
  }
}

void sub_1CF1FCADC(void *a1, uint64_t a2)
{
  v65 = a2;
  v86[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v83 = sub_1CF9E6118();
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  memset(&v85, 0, sizeof(v85));
  v21 = a1;
  sub_1CF515DE8(v21, &v85);
  v69 = v19;
  v73 = v16;
  v77 = v13;
  v75 = v11;
  v23 = *&v21[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_fpDatabaseURLs];
  v24 = *(v23 + 16);
  if (v24)
  {
    v76 = 0;
    st_dev = v85.st_dev;
    v26 = *(v4 + 16);
    v25 = v4 + 16;
    v78 = v26;
    v27 = v23 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v70 = *(v25 + 56);
    v82 = (v25 - 8);
    v81 = (v84 + 8);
    *&v22 = 136315138;
    v67 = v22;
    *&v22 = 134218240;
    v64 = v22;
    *&v22 = 136446466;
    v66 = v22;
    v74 = v25;
    v71 = v8;
    v28 = v75;
    v29 = v69;
    do
    {
      v79 = v24;
      v30 = v78;
      v78(v28, v27, v3);
      v31 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v30(v8, v28, v3);
      v32 = sub_1CF9E6108();
      v33 = sub_1CF9E72C8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = v3;
        v36 = swift_slowAlloc();
        v86[0] = v36;
        *v34 = v67;
        sub_1CF1FD858(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v37 = sub_1CF9E7F98();
        v38 = v8;
        v40 = v39;
        v84 = *v82;
        (v84)(v38, v35);
        v41 = sub_1CEFD0DF0(v37, v40, v86);
        v40, v42, v43, v44, v45, v46, v47, v48;
        *(v34 + 4) = v41;
        _os_log_impl(&dword_1CEFC7000, v32, v33, "Restoring purgencies and residency reasons on disk for db at %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v49 = v36;
        v3 = v35;
        MEMORY[0x1D386CDC0](v49, -1, -1);
        v50 = v34;
        v28 = v75;
        MEMORY[0x1D386CDC0](v50, -1, -1);
      }

      else
      {

        v84 = *v82;
        (v84)(v8, v3);
      }

      v80 = *v81;
      v80(v29, v83);
      v51 = v73;
      v52 = sub_1CF1ED230(v28, st_dev);
      v54 = v53;
      v55 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v56 = sub_1CF9E6108();
      v57 = sub_1CF9E7288();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = v64;
        if (__OFSUB__(v54, v52))
        {
          __break(1u);
        }

        *(v58 + 4) = v54 - v52;
        *(v58 + 12) = 2048;
        *(v58 + 14) = v54;
        v59 = v57;
        v60 = v58;
        _os_log_impl(&dword_1CEFC7000, v56, v59, "Restored purgency on %ld/%ld items", v58, 0x16u);
        MEMORY[0x1D386CDC0](v60, -1, -1);
      }

      v80(v51, v83);
      v28 = v75;
      (v84)(v75, v3);
      v29 = v69;
      v27 += v70;
      v24 = v79 - 1;
      v8 = v71;
    }

    while (v79 != 1);
    v61 = v65;
    v62 = v76;
    if (v76)
    {
      v63 = sub_1CF9E57E8();
    }

    else
    {
      v63 = 0;
    }
  }

  else
  {
    v63 = 0;
    v62 = 0;
    v61 = v65;
  }

  (*(v61 + 16))(v61, v63);
}

uint64_t sub_1CF1FD5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF1FD638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1CF1FD6B8(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1CF1FD6F8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_1CF1FD788()
{
  result = qword_1EC4BE870;
  if (!qword_1EC4BE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE870);
  }

  return result;
}

uint64_t sub_1CF1FD858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF1FDB5C()
{
  v1 = *v0;
  v2 = 0x656C646E6168;
  v3 = 0x664F746E65747865;
  v4 = 0x654C746E65747865;
  if (v1 != 3)
  {
    v4 = 0x7367616C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7269447369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF1FDBFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1FE794(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

unint64_t sub_1CF1FDC24@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF08BAD4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF1FDC4C(uint64_t a1)
{
  v2 = sub_1CF1FE580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1FDC88(uint64_t a1)
{
  v2 = sub_1CF1FE580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF1FDCC4(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF1FDD14(a1);
  return v2;
}

uint64_t sub_1CF1FDD14(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE888, &qword_1CF9FE8E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1FE580();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for VFSStagedContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = 0;
    sub_1CF1FE628();
    sub_1CF9E7D88();
    *(v1 + 16) = v20;
    *(v1 + 32) = v21;
    *(v1 + 40) = v22;
    LOBYTE(v20) = 1;
    *(v1 + 56) = sub_1CF9E7D58() & 1;
    LOBYTE(v20) = 2;
    v9 = sub_1CF9E7CD8();
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v14 = v9;
      LOBYTE(v20) = 3;
      v15 = sub_1CF9E7CD8();
      if (v16)
      {
        v11 = 0;
      }

      else
      {
        v11 = v14;
      }

      if (v16)
      {
        v12 = 0;
      }

      else
      {
        v12 = v15;
      }

      v13 = (v16 & 1) != 0;
    }

    *(v1 + 64) = v11;
    *(v1 + 72) = v12;
    *(v1 + 80) = v13;
    LOBYTE(v20) = 4;
    v17 = sub_1CF9E7CE8();
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    *(v1 + 88) = v19;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(&v20);
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1CF1FE030(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE880, &qword_1CF9FE8D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1FE580();
  sub_1CF9E82A8();
  v12 = *(v3 + 40);
  v13 = *(v3 + 48);
  v32 = *(v3 + 16);
  v33 = *(v3 + 32);
  v34 = v12;
  v35 = v13;
  v36 = 0;
  sub_1CF1FE5D4();

  sub_1CF9E7F08();
  v35, v14, v15, v16, v17, v18, v19, v20;
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v29 = v7;
  v22 = v30;
  v21 = v31;
  LOBYTE(v32) = 1;
  sub_1CF9E7EC8();
  v24 = v8;
  v25 = v9;
  if ((*(v3 + 80) & 1) == 0)
  {
    v28 = *(v3 + 72);
    LOBYTE(v32) = 2;
    sub_1CF9E7EE8();
    LOBYTE(v32) = 3;
    sub_1CF9E7EE8();
  }

  LOBYTE(v32) = 4;
  v26 = v24;
  sub_1CF9E7EF8();
  sub_1CF9E7E28();
  v31 = v35;
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  sub_1CF1D6D18();
  v27 = v29;
  sub_1CF9E82A8();
  (*(v22 + 8))(v27, v21);
  (*(v25 + 8))(v11, v26);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_1CF1FE39C()
{
  v1 = 1701603686;
  if (*(v0 + 56))
  {
    v1 = 7498084;
  }

  v20 = v1;
  MEMORY[0x1D3868CC0](0x286F6E692DLL, 0xE500000000000000);
  v2 = sub_1CF9E7F98();
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  if ((*(v0 + 80) & 1) == 0 && (*(v0 + 64) & 0x8000000000000000) == 0)
  {
    MEMORY[0x1D3868CC0](91, 0xE100000000000000);
    type metadata accessor for CFRange(0);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0, 0xE000000000000000);
    0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  }

  if (*(v0 + 88))
  {
    MEMORY[0x1D3868CC0](36, 0xE100000000000000);
  }

  return v20;
}

uint64_t sub_1CF1FE500(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

unint64_t sub_1CF1FE580()
{
  result = qword_1EDEA7108;
  if (!qword_1EDEA7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7108);
  }

  return result;
}

unint64_t sub_1CF1FE5D4()
{
  result = qword_1EDEA7D48;
  if (!qword_1EDEA7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7D48);
  }

  return result;
}

unint64_t sub_1CF1FE628()
{
  result = qword_1EDEA7D40;
  if (!qword_1EDEA7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7D40);
  }

  return result;
}

unint64_t sub_1CF1FE690()
{
  result = qword_1EC4BE890[0];
  if (!qword_1EC4BE890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4BE890);
  }

  return result;
}

unint64_t sub_1CF1FE6E8()
{
  result = qword_1EDEA70F8;
  if (!qword_1EDEA70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA70F8);
  }

  return result;
}

unint64_t sub_1CF1FE740()
{
  result = qword_1EDEA7100;
  if (!qword_1EDEA7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7100);
  }

  return result;
}

uint64_t sub_1CF1FE794(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x7269447369 && a2 == 0xE500000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0xEC00000074657366;
    if (a1 == 0x664F746E65747865 && a2 == 0xEC00000074657366 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xEC0000006874676ELL;
      if (a1 == 0x654C746E65747865 && a2 == 0xEC0000006874676ELL || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
      {
        0xE500000000000000, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v14 = sub_1CF9E8048();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 4;
        }

        else
        {
          return 5;
        }
      }
    }
  }
}

void sub_1CF1FE944(unsigned __int8 a1, id a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *v8;
  v10 = a1 >> 5;
  if (v10 == 4)
  {
    if (a1 == 129)
    {
      v16 = *(v8 + *(v9 + 608));
      if (v16)
      {
        v17 = a2;
        v18 = [v16 version];
        a2 = v17;
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v11 = [a2 bindLongParameter_];
      goto LABEL_19;
    }

LABEL_13:
    sub_1CF1D8E0C(a1, a2);
    return;
  }

  if (v10 != 3)
  {
    if (v10 == 2)
    {
      if (a1 == 66)
      {
        v24 = a2;
        swift_getAssociatedTypeWitness();
        v25 = *(swift_getAssociatedConformanceWitness() + 8);
        v26 = *(v25 + 32);
        v27 = swift_checkMetadataState();
        v26(v24, v27, v25);
        return;
      }

      if (a1 == 67)
      {
        v11 = [a2 bindUnsignedLongParameter_];
LABEL_19:
        v28 = v11;
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return;
      }
    }

    goto LABEL_13;
  }

  if (a1 != 97)
  {
    if (a1 == 98)
    {
      v12 = *(v9 + 600);
      v13 = *(v9 + 560);
      v31 = *(v9 + 544);
      v32 = v13;
      v14 = type metadata accessor for Bouncing.BouncingContext(0, &v31);
      WitnessTable = swift_getWitnessTable();
      sub_1CF4C0DE0(v8 + v12, v14, WitnessTable);
      return;
    }

    goto LABEL_13;
  }

  v20 = (v8 + *(v9 + 592));
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;

    v23 = MEMORY[0x1E69E6158];
  }

  else
  {
    0, a2, a3, a4, a5, a6, a7, a8;
    v22 = 0;
    v23 = 0;
    *&v32 = 0;
  }

  *&v31 = v22;
  *(&v31 + 1) = v21;
  *(&v32 + 1) = v23;
  sub_1CEFF8EA0(&v31);
  v30 = v29;
  sub_1CEFCCC44(&v31, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v30)
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

void sub_1CF1FEC64(unsigned __int8 a1, void *a2)
{
  if (a1 == 99)
  {
    v3 = sub_1CF9E8268();
    v4 = [a2 bindObjectParameter_];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  }

  else
  {
    sub_1CF1D8E0C(a1, a2);
  }
}

void sub_1CF1FECF4(unsigned __int8 a1, void *a2)
{
  v2 = a1 >> 5;
  if (v2 == 3)
  {
    if (a1 == 96)
    {
LABEL_6:
      swift_getAssociatedTypeWitness();
      v4 = *(swift_getAssociatedConformanceWitness() + 8);
      v5 = *(v4 + 32);
      v6 = swift_checkMetadataState();
      v5(a2, v6, v4);
      return;
    }
  }

  else if (v2 == 2 && a1 == 66)
  {
    goto LABEL_6;
  }

  sub_1CF1D8E0C(a1, a2);
}

void sub_1CF1FEE18(unsigned __int8 a1, void *a2)
{
  if (a1 == 99)
  {
    v3 = v2[10];
    v13[0] = v2[9];
    v13[1] = v3;
    v4 = v2[12];
    v13[2] = v2[11];
    v13[3] = v4;
    v5 = sub_1CF1CB300();
    sub_1CF201180(v5, v13);
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    sub_1CF1D8E0C(a1, a2);
  }
}

uint64_t sub_1CF1FEEA0(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v9 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF1FEF68(char a1)
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](a1 & 1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1FEFB0(char a1)
{
  if (a1)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 1852399981;
  }
}

uint64_t sub_1CF1FEFF8(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF0BA674(v3, *v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1FF040@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1FEEA0(a1, a2, a4, a5, a6, a7, a8, a9);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1FF068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF1B93DC();
  *a1 = result;
  return result;
}

uint64_t sub_1CF1FF09C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF1FF0F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF1FF144@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v49 = a6;
  v46 = sub_1CF9E75D8();
  v53 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v57 = &v41 - v11;
  v51 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  _s10CodingKeysOMa(255, &v58);
  swift_getWitnessTable();
  v50 = sub_1CF9E7E08();
  v56 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &v41 - v14;
  v52 = a2;
  v58 = a2;
  v59 = a3;
  v47 = a3;
  v54 = a5;
  v55 = a4;
  v60 = a4;
  v61 = a5;
  v16 = type metadata accessor for ReconciliationID(0, &v58);
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v62;
  sub_1CF9E8298();
  if (v22)
  {
    v28 = a1;
  }

  else
  {
    v42 = v18;
    v43 = v21;
    v24 = v51;
    v23 = v52;
    v44 = v16;
    v62 = a1;
    v25 = v53;
    LOBYTE(v58) = 0;
    v26 = v50;
    sub_1CF9E7CF8();
    v27 = v15;
    v30 = v26;
    v31 = (*(v24 + 48))(v57, 1, v23);
    if (v31 == 1)
    {
      (*(v25 + 8))(v57, v46);
      LOBYTE(v58) = 1;
      v32 = v42;
      sub_1CF9E7D88();
      v37 = v49;
      (*(v56 + 8))(v27, v30);
      v38 = v44;
      swift_storeEnumTagMultiPayload();
      v39 = *(v48 + 32);
      v40 = v43;
      v39(v43, v32, v38);
      v39(v37, v40, v38);
    }

    else
    {
      (*(v56 + 8))(v27, v26);
      v33 = *(v24 + 32);
      v34 = v45;
      v33(v45, v57, v23);
      v35 = v43;
      v33(v43, v34, v23);
      v36 = v44;
      swift_storeEnumTagMultiPayload();
      (*(v48 + 32))(v49, v35, v36);
    }

    v28 = v62;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1CF1FF638(void *a1, uint64_t a2)
{
  v34 = *(*(a2 + 24) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(*(v5 + 16) - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v32 = v15;
  *&v16 = v15;
  v35 = v17;
  *(&v16 + 1) = v17;
  v36 = v14;
  v40[0] = v16;
  v40[1] = v14;
  _s10CodingKeysOMa(255, v40);
  swift_getWitnessTable();
  v18 = sub_1CF9E7F78();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  (*(v9 + 16))(v12, v37, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v33;
    v21 = v34;
    v23 = v35;
    (*(v34 + 32))(v33, v12, v35);
    LOBYTE(v40[0]) = 1;
    v24 = v39;
    sub_1CF9E7F08();
    (*(v21 + 8))(v22, v23);
    return (*(v38 + 8))(v20, v24);
  }

  else
  {
    v27 = v30;
    v26 = v31;
    v28 = v32;
    (*(v31 + 32))(v30, v12, v32);
    LOBYTE(v40[0]) = 0;
    v29 = v39;
    sub_1CF9E7F08();
    (*(v26 + 8))(v27, v28);
    return (*(v38 + 8))(v20, v29);
  }
}

void sub_1CF1FFA60(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = v4[68];
  v9 = v4[69];
  v10 = v4[70];
  v11 = v4[71];
  v46 = a4;
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v12 = type metadata accessor for Bouncing.BouncingContext(255, &v47);
  v13 = sub_1CF9E75D8();
  *&v16 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v18 = (&v45 - v17);
  v19 = a1 >> 5;
  if (v19 == 4)
  {
    if (a1 == 129)
    {
      if (([a2 isNullAtIndex_] & 1) != 0 || (v27 = objc_msgSend(a2, sel_integerAtIndex_, a3)) == 0)
      {
        v31 = v46;
        *v46 = 0u;
        *(v31 + 16) = 0u;
      }

      else
      {
        v28 = [objc_opt_self() domainVersionWithVersion_];
        v29 = sub_1CF1E7FC0();
        v30 = v46;
        v46[3] = v29;
        *v30 = v28;
      }

      return;
    }

LABEL_16:
    v47 = v8;
    v48 = v9;
    v49 = v10;
    v50 = v11;
    type metadata accessor for Job(0, &v47);
    sub_1CF1D90A0(a2, a1, a3, v46);
    return;
  }

  if (v19 == 3)
  {
    if (a1 == 97)
    {
      v32 = v46;
      v46[3] = &type metadata for Filename;
      v33 = [a2 stringAtIndex_];
      v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v35;

      *v32 = v34;
      v32[1] = v36;
      return;
    }

    if (a1 == 98)
    {
      v22 = v15;
      v23 = v14;
      swift_getWitnessTable();
      v24 = v51;
      sub_1CF4C1F24(a3, v12, v18);
      if (!v24)
      {
        Description = v12[-1].Description;
        if ((Description[6])(v18, 1, v12) == 1)
        {
          (*(v22 + 8))(v18, v23);
          v26 = v46;
          *v46 = 0u;
          *(v26 + 16) = 0u;
        }

        else
        {
          v43 = v46;
          v46[3] = v12;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
          Description[4](boxed_opaque_existential_0, v18, v12);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  if (v19 != 2)
  {
    goto LABEL_16;
  }

  if (a1 != 66)
  {
    if (a1 == 67)
    {
      v20 = [a2 unsignedLongAtIndex_];
      v21 = v46;
      v46[3] = MEMORY[0x1E69E6810];
      *v21 = v20;
      return;
    }

    goto LABEL_16;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(swift_getAssociatedConformanceWitness() + 8);
  v39 = *(v38 + 16);
  v40 = v46;
  v46[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v40);
  v41 = a2;
  v42 = v51;
  v39(v41, a3, AssociatedTypeWitness, v38);
  if (v42)
  {
    __swift_deallocate_boxed_opaque_existential_0(v40);
  }
}

uint64_t sub_1CF1FFE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  *&v64 = &_s9SQLFieldsON_1;
  *(&v64 + 1) = a2;
  v51 = sub_1CF020F5C();
  *&v65 = v51;
  *(&v65 + 1) = a3;
  v6 = type metadata accessor for SQLCodableAccessorWrapper(0, &v64);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v44 - v7;
  v8 = *(v3 + 560);
  v57 = *(v3 + 544);
  v50 = v3;
  v56 = v8;
  v64 = v57;
  v65 = v8;
  type metadata accessor for Bouncing.BouncingContext(255, &v64);
  v9 = sub_1CF9E75D8();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v44 - v14;
  LOBYTE(v64) = 66;
  v16 = sub_1CF0230AC(a2, AssociatedTypeWitness);
  v17 = a2;
  v18 = a2;
  v19 = a3;
  v20 = v58;
  sub_1CF0230B4(&v64, v16, v18, AssociatedTypeWitness, a3);
  if (!v20)
  {
    *&v56 = AssociatedTypeWitness;
    *&v57 = v15;
    v48 = v11;
    v49 = v9;
    v58 = v13;
    LOBYTE(v64) = 67;
    v21 = MEMORY[0x1E69E6810];
    v22 = v17;
    AssociatedTypeWitness = v19;
    sub_1CF0230AC(v17, MEMORY[0x1E69E6810]);
    sub_1CF0230B4(&v64, v21, v17, v21, v19);
    v24 = v66;
    LOBYTE(v63) = 97;
    sub_1CF0230AC(v22, &type metadata for Filename);
    sub_1CF0230B4(&v63, &type metadata for Filename, v22, &type metadata for Filename, v19);
    v25 = v57;
    v26 = v56;
    v63 = v64;
    LOBYTE(v62) = 98;
    sub_1CF0230B4(&v62, v49, v22, v49, v19);
    LOBYTE(v61) = -127;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
    sub_1CF0230AC(v22, v27);
    sub_1CF0230B4(&v61, v27, v22, v27, v19);
    v46 = v24;
    v47 = v62;
    v28 = v52;
    sub_1CF021034(sub_1CF1E800C, 0, v22, &_s9SQLFieldsON_1, 0, v51, v52);
    v29 = v54;
    WitnessTable = swift_getWitnessTable();
    v31 = sub_1CF023F08(v28, v29, WitnessTable);
    v51 = 0;
    v33 = v55;
    v45 = v32;
    v44 = v31;
    (*(v53 + 8))(v28, v29);
    v60 = 65;
    sub_1CF0230AC(v22, &type metadata for JobReason);
    v34 = v51;
    sub_1CF0230B4(&v60, &type metadata for JobReason, v22, &type metadata for JobReason, v19);
    v35 = (v33 + 8);
    if (v34)
    {

      (*v35)(v48, v49);
      *(&v63 + 1), v36, v37, v38, v39, v40, v41, v42;
      (*(v58 + 8))(v25, v26);
    }

    else
    {
      v43 = v48;
      sub_1CF9B55F8(v25, v46, &v63, v48, v47, v44, v45, v61);
      (*v35)(v43, v49);
      (*(v58 + 8))(v25, v26);
      AssociatedTypeWitness = sub_1CF1DA980(v59, v22, AssociatedTypeWitness);
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1CF2005A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF1FFE7C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF20063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF2007DC(a1, a2, a3, sub_1CF1E800C, sub_1CF65A0B4);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF2006A8@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 == 99)
  {
    v6 = [a1 unsignedLongLongAtIndex_];
    a4[3] = &type metadata for CapturedContent;
    result = swift_allocObject();
    *a4 = result;
    *(result + 16) = v6;
    *(result + 24) = 0;
    *(result + 28) = 1;
    *(result + 32) = xmmword_1CF9F4E20;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 1;
    *(result + 72) = 0;
  }

  else
  {
    v8 = *(v4 + 560);
    v12[0] = *(v4 + 544);
    v12[1] = v8;
    type metadata accessor for Job(0, v12);
    return sub_1CF1D90A0(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1CF2007DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, uint64_t, uint64_t, uint64_t))
{
  v19 = a5;
  v21 = a4;
  v9 = sub_1CF020F5C();
  *&v26 = &_s9SQLFieldsON_1;
  *(&v26 + 1) = a2;
  *&v27 = v9;
  *(&v27 + 1) = a3;
  v10 = type metadata accessor for SQLCodableAccessorWrapper(0, &v26);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v25 = 99;
  sub_1CF0230AC(a2, &type metadata for CapturedContent);
  v30 = a1;
  sub_1CF0230B4(&v25, &type metadata for CapturedContent, a2, &type metadata for CapturedContent, a3);
  if (!v5)
  {
    v13 = v20;
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    sub_1CF021034(v21, 0, a2, &_s9SQLFieldsON_1, a3, v9, v12);
    WitnessTable = swift_getWitnessTable();
    v15 = sub_1CF023F08(v12, v10, WitnessTable);
    v21 = v16;
    v17 = v15;
    (*(v13 + 8))(v12, v10);
    v22 = 65;
    sub_1CF0230AC(a2, &type metadata for JobReason);
    sub_1CF0230B4(&v22, &type metadata for JobReason, a2, &type metadata for JobReason, a3);
    v19(v24, v17, v21, v23);
    a3 = sub_1CF1DA980(v30, a2, a3);
  }

  return a3;
}

uint64_t sub_1CF200B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF2007DC(a1, a2, a3, sub_1CF1E800C, sub_1CF611894);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF200B68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = a1 >> 5;
  if (v10 != 3)
  {
    if (v10 == 2 && a1 == 66)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = *(v4 + 560);
    v16[0] = *(v4 + 544);
    v16[1] = v15;
    type metadata accessor for Job(0, v16);
    return sub_1CF1D90A0(a2, a1, a3, a4);
  }

  if (a1 != 96)
  {
    goto LABEL_7;
  }

LABEL_4:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 16);
  a4[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(a4);
  result = v13(a2, a3, AssociatedTypeWitness, v12);
  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a4);
  }

  return result;
}

char *sub_1CF200CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45[0] = &_s9SQLFieldsON_1;
  v45[1] = a2;
  v40 = sub_1CF020F5C();
  v45[2] = v40;
  v45[3] = a3;
  v8 = type metadata accessor for SQLCodableAccessorWrapper(0, v45);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  LOBYTE(v45[0]) = 66;
  v18 = sub_1CF0230AC(a2, AssociatedTypeWitness);
  v42 = a2;
  v43 = a3;
  v19 = v44;
  sub_1CF0230B4(v45, v18, a2, AssociatedTypeWitness, a3);
  if (!v19)
  {
    v20 = v40;
    v37 = v17;
    v44 = v4;
    LOBYTE(v45[0]) = 96;
    sub_1CF0230B4(v45, v18, v42, AssociatedTypeWitness, v43);
    v36 = v14;
    sub_1CF021034(sub_1CF1E800C, 0, v42, &_s9SQLFieldsON_1, v43, v20, v11);
    v21 = v38;
    v22 = v11;
    WitnessTable = swift_getWitnessTable();
    v24 = sub_1CF023F08(v11, v21, WitnessTable);
    v26 = v36;
    v40 = v27;
    v28 = v21;
    v29 = v24;
    (*(v39 + 8))(v22, v28);
    v46 = 65;
    v30 = v42;
    v31 = v43;
    sub_1CF0230AC(v42, &type metadata for JobReason);
    sub_1CF0230B4(&v46, &type metadata for JobReason, v30, &type metadata for JobReason, v31);
    v32 = v37;
    sub_1CF656E74(v37, v26, v29, v40, v45[0]);
    v33 = v32;
    v34 = *(v41 + 8);
    v34(v26, AssociatedTypeWitness);
    v34(v33, AssociatedTypeWitness);
    v14 = sub_1CF1DA980(a1, v42, v43);
  }

  return v14;
}

char *sub_1CF201154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = sub_1CF200CC4(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF201180(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v38 = *(a2 + 13);
  v39 = *(a2 + 15);
  v6 = *(a2 + 24);
  v23 = *(a2 + 16);
  v25 = *(a2 + 40);
  v26 = *(a2 + 32);
  v24 = *(a2 + 48);
  v37[0] = *(a2 + 49);
  *(v37 + 3) = *(a2 + 52);
  if (*(a1 + 16))
  {
    v8 = (a1 + 32);
    v9 = *(a2 + 56);
    if (v24)
    {
      v10 = -1;
    }

    else
    {
      v10 = v25;
    }

    v11 = v26;
    if (v24)
    {
      v11 = -1;
    }

    v20 = v11;
    v21 = v10;
    v12 = *(a1 + 16);
    v22 = v4;
    do
    {
      if (*(a2 + 24) >> 60 == 11)
      {
      }

      else
      {
        v13 = *v8;
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v28 = v3;
            LODWORD(v29) = v4;
            BYTE4(v29) = v5;
            *(&v29 + 5) = v38;
            HIBYTE(v29) = v39;
            v30 = v23;
            v31 = v6;
            v32 = v26;
            v33 = v25;
            v34 = v24;
            *v35 = v37[0];
            *&v35[3] = *(v37 + 3);
            v36 = v9;
            sub_1CF1AE1DC(&v28, v27);
            v15 = [v2 bindLongParameter_];
          }

          else
          {
            v28 = v3;
            LODWORD(v29) = v4;
            BYTE4(v29) = v5;
            *(&v29 + 5) = v38;
            HIBYTE(v29) = v39;
            v30 = v23;
            v31 = v6;
            v32 = v26;
            v33 = v25;
            v34 = v24;
            *v35 = v37[0];
            *&v35[3] = *(v37 + 3);
            v36 = v9;
            if (v13 == 4)
            {
              sub_1CF1AE1DC(&v28, v27);
              v15 = [v2 bindLongParameter_];
            }

            else
            {
              sub_1CF1AE1DC(&v28, v27);
              v15 = [v2 bindUnsignedLongParameter_];
            }
          }
        }

        else
        {
          if (*v8)
          {
            if (v13 == 1)
            {
              v28 = v3;
              LODWORD(v29) = v4;
              BYTE4(v29) = v5;
              *(&v29 + 5) = v38;
              HIBYTE(v29) = v39;
              v30 = v23;
              v31 = v6;
              v32 = v26;
              v33 = v25;
              v34 = v24;
              *v35 = v37[0];
              *&v35[3] = *(v37 + 3);
              v36 = v9;
              sub_1CF1AE1DC(&v28, v27);
              if (v5)
              {
                v14 = 0;
              }

              else
              {
                v14 = sub_1CF9E8258();
              }
            }

            else
            {
              v28 = v3;
              LODWORD(v29) = v4;
              BYTE4(v29) = v5;
              *(&v29 + 5) = v38;
              HIBYTE(v29) = v39;
              v30 = v23;
              v31 = v6;
              v32 = v26;
              v33 = v25;
              v34 = v24;
              *v35 = v37[0];
              *&v35[3] = *(v37 + 3);
              v36 = v9;
              sub_1CF1AE1DC(&v28, v27);
              if (v6 >> 60 == 15)
              {
                v14 = 0;
              }

              else
              {
                v14 = sub_1CF9E5B48();
              }
            }

            swift_unknownObjectRelease();
            sub_1CEFCCC44(a2, &unk_1EC4BF260, &unk_1CFA01B60);
            v4 = v22;
            goto LABEL_9;
          }

          v28 = v3;
          LODWORD(v29) = v4;
          BYTE4(v29) = v5;
          *(&v29 + 5) = v38;
          HIBYTE(v29) = v39;
          v30 = v23;
          v31 = v6;
          v32 = v26;
          v33 = v25;
          v34 = v24;
          *v35 = v37[0];
          *&v35[3] = *(v37 + 3);
          v36 = v9;
          sub_1CF1AE1DC(&v28, v27);
          v16 = sub_1CF9E8268();

          v4 = v22;
        }

        sub_1CEFCCC44(a2, &unk_1EC4BF260, &unk_1CFA01B60);
      }

LABEL_9:
      ++v8;
      --v12;
    }

    while (v12);
  }

  result = sub_1CF9E6B18();
  v28 = result;
  v29 = v18;
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    sub_1CF03DE28(2);
    return v28;
  }

  return result;
}

unint64_t sub_1CF201714()
{
  result = qword_1EDEA6220[0];
  if (!qword_1EDEA6220[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BFF40, &unk_1CF9FE780);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA6220);
  }

  return result;
}

void sub_1CF201778(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1CF03D7A8(a1, a2, a3);
  }
}

uint64_t sub_1CF201810(uint64_t a1)
{
  v1 = *(a1 + 160);
  v4[0] = *(a1 + 144);
  v4[1] = v1;
  result = type metadata accessor for ItemReconciliation(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    *(&v4[0] + 1) = MEMORY[0x1E69E5D08] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1CF2018B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  sub_1CF2023E0(a1, sub_1CEFED338, &v60 - v9);
  if (!v2)
  {
    v12 = sub_1CF23D13C(31, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v13 = sub_1CEFED4EC(32, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v14 = v13;
    sub_1CEFF4408(v10, v7);
    v15 = *v7;
    if (v15 == 1)
    {
      v16 = 0;
      v14 = 0;
    }

    else if (v15 != 2 && v7[v5[20]] == 0)
    {
      if ((v7[v5[28]] & 1) == 0)
      {
        LODWORD(v91) = 0;
        v16 = *&v7[v5[26]];
        goto LABEL_14;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v14 = 0;
    }

    LODWORD(v91) = 1;
LABEL_14:
    sub_1CEFD5218(v7, type metadata accessor for ItemMetadata);
    sub_1CF23EF20(29, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, &v67);
    sub_1CEFEDAC0(30, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, v83);
    v18 = *(&v83[0] + 1);
    v65 = v67;
    v66 = *&v83[0];
    v19 = BYTE8(v67);
    sub_1CF23EF20(28, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, &v89);
    v64 = v18;
    v63 = v19;
    sub_1CF23EF20(29, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, &v87);
    v86 = v91;
    v20 = v64;

    sub_1CEFEDAC0(30, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, v85);
    v91 = 0;
    v20, v21, v22, v23, v24, v25, v26, v27;
    v28 = v85[0];
    v62 = v85[1];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFE4874(v10, a2 + *(v61 + 48));
    sub_1CEFE528C(&v67);
    v29 = v90;
    v30 = v87;
    v31 = v88;
    v32 = v86;
    *a2 = v89;
    *(a2 + 8) = v29;
    *(a2 + 16) = v30;
    *(a2 + 24) = v31;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
    *(a2 + 48) = v16;
    *(a2 + 56) = v32;
    v33 = v65;
    *(a2 + 64) = 0;
    *(a2 + 72) = v33;
    *(a2 + 80) = v63;
    *(a2 + 88) = v66;
    *(a2 + 96) = v20;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    v34 = v61;
    v35 = a2 + *(v61 + 52);
    v36 = v80;
    *(v35 + 192) = v79;
    *(v35 + 208) = v36;
    *(v35 + 224) = v81;
    *(v35 + 240) = v82;
    v37 = v76;
    *(v35 + 128) = v75;
    *(v35 + 144) = v37;
    v38 = v78;
    *(v35 + 160) = v77;
    *(v35 + 176) = v38;
    v39 = v72;
    *(v35 + 64) = v71;
    *(v35 + 80) = v39;
    v40 = v74;
    *(v35 + 96) = v73;
    *(v35 + 112) = v40;
    v41 = v68;
    *v35 = v67;
    *(v35 + 16) = v41;
    v42 = v70;
    *(v35 + 32) = v69;
    *(v35 + 48) = v42;
    v43 = a2 + v34[14];
    *v43 = 0u;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 1;
    v44 = a2 + v34[15];
    *v44 = 0;
    *(v44 + 8) = 0;
    *(v44 + 16) = 1;
    v45 = v62;
    *(a2 + 128) = v28;
    *(a2 + 136) = v45;
    v46 = *(v35 + 208);
    v83[12] = *(v35 + 192);
    v83[13] = v46;
    v83[14] = *(v35 + 224);
    v84 = *(v35 + 240);
    v47 = *(v35 + 144);
    v83[8] = *(v35 + 128);
    v83[9] = v47;
    v48 = *(v35 + 176);
    v83[10] = *(v35 + 160);
    v83[11] = v48;
    v49 = *(v35 + 80);
    v83[4] = *(v35 + 64);
    v83[5] = v49;
    v50 = *(v35 + 112);
    v83[6] = *(v35 + 96);
    v83[7] = v50;
    v51 = *(v35 + 16);
    v83[0] = *v35;
    v83[1] = v51;
    v52 = *(v35 + 48);
    v83[2] = *(v35 + 32);
    v83[3] = v52;
    sub_1CEFCCC44(v83, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v53 = v80;
    *(v35 + 192) = v79;
    *(v35 + 208) = v53;
    *(v35 + 224) = v81;
    *(v35 + 240) = v82;
    v54 = v76;
    *(v35 + 128) = v75;
    *(v35 + 144) = v54;
    v55 = v78;
    *(v35 + 160) = v77;
    *(v35 + 176) = v55;
    v56 = v72;
    *(v35 + 64) = v71;
    *(v35 + 80) = v56;
    v57 = v74;
    *(v35 + 96) = v73;
    *(v35 + 112) = v57;
    v58 = v68;
    *v35 = v67;
    *(v35 + 16) = v58;
    v59 = v70;
    *(v35 + 32) = v69;
    *(v35 + 48) = v59;
    *(a2 + v34[16]) = 0;
    result = 0.0;
    *(a2 + v34[17]) = xmmword_1CF9FEC20;
  }

  return result;
}

void sub_1CF201F24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF2023E0(a1, sub_1CEFED338, v7);
  if (!v2)
  {
    sub_1CF23D9AC(33, a1, &v61);
    v8 = v61;
    sub_1CF23D9AC(34, a1, &v61);
    v9 = v61;
    v10 = sub_1CF23E884(28, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v11 = sub_1CF23E884(29, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v78 = 0;
    v44 = v11;
    sub_1CEFE42D4(v8, *(&v8 + 1));
    sub_1CEFE42D4(v9, *(&v9 + 1));
    v12 = v78;
    sub_1CEFEDAC0(30, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, v77);
    v78 = v12;
    if (v12)
    {
      sub_1CEFE4714(v8, *(&v8 + 1));
      sub_1CEFE4714(v9, *(&v9 + 1));

      v61 = v8;
      *&v62 = 0;
      *(&v62 + 1) = v9;
      v63 = *(&v9 + 1);
      v64 = 0uLL;
      sub_1CEFCCC44(&v61, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CEFD5218(v7, type metadata accessor for ItemMetadata);
    }

    else
    {
      sub_1CEFE4714(v9, *(&v9 + 1));
      sub_1CEFE4714(v8, *(&v8 + 1));
      v42 = v77[1];
      v43 = v77[0];
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CEFE4874(v7, a2 + *(v41 + 48));
      sub_1CEFE528C(&v45);
      v13 = v44;
      *a2 = v10;
      *(a2 + 8) = v13;
      *(a2 + 16) = v8;
      *(a2 + 32) = 0;
      *(a2 + 40) = v9;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      v14 = v41;
      v15 = a2 + *(v41 + 52);
      v16 = v58;
      *(v15 + 192) = v57;
      *(v15 + 208) = v16;
      *(v15 + 224) = v59;
      *(v15 + 240) = v60;
      v17 = v54;
      *(v15 + 128) = v53;
      *(v15 + 144) = v17;
      v18 = v56;
      *(v15 + 160) = v55;
      *(v15 + 176) = v18;
      v19 = v50;
      *(v15 + 64) = v49;
      *(v15 + 80) = v19;
      v20 = v52;
      *(v15 + 96) = v51;
      *(v15 + 112) = v20;
      v21 = v46;
      *v15 = v45;
      *(v15 + 16) = v21;
      v22 = v48;
      *(v15 + 32) = v47;
      *(v15 + 48) = v22;
      v23 = a2 + v14[14];
      *v23 = 0u;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 1;
      v24 = a2 + v14[15];
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 1;
      v25 = v42;
      *(a2 + 80) = v43;
      *(a2 + 88) = v25;
      v26 = *(v15 + 208);
      v73 = *(v15 + 192);
      v74 = v26;
      v75 = *(v15 + 224);
      v76 = *(v15 + 240);
      v27 = *(v15 + 144);
      v69 = *(v15 + 128);
      v70 = v27;
      v28 = *(v15 + 176);
      v71 = *(v15 + 160);
      v72 = v28;
      v29 = *(v15 + 80);
      v65 = *(v15 + 64);
      v66 = v29;
      v30 = *(v15 + 112);
      v67 = *(v15 + 96);
      v68 = v30;
      v31 = *(v15 + 16);
      v61 = *v15;
      v62 = v31;
      v32 = *(v15 + 48);
      v63 = *(v15 + 32);
      v64 = v32;
      sub_1CEFCCC44(&v61, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v33 = v58;
      *(v15 + 192) = v57;
      *(v15 + 208) = v33;
      *(v15 + 224) = v59;
      *(v15 + 240) = v60;
      v34 = v54;
      *(v15 + 128) = v53;
      *(v15 + 144) = v34;
      v35 = v56;
      *(v15 + 160) = v55;
      *(v15 + 176) = v35;
      v36 = v50;
      *(v15 + 64) = v49;
      *(v15 + 80) = v36;
      v37 = v52;
      *(v15 + 96) = v51;
      *(v15 + 112) = v37;
      v38 = v46;
      *v15 = v45;
      *(v15 + 16) = v38;
      v39 = v48;
      *(v15 + 32) = v47;
      *(v15 + 48) = v39;
      *(a2 + v14[16]) = 0;
      *(a2 + v14[17]) = xmmword_1CF9FEC20;
    }
  }
}