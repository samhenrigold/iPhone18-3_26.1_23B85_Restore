void sub_1CF85B210(uint64_t a1, void (*a2)(void), void *a3, uint64_t (*a4)(), void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, id a10)
{
  v583 = a8;
  v597 = a7;
  v598 = a6;
  v599 = a5;
  v600 = a4;
  v602 = a2;
  v603 = a3;
  v604 = a1;
  v628 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E5A58();
  v585 = *(v11 - 8);
  v586 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v570 = v548 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v571 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v561 = v548 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v562 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v565 = v548 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v563 = v548 - v18;
  v564 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v584 = v548 - v21;
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v557);
  v556 = v548 - v22;
  v23 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v588 = v548 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E5268();
  v590 = *(v25 - 8);
  v591 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v589 = v548 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CF9E63D8();
  v559 = *(v27 - 8);
  v560 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v558 = v548 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v582 = v548 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v596 = (v548 - v32);
  v33 = sub_1CF9E6068();
  v579 = *(v33 - 8);
  v580 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v573 = v548 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v575 = v548 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v592 = v548 - v38;
  v572 = type metadata accessor for Signpost(0);
  v576 = *(v572 - 8);
  MEMORY[0x1EEE9AC00](v572);
  v581 = v548 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v577 = v42;
  v578 = (v548 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v593 = (v548 - v44);
  v45 = sub_1CF9E6118();
  v594 = *(v45 - 8);
  v595 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v566 = v548 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v568 = v548 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v587 = v548 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v555 = v548 - v52;
  v53 = sub_1CF9E53C8();
  v567 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = v548 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for VFSItem(0);
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v574 = v548 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v569 = v548 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v601 = v548 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v63);
  v65 = (v548 - v64);
  sub_1CEFCCBDC(v604, v548 - v64, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = *v65;
    v67 = *v65;
    (v602)(v66);

    return;
  }

  if ((*(v57 + 48))(v65, 1, v56) == 1)
  {
    (v602)(0);
    return;
  }

  v552 = v57;
  v68 = v65;
  v69 = v601;
  sub_1CEFDA0C4(v68, v601, type metadata accessor for VFSItem);
  v551 = v56;
  v70 = v69;
  v71 = (v69 + *(v56 + 28));
  v72 = type metadata accessor for ItemMetadata(0);
  v73 = v71[*(v72 + 80)];
  if (v73 != 1)
  {
    v550 = 0;
LABEL_11:
    v80 = v70;
    goto LABEL_12;
  }

  v553 = v72;
  v554 = v71;
  v74 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_160;
  }

  v76 = Strong;
  v77 = [Strong userEnabled];

  if ((v77 & 1) == 0)
  {
    v107 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
    v108 = swift_unknownObjectWeakLoadStrong();
    if (v108)
    {
      v109 = v108;
      v110 = [v108 provider];

      if (v110)
      {
        v111 = [v110 descriptor];

        v112 = [v111 localizedName];
        v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v115 = v114;

        v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v118 = v117;
        v612 = MEMORY[0x1E69E6158];
        *&v610 = v113;
        *(&v610 + 1) = v115;
        sub_1CEFE9EB8(&v610, &v623);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v619 = v107;
        sub_1CF1D154C(&v623, v116, v118, isUniquelyReferenced_nonNull_native);
        v118, v120, v121, v122, v123, v124, v125, v126;
      }
    }

    type metadata accessor for NSFileProviderError(0);
    *&v623 = -2011;
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v127 = v610;
    v128 = v610;
    (v602)(v127);

    goto LABEL_27;
  }

  v78 = [v599 shouldFailCoordinationIfDownloadRequired];
  if (v78)
  {
    LODWORD(v610) = 1;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v79 = sub_1CF9E53A8();
    v602();

    (v567)[1](v55, v53);
LABEL_27:
    v129 = v70;
    goto LABEL_154;
  }

  if ((v598 & 0x200000) == 0)
  {
    v550 = 0;
    v72 = v553;
    v71 = v554;
    goto LABEL_11;
  }

  v130 = v597[2];
  MEMORY[0x1EEE9AC00](v78);
  v546 = v131;
  v547 = v70;
  v132 = objc_autoreleasePoolPush();
  sub_1CF803A54(v130, 2, "startProvidingItem(at:readerID:readingOptions:request:completionHandler:)", 73, 2, 0, sub_1CF900F9C, &v544);
  LOBYTE(v130) = v133;
  objc_autoreleasePoolPop(v132);
  v550 = 0;
  v80 = v70;
  v72 = v553;
  v71 = v554;
  if (v130)
  {
    v134 = FPEvictedByTheUserError();
LABEL_104:
    v602();

LABEL_111:
    v129 = v80;
    goto LABEL_154;
  }

LABEL_12:
  v81 = a9;
  if ((v598 & 0x20000) != 0)
  {
    v106 = 1;
    goto LABEL_38;
  }

  v82 = v72;
  if (([v599 isFromPOSIX] & 1) != 0 || *(v80 + 8) == 2 && !*v80 || *v71 != 1 || (v83 = *(v80 + 40), *&v610 = *(v80 + 32), *(&v610 + 1) = v83, *&v623 = 47, *(&v623 + 1) = 0xE100000000000000, *&v619 = 58, *(&v619 + 1) = 0xE100000000000000, v546 = sub_1CEFE4E68(), v547 = v546, v544 = MEMORY[0x1E69E6158], v545 = v546, sub_1CF9E7668(), v85 = v84, sub_1CF9E6978(), v85, v86, v87, v88, v89, v90, v91, v92, LODWORD(v85) = fpfs_filename_contains_ext(), , !v85) || (LOBYTE(v610) = 0, sub_1CF9E5A18(), v94 = v93, sub_1CF9E6978(), v94, v95, v96, v97, v98, v99, v100, v101, LODWORD(v94) = fpfs_pkg_is_demoted_at(), , (v94 & 0x80000000) != 0) || v610 != 1)
  {
LABEL_36:
    v106 = 0;
    goto LABEL_37;
  }

  v102 = v71;
  type metadata accessor for VFSFileTree(0);
  v103 = swift_dynamicCastClassUnconditional();
  MEMORY[0x1EEE9AC00](v103);
  v544 = v104;
  v545 = sub_1CF266814;
  v546 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  v105 = v550;
  sub_1CF9E59B8();
  v550 = v105;

  if (v623 != 2)
  {
    v80 = v601;
    if (v623)
    {
      v135 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v136 = sub_1CF9E6108();
      v137 = sub_1CF9E7288();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_1CEFC7000, v136, v137, "forcing recursive materialize of demoted package", v138, 2u);
        v139 = v138;
        v71 = v102;
        MEMORY[0x1D386CDC0](v139, -1, -1);
      }

      (v594[1])(v555, v595);
      v106 = 1;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v106 = 0;
  v80 = v601;
LABEL_37:
  v72 = v82;
LABEL_38:
  v140 = a10;
  v604 = a9;
  v598 = a10;
  if (v73)
  {
    goto LABEL_95;
  }

  v141 = v71[*(v72 + 84)];
  v553 = v72;
  v554 = v71;
  LODWORD(v555) = v106;
  if (!v141 || v141 >= 4)
  {
    goto LABEL_72;
  }

  v567 = v597[2];
  type metadata accessor for VFSFileTree(0);
  v142 = swift_dynamicCastClassUnconditional();

  v143 = objc_sync_enter(v142);
  if (v143)
  {
    goto LABEL_165;
  }

  v144 = v142[20];

  v145 = objc_sync_exit(v142);
  if (v145)
  {
    MEMORY[0x1EEE9AC00](v145);
    v546 = v142;
    goto LABEL_170;
  }

  v153 = v80 + *(v551 + 36);
  v154 = *v153;
  v155 = v80 + *(v551 + 56);
  if (*(v155 + 4))
  {
    v156 = 0;
  }

  else
  {
    v156 = *v155;
  }

  v157 = *(v153 + 8);
  0, v146, v147, v148, v149, v150, v151, v152;
  v623 = v154;
  v624 = v156;
  v625 = v157;
  v626 = 0;
  v627 = 0;
  v158 = *(v144 + 4);
  os_unfair_lock_lock(v144 + 14);
  v159 = *(v144 + 8);
  v160 = *(v144 + 9);
  v10 = *(v144 + 10);
  v161 = v144;
  LOBYTE(v144) = v144[88];
  LOBYTE(v162) = BYTE1(v161[22]._os_unfair_lock_opaque);
  LODWORD(v163) = BYTE2(v161[22]._os_unfair_lock_opaque);

  v551 = v161;
  os_unfair_lock_unlock(v161 + 14);
  MEMORY[0x1EEE9AC00](v164);
  v546 = (v158 | 0x20800000000000);
  v621 = 0;
  v622 = 0;
  *&v619 = v166;
  *(&v619 + 1) = v167;
  v620 = __PAIR64__(v169, v168);
  if (!v170)
  {
    *&v615 = v166;
    *(&v615 + 1) = v167;
    v616 = __PAIR64__(v169, v168);
    v617 = 0;
    v618 = 0;
    LODWORD(v609[0]) = -1;
    v175 = fpfs_openfdbyhandle();
    if ((v175 & 0x80000000) == 0)
    {
      v179 = v175;
      v549 = v163;
      v180 = v162;
      v181 = v144;
      v182 = v159;
      goto LABEL_57;
    }

    v190 = v609[0];
    v177 = MEMORY[0x1D38683F0]();
    if (v190 < 0)
    {
      LODWORD(v610) = 0;
      BYTE4(v610) = 1;
    }

    else
    {
      LODWORD(v610) = v609[0];
      BYTE4(v610) = 0;
    }

    goto LABEL_84;
  }

  isEscapingClosureAtFileLocation = v548;
  MEMORY[0x1EEE9AC00](v165);
  v544 = &v619;
  v545 = sub_1CF2F6700;
  v546 = v174;
  if ((v173 & 0x1000000000000000) != 0)
  {
    goto LABEL_156;
  }

  if ((v173 & 0x2000000000000000) != 0)
  {
    v609[0] = v172;
    v609[1] = v173 & 0xFFFFFFFFFFFFFFLL;
    v621 = v609;
    v615 = v619;
    v616 = v620;
    v617 = v609;
    v618 = v622;
    v605 = -1;
    v175 = fpfs_openfdbyhandle();
    if ((v175 & 0x80000000) != 0)
    {
      v191 = v605;
      v177 = MEMORY[0x1D38683F0]();
      if ((v191 & 0x80000000) == 0)
      {
        v178 = v605;
        goto LABEL_67;
      }

LABEL_82:
      LODWORD(v610) = 0;
      BYTE4(v610) = 1;
      goto LABEL_84;
    }

LABEL_56:
    v179 = v175;
    v549 = v163;
    v180 = v162;
    v181 = v144;
    v182 = v159;
    goto LABEL_57;
  }

  if ((v172 & 0x1000000000000000) == 0)
  {
    goto LABEL_156;
  }

  v621 = ((v173 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v615 = v619;
  v616 = v620;
  v617 = v621;
  v618 = v622;
  LODWORD(v609[0]) = -1;
  v175 = fpfs_openfdbyhandle();
  if ((v175 & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  v176 = v609[0];
  v177 = MEMORY[0x1D38683F0]();
  if (v176 < 0)
  {
    goto LABEL_82;
  }

  v178 = v609[0];
LABEL_67:
  LODWORD(v610) = v178;
  BYTE4(v610) = 0;
LABEL_84:
  LOBYTE(v614) = 0;
  v186 = sub_1CF19BBE4(v177, &v610);
  sub_1CF1969CC(&v610);
  v187 = v601;
  v188 = v569;
  swift_willThrow();
LABEL_85:
  v267 = v186;
  LODWORD(v610) = sub_1CF9E5308();
  sub_1CF196978();
  sub_1CF9E5658();

LABEL_86:

  sub_1CF255928(&v623);
  v268 = v587;
  v269 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFDA34C(v187, v188, type metadata accessor for VFSItem);
  v270 = v186;
  v271 = sub_1CF9E6108();
  v272 = sub_1CF9E72A8();

  v273 = os_log_type_enabled(v271, v272);
  v81 = v604;
  v106 = v555;
  if (v273)
  {
    v274 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v596 = swift_slowAlloc();
    *&v610 = v596;
    *v274 = 136446466;
    v276 = sub_1CF255338();
    v277 = v188;
    v279 = v278;
    sub_1CEFD5338(v277, type metadata accessor for VFSItem);
    v280 = sub_1CEFD0DF0(v276, v279, &v610);
    v279, v281, v282, v283, v284, v285, v286, v287;
    *(v274 + 4) = v280;
    *(v274 + 12) = 2112;
    swift_getErrorValue();
    v288 = Error.prettyDescription.getter(v607, v608);
    *(v274 + 14) = v288;
    *v275 = v288;
    _os_log_impl(&dword_1CEFC7000, v271, v272, "Failed to bump urgency of coordinated item: %{public}s, error %@", v274, 0x16u);
    sub_1CEFCCC44(v275, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v289 = v553;
    v80 = v601;
    MEMORY[0x1D386CDC0](v275, -1, -1);
    v290 = v596;
    __swift_destroy_boxed_opaque_existential_1(v596);
    MEMORY[0x1D386CDC0](v290, -1, -1);
    MEMORY[0x1D386CDC0](v274, -1, -1);

    (v594[1])(v587, v595);
    v266 = v289;
    v265 = v554;
  }

  else
  {

    sub_1CEFD5338(v188, type metadata accessor for VFSItem);
    (v594[1])(v268, v595);
    v266 = v553;
    v265 = v554;
    v80 = v187;
  }

  while (1)
  {
    v140 = v598;
    if (!v106 || *v265 != 1 && (v265[*(v266 + 112)] & 1) == 0)
    {
      v74 = v567;
      Strong = objc_sync_enter(v567);
      if (Strong)
      {
        goto LABEL_162;
      }

      v291 = *(v74 + qword_1EDEADAA8);
      v292 = objc_sync_exit(v74);
      if (v292)
      {
        MEMORY[0x1EEE9AC00](v292);
        v546 = v74;
      }

      else
      {
        if ((v291 & 1) == 0)
        {
          (v602)(0);
          goto LABEL_111;
        }

LABEL_95:
        if (v106)
        {
          goto LABEL_96;
        }

        if ([v140 isCancelled])
        {
LABEL_103:
          sub_1CF9E50E8();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v347 = v589;
          v348 = v591;
          sub_1CF9E57D8();
          v134 = sub_1CF9E50D8();
          (*(v590 + 8))(v347, v348);
          goto LABEL_104;
        }

        v349 = v597[2];
        v350 = *v80;
        v351 = *(v80 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v352 = swift_allocObject();
        *(v352 + 32) = v350;
        v599 = (v352 + 32);
        v600 = v349;
        *(v352 + 40) = v351;
        *(v352 + 41) = 0;
        *(v352 + 16) = v350;
        *(v352 + 24) = v351;
        *(v352 + 25) = 0;
        v353 = objc_sync_enter(v349);
        if (v353)
        {
          MEMORY[0x1EEE9AC00](v353);
          v546 = v600;
          goto LABEL_168;
        }

        LODWORD(v596) = v600[qword_1EDEADAA8];
        v354 = objc_sync_exit(v600);
        v356 = v602;
        v355 = v603;
        if (!v354)
        {
          v357 = swift_allocObject();
          *(v357 + 16) = v356;
          *(v357 + 24) = v355;
          v602 = v357;

          v358 = fpfs_current_or_default_log();
          v359 = v568;
          sub_1CF9E6128();
          sub_1CEFD09A0(v81);
          sub_1CEFD09A0(v81);

          v360 = sub_1CF9E6108();
          v361 = sub_1CF9E7298();
          if (os_log_type_enabled(v360, v361))
          {
            v362 = swift_slowAlloc();
            v363 = swift_slowAlloc();
            *&v619 = v363;
            *v362 = 136315394;
            v364 = swift_beginAccess();
            v365 = *(v352 + 32);
            v366 = *(v352 + 40);
            if (*(v352 + 41))
            {
              v367 = NSFileProviderItemIdentifier.description.getter(v365);
              v369 = v368;
              sub_1CEFD0994(v365, v366, 1);
            }

            else
            {
              *&v610 = *(v352 + 32);
              BYTE8(v610) = v366;
              v367 = VFSItemID.description.getter(v364);
              v369 = v384;
            }

            v385 = sub_1CEFD0DF0(v367, v369, &v619);
            v369, v386, v387, v388, v389, v390, v391, v392;
            *(v362 + 4) = v385;
            *(v362 + 12) = 2080;
            v81 = v604;
            v393 = sub_1CEFD11AC(v604);
            v395 = v394;
            sub_1CEFD0A98(v81);
            sub_1CEFD0A98(v81);
            v396 = sub_1CEFD0DF0(v393, v395, &v619);
            v395, v397, v398, v399, v400, v401, v402, v403;
            *(v362 + 14) = v396;
            _os_log_impl(&dword_1CEFC7000, v360, v361, "Request to materialize content of itemID %s reason %s", v362, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v363, -1, -1);
            MEMORY[0x1D386CDC0](v362, -1, -1);

            v382 = v594[1];
            v383 = v568;
          }

          else
          {
            sub_1CEFD0A98(v81);
            sub_1CEFD0A98(v81);

            v382 = v594[1];
            v383 = v359;
          }

          v592 = v382;
          (v382)(v383, v595);
          v603 = v352;
          v404 = v561;
          LODWORD(v589) = (v81 >> 58) & 0x3C | (v81 >> 1) & 3;
          if (v589 == 2)
          {
            v405 = swift_projectBox();
            v406 = v556;
            sub_1CEFCCBDC(v405, v556, &unk_1EC4C4F40, qword_1CFA0F4C0);
            *(v406 + 8), v407, v408, v409, v410, v411, v412, v413;
            v414 = v557;
            v415 = *(v557 + 48);

            v416 = *(v406 + *(v414 + 80));
            (*(v585 + 8))(v406 + v415, v586);
          }

          else
          {
            v416 = 0;
          }

          v417 = v584;
          v418 = v562;
          v419 = v563;
          sub_1CEFCCBDC(&v600[qword_1EDEBBC18], v404, &qword_1EC4BFB10, &unk_1CFA12AD0);
          v420 = type metadata accessor for TelemetrySignposter(0);
          if ((*(*(v420 - 8) + 48))(v404, 1, v420) == 1)
          {
            sub_1CEFCCC44(v404, &qword_1EC4BFB10, &unk_1CFA12AD0);
            v421 = 1;
          }

          else
          {
            sub_1CF519DE8(v416, v417);
            sub_1CEFD5338(v404, type metadata accessor for TelemetrySignposter);
            v421 = 0;
          }

          v422 = type metadata accessor for TelemetrySignpost(0);
          (*(*(v422 - 8) + 56))(v417, v421, 1, v422);
          sub_1CEFCCBDC(v417, v419, qword_1EC4C1588, &unk_1CFA0A260);
          v423 = *(v418 + 80);
          v424 = (v423 + 16) & ~v423;
          v425 = v564;
          v426 = (v564 + v424 + 7) & 0xFFFFFFFFFFFFFFF8;
          v427 = swift_allocObject();
          v597 = v427;
          sub_1CEFE55D0(v419, v427 + v424, qword_1EC4C1588, &unk_1CFA0A260);
          v428 = (v427 + v426);
          v593 = sub_1CF900760;
          v429 = v602;
          *v428 = sub_1CF900760;
          v428[1] = v429;
          v430 = v565;
          sub_1CEFCCBDC(v417, v565, qword_1EC4C1588, &unk_1CFA0A260);
          v431 = (v423 + 24) & ~v423;
          v432 = (v431 + v425 + 31) & 0xFFFFFFFFFFFFFFF8;
          v590 = (v431 + v425 + 7) & 0xFFFFFFFFFFFFFFF8;
          v591 = (v432 + 15) & 0xFFFFFFFFFFFFFFF8;
          v433 = (v432 + 31) & 0xFFFFFFFFFFFFFFF8;
          v434 = (v433 + 15) & 0xFFFFFFFFFFFFFFF8;
          v435 = swift_allocObject();
          v436 = v604;
          *(v435 + 2) = v604;
          sub_1CEFE55D0(v430, v435 + v431, qword_1EC4C1588, &unk_1CFA0A260);
          v437 = v435 + v590;
          v438 = v436;
          *v437 = v593;
          *(v437 + 1) = v429;
          v439 = v596;
          v437[16] = v596;
          *(v435 + v432) = v600;
          v440 = v435 + v591;
          v441 = v603;
          *v440 = v603;
          v440[8] = 0;
          *(v435 + v433) = 0;
          v443 = v597;
          v442 = v598;
          *(v435 + v434) = v598;
          v444 = v435 + ((v434 + 15) & 0xFFFFFFFFFFFFFFF8);
          v445 = v441;
          *v444 = sub_1CF903314;
          *(v444 + 1) = v443;
          v444[16] = 1;
          if (v439)
          {
            v446 = 2;
          }

          else
          {
            v446 = 1;
          }

          LODWORD(v591) = v446;
          v447 = objc_allocWithZone(MEMORY[0x1E696AE38]);

          sub_1CEFD09A0(v438);

          v448 = v442;

          v449 = [v447 init];
          v450 = swift_allocObject();
          v450[2] = sub_1CF903318;
          v450[3] = v435;
          v450[4] = v438;
          sub_1CEFD09A0(v438);

          sub_1CEFD09A0(v438);
          v593 = v435;

          v451 = fpfs_current_or_default_log();
          v452 = v566;
          sub_1CF9E6128();
          sub_1CEFD09A0(v438);
          sub_1CEFD09A0(v438);

          v453 = sub_1CF9E6108();
          v454 = sub_1CF9E7298();
          if (os_log_type_enabled(v453, v454))
          {
            LODWORD(v588) = v454;
            v598 = v450;
            v590 = v449;
            v455 = swift_slowAlloc();
            v587 = swift_slowAlloc();
            v609[0] = v587;
            *v455 = 136315906;
            v456 = swift_beginAccess();
            v457 = v445[4];
            v458 = *(v445 + 40);
            if (*(v445 + 41))
            {
              v459 = NSFileProviderItemIdentifier.description.getter(v457);
              v461 = v460;
              sub_1CEFD0994(v457, v458, 1);
            }

            else
            {
              *&v610 = v445[4];
              BYTE8(v610) = v458;
              v459 = VFSItemID.description.getter(v456);
              v461 = v462;
            }

            v463 = sub_1CEFD0DF0(v459, v461, v609);
            v461, v464, v465, v466, v467, v468, v469, v470;
            *(v455 + 4) = v463;
            *(v455 + 12) = 2080;
            if (v596)
            {
              v471 = 0xD000000000000010;
            }

            else
            {
              v471 = 0x74616761706F7270;
            }

            if (v596)
            {
              v472 = 0x80000001CFA2C3C0;
            }

            else
            {
              v472 = 0xED000053466F5465;
            }

            v473 = sub_1CEFD0DF0(v471, v472, v609);
            v472, v474, v475, v476, v477, v478, v479, v480;
            *(v455 + 14) = v473;
            *(v455 + 22) = 2080;
            v438 = v604;
            v481 = sub_1CEFD11AC(v604);
            v483 = v482;
            sub_1CEFD0A98(v438);
            sub_1CEFD0A98(v438);
            v484 = sub_1CEFD0DF0(v481, v483, v609);
            v483, v485, v486, v487, v488, v489, v490, v491;
            *(v455 + 24) = v484;
            *(v455 + 32) = 2048;
            *(v455 + 34) = 0;
            _os_log_impl(&dword_1CEFC7000, v453, v588, "Lookup itemID %s with behavior %s request %s iteration %ld", v455, 0x2Au);
            v492 = v587;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v492, -1, -1);
            MEMORY[0x1D386CDC0](v455, -1, -1);

            (v592)(v452, v595);
            v445 = v603;
            v449 = v590;
            v450 = v598;
          }

          else
          {
            sub_1CEFD0A98(v438);
            sub_1CEFD0A98(v438);

            (v592)(v452, v595);
          }

          swift_beginAccess();
          v493 = v445[4];
          v494 = *(v445 + 40);
          if (*(v445 + 41))
          {
            v495 = v449;
            v496 = qword_1EDEA34B0;
            v497 = v493;
            if (v496 != -1)
            {
              swift_once();
            }

            v498 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v500 = v499;
            v502 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v508 = v501;
            if (v498 == v502 && v500 == v501)
            {
              v500, v501, v502, v503, v504, v505, v506, v507;
              v508, v509, v510, v511, v512, v513, v514, v515;
              sub_1CEFD0994(v493, v494, 1);
              v449 = v495;
LABEL_146:
              sub_1CF90CAC8(v438, sub_1CF796A0C, v450);
LABEL_152:

              sub_1CEFD0A98(v438);

              sub_1CEFCCC44(v584, qword_1EC4C1588, &unk_1CFA0A260);
              goto LABEL_153;
            }

            v516 = sub_1CF9E8048();
            v500, v517, v518, v519, v520, v521, v522, v523;
            v508, v524, v525, v526, v527, v528, v529, v530;
            sub_1CEFD0994(v493, v494, 1);
            v445 = v603;
            v449 = v495;
            if (v516)
            {
              goto LABEL_146;
            }
          }

          else if (!v493 && v494 == 2)
          {
            goto LABEL_146;
          }

          if (v589 == 30)
          {
            v531 = *((v438 & 0xFFFFFFFFFFFFFF9) + 0x10);
            v532 = v531;
          }

          else
          {
            v533 = swift_allocObject();
            *(v533 + 16) = v438;
            v532 = v533 | 0x7000000000000004;
            v531 = v438;
          }

          v534 = v591;
          sub_1CEFD09A0(v531);
          v535 = swift_allocObject();
          *(v535 + 16) = sub_1CF796A0C;
          *(v535 + 24) = v450;
          v536 = v600;
          *(v535 + 32) = v600;
          *(v535 + 40) = v534;
          *(v535 + 48) = v438;
          *(v535 + 56) = v445;
          *(v535 + 64) = 0;
          *(v535 + 72) = v449;
          *(v535 + 80) = 0;
          v537 = swift_allocObject();
          v598 = v450;
          v538 = v449;
          v539 = v537;
          *(v537 + 16) = v445;
          *(v537 + 24) = v536;
          *(v537 + 32) = 0;
          *(v537 + 40) = sub_1CF796A90;
          *(v537 + 48) = v535;
          *(v537 + 56) = v532;
          v540 = v532;
          v541 = swift_allocObject();
          *(v541 + 16) = sub_1CF796A90;
          *(v541 + 24) = v535;

          sub_1CEFD09A0(v438);

          v542 = v538;
          sub_1CEFD09A0(v540);
          sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v541, sub_1CF796A9C, v539);

          v449 = v538;

          sub_1CEFD0A98(v540);
          goto LABEL_152;
        }

        MEMORY[0x1EEE9AC00](v354);
        v546 = v600;
      }

LABEL_170:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v544, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_96:
    if ([v140 isCancelled])
    {
      goto LABEL_103;
    }

    v163 = *(*(v597[2] + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v293 = swift_dynamicCastClassUnconditional();
    v294 = *v80;
    v295 = *(v80 + 8);

    v296 = [v599 description];
    v297 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v299 = v298;

    v597 = v548;
    MEMORY[0x1EEE9AC00](v300);
    v548[-6] = v294;
    LOBYTE(v548[-5]) = v295;
    v544 = v297;
    v545 = v299;
    v596 = v299;
    v546 = v293;
    v144 = v301;
    v159 = fpfs_current_log();
    v595 = fpfs_adopt_log();
    *&v615 = 0;
    BYTE8(v615) = 1;
    *&v610 = sub_1CF9E73C8();
    *(&v610 + 1) = v302;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v58 = 40;
    v74 = 2;
    v303 = sub_1CF9E7988();
    v305 = v304;
    MEMORY[0x1D3868CC0](v303);
    v305, v306, v307, v308, v309, v310, v311, v312;
    v313 = *(&v610 + 1);
    sub_1CF9E6978();
    v313, v314, v315, v316, v317, v318, v319, v320;
    v321 = __fp_log_fork();

    v594 = v548;
    *&v615 = v321;
    BYTE8(v615) = 0;
    MEMORY[0x1EEE9AC00](v322);
    v548[-8] = v159;
    v548[-7] = &v615;
    v548[-6] = v144;
    v548[-5] = "registerMoveOutPreprocessing(below:for:)";
    v544 = 40;
    LOBYTE(v545) = 2;
    v546 = sub_1CF900C34;
    v547 = &v548[-8];
    v619 = 0uLL;
    v609[0] = 0;
    v323 = swift_allocObject();
    v323[2] = &v619;
    v323[3] = sub_1CF900C5C;
    v323[4] = &v548[-10];
    v323[5] = v609;
    v162 = swift_allocObject();
    *(v162 + 16) = sub_1CF900C9C;
    *(v162 + 24) = v323;
    v613 = sub_1CF1C0B54;
    v614 = v162;
    *&v610 = MEMORY[0x1E69E9820];
    *(&v610 + 1) = 1107296256;
    v611 = sub_1CEFFD02C;
    v612 = &block_descriptor_5409;
    v324 = _Block_copy(&v610);
    v160 = v614;

    FPDispatchAsyncAndWait(v144, v324);
    _Block_release(v324);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_156:
    v548[1] = isEscapingClosureAtFileLocation;
    v549 = v163;
    v180 = v162;
    v181 = v144;
    v182 = v159;
    v543 = v550;
    v175 = sub_1CF9E7938();
    v550 = v543;
    if (v543)
    {
      v187 = v601;
      v188 = v569;
      v186 = v550;
      goto LABEL_85;
    }

    v179 = v606;
LABEL_57:
    v74 = v548;
    MEMORY[0x1EEE9AC00](v175);
    LOBYTE(v547) = 4;
    HIDWORD(v547) = v179;
    *&v610 = 0;
    LOBYTE(v619) = 1;
    MEMORY[0x1EEE9AC00](v183);
    v548[-10] = v182;
    v548[-9] = v160;
    v548[-8] = v10;
    LOBYTE(v548[-7]) = v181;
    BYTE1(v548[-7]) = v180;
    BYTE2(v548[-7]) = v549;
    HIDWORD(v548[-7]) = v179;
    v548[-6] = 0;
    v548[-5] = &v619;
    v544 = sub_1CF902E54;
    v545 = v184;
    v546 = &v610;
    v185 = v550;
    Strong = sub_1CEFE1894(sub_1CF903424);
    if (v185)
    {
      v186 = v185;
      v187 = v601;
      v188 = v569;
LABEL_61:

      if ((v179 & 0x80000000) == 0)
      {
        close(v179);
      }

      goto LABEL_86;
    }

    v186 = v610;
    v187 = v601;
    v188 = v569;
    if (v610)
    {
      swift_willThrow();
      v189 = v186;
      goto LABEL_61;
    }

    if (v619)
    {
      goto LABEL_161;
    }

    v80 = v601;
    if ((v179 & 0x80000000) == 0)
    {
      close(v179);
    }

    sub_1CF255928(&v623);
    v81 = v604;
LABEL_72:
    v192 = v597;
    v193 = v597[2];
    v194 = v574;
    sub_1CEFDA34C(v80, v574, type metadata accessor for VFSItem);
    v195 = (*(v552 + 80) + 24) & ~*(v552 + 80);
    v196 = (v58 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
    v197 = swift_allocObject();
    *(v197 + 16) = v192;
    sub_1CEFDA0C4(v194, v197 + v195, type metadata accessor for VFSItem);
    v587 = v197;
    *(v197 + v196) = v81;
    v567 = v193;

    sub_1CEFD09A0(v81);
    v574 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v198 = qword_1EDEBBE40;
    v200 = v579;
    v199 = v580;
    v201 = v592;
    (*(v579 + 56))(v592, 1, 1, v580);
    strcpy(&v610, "async batch ");
    BYTE13(v610) = 0;
    HIWORD(v610) = -5120;
    v202 = sub_1CF9E7988();
    v204 = v203;
    MEMORY[0x1D3868CC0](v202);
    v204, v205, v206, v207, v208, v209, v210, v211;
    v212 = *(&v610 + 1);
    v569 = v610;
    v213 = v575;
    sub_1CEFCCBDC(v201, v575, &unk_1EC4BED20, &unk_1CFA00700);
    v214 = *(v200 + 48);
    if (v214(v213, 1, v199) == 1)
    {
      v215 = v198;
      v216 = v573;
      sub_1CF9E6048();
      v217 = v214(v213, 1, v199);
      v218 = v572;
      if (v217 != 1)
      {
        sub_1CEFCCC44(v213, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v216 = v573;
      (*(v200 + 32))(v573, v213, v199);
      v218 = v572;
    }

    v219 = *(v200 + 16);
    v220 = v200;
    v221 = v593;
    v219(v593, v216, v199);
    *(v221 + *(v218 + 20)) = v198;
    v222 = v221 + *(v218 + 24);
    *v222 = "DB queue wait";
    *(v222 + 1) = 13;
    v222[16] = 2;
    v223 = v198;
    v224 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v225 = v199;
    v226 = swift_allocObject();
    *(v226 + 16) = xmmword_1CF9FA450;
    *(v226 + 56) = MEMORY[0x1E69E6158];
    *(v226 + 64) = sub_1CEFD51C4();
    *(v226 + 32) = v569;
    *(v226 + 40) = v212;
    v546 = v226;
    LOBYTE(v545) = 2;
    sub_1CF9E6028(v224, &dword_1CEFC7000, v223, "DB queue wait", 13, 2, v221, "%s", 2);
    v226, v227, v228, v229, v230, v231, v232, v233;
    (*(v220 + 8))(v216, v225);
    sub_1CEFCCC44(v592, &unk_1EC4BED20, &unk_1CFA00700);
    v580 = v567[21];
    v592 = v567[8];
    v575 = sub_1CF9E6448();
    v579 = *(v575 - 8);
    (*(v579 + 56))(v596, 1, 1, v575);
    v234 = v578;
    sub_1CEFDA34C(v221, v578, type metadata accessor for Signpost);
    v235 = (*(v576 + 80) + 16) & ~*(v576 + 80);
    v236 = (v577 + v235 + 7) & 0xFFFFFFFFFFFFFFF8;
    v237 = swift_allocObject();
    v577 = type metadata accessor for Signpost;
    sub_1CEFDA0C4(v234, v237 + v235, type metadata accessor for Signpost);
    v238 = (v237 + v236);
    v578 = nullsub_1;
    *v238 = nullsub_1;
    v238[1] = 0;
    v239 = v581;
    sub_1CEFDA34C(v221, v581, type metadata accessor for Signpost);
    v240 = (v236 + 23) & 0xFFFFFFFFFFFFFFF8;
    v241 = (v240 + 15) & 0xFFFFFFFFFFFFFFF8;
    v242 = (v241 + 25) & 0xFFFFFFFFFFFFFFF8;
    v243 = (v242 + 23) & 0xFFFFFFFFFFFFFFF8;
    v244 = swift_allocObject();
    sub_1CEFDA0C4(v239, v244 + v235, v577);
    v245 = (v244 + v236);
    *v245 = sub_1CF045408;
    v245[1] = 0;
    *(v244 + v240) = v567;
    v246 = v244 + v241;
    *v246 = "startProvidingItem(at:readerID:readingOptions:request:completionHandler:)";
    *(v246 + 8) = 73;
    *(v246 + 16) = 2;
    v247 = (v244 + v242);
    v248 = v579;
    *v247 = v578;
    v247[1] = 0;
    v249 = (v244 + v243);
    v250 = v587;
    *v249 = sub_1CF900EA4;
    v249[1] = v250;
    v251 = swift_allocObject();
    v251[2] = sub_1CF903308;
    v251[3] = v237;
    v252 = v580;
    v251[4] = v580;

    v581 = v237;

    v253 = fpfs_current_log();
    v254 = v252[2];
    v255 = v582;
    sub_1CEFCCBDC(v596, v582, &unk_1EC4BE370, qword_1CFA01B30);
    v256 = v575;
    if ((*(v248 + 48))(v255, 1) == 1)
    {
      sub_1CEFCCC44(v255, &unk_1EC4BE370, qword_1CFA01B30);
      v257 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v258 = v558;
      sub_1CF9E6438();
      (*(v248 + 8))(v255, v256);
      v257 = sub_1CF9E63C8();
      (*(v559 + 8))(v258, v560);
    }

    v259 = swift_allocObject();
    v259[2] = v253;
    v259[3] = sub_1CF4858EC;
    v259[4] = v244;
    v613 = sub_1CF2BA17C;
    v614 = v259;
    *&v610 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    *(&v610 + 1) = 1107296256;
    v611 = sub_1CEFCA444;
    v612 = &block_descriptor_5441;
    v260 = _Block_copy(&v610);
    v261 = v253;

    v613 = sub_1CF2BA180;
    v614 = v251;
    *&v610 = MEMORY[0x1E69E9820];
    *(&v610 + 1) = 1107296256;
    v611 = sub_1CEFCA444;
    v612 = &block_descriptor_5444;
    v262 = _Block_copy(&v610);

    fp_task_tracker_async_and_qos(v254, v592, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v257, v260, v262);
    _Block_release(v262);
    _Block_release(v260);

    sub_1CEFCCC44(v596, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v593, type metadata accessor for Signpost);
    v263 = v574;
    v264 = fpfs_adopt_log();

    v80 = v601;
    v81 = v604;
    v266 = v553;
    v265 = v554;
    v106 = v555;
  }

  v142 = v609[0];
  if (v609[0])
  {
    swift_willThrow();
    sub_1CEFF7124(v619, *(&v619 + 1));

    v143 = fpfs_adopt_log();
    __break(1u);
LABEL_165:
    MEMORY[0x1EEE9AC00](v143);
    v546 = v142;
    goto LABEL_168;
  }

  v325 = v619;
  if (!v619)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    MEMORY[0x1EEE9AC00](Strong);
    v546 = v74;
LABEL_168:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v544, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v326 = *(&v619 + 1);

  v327 = v595;
  v328 = fpfs_adopt_log();

  v596, v329, v330, v331, v332, v333, v334, v335;

  v336 = swift_allocObject();
  *(v336 + 16) = v325;
  *(v336 + 24) = v326;
  v337 = swift_allocObject();
  v337[2] = sub_1CF900CA8;
  v337[3] = v336;
  v338 = v603;
  v337[4] = v602;
  v337[5] = v338;
  v340 = v599;
  v339 = v600;
  v341 = v598;
  v337[6] = v600;
  v337[7] = v341;
  v337[8] = v340;
  v342 = *&v339[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v343 = swift_unknownObjectWeakLoadStrong();

  v344 = v341;

  v345 = v339;
  v346 = v340;
  v602 = v342;
  v600 = v345;
  v597 = v336;
  if (v343)
  {
    v603 = [v343 log];
  }

  else
  {
    v603 = 0;
  }

  v370 = v570;
  v371 = v571;
  v373 = v585;
  v372 = v586;
  (*(v585 + 16))(v570, v583, v586);
  v374 = (*(v373 + 80) + 24) & ~*(v373 + 80);
  v375 = (v371 + v374 + 7) & 0xFFFFFFFFFFFFFFF8;
  v376 = swift_allocObject();
  v377 = v600;
  *(v376 + 16) = v600;
  (*(v373 + 32))(v376 + v374, v370, v372);
  v378 = v604;
  *(v376 + v375) = v604;
  v379 = v376 + ((v375 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v379 = sub_1CF900CD0;
  *(v379 + 8) = v337;
  *(v379 + 16) = 0;
  sub_1CEFD09A0(v378);
  v380 = v377;

  v381 = v603;
  sub_1CF01001C(v603, "item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF902D80, v376);

LABEL_153:
  v129 = v601;
LABEL_154:
  sub_1CEFD5338(v129, type metadata accessor for VFSItem);
}

void sub_1CF85E67C(void *a1@<X0>, uint64_t *a3@<X2>, BOOL *a4@<X8>)
{
  v5 = v4;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = *(a3 + 8);
  v14 = *a3;
  v15 = v11;

  sub_1CF68DDB0(&v14, v10, v8, v9, __src);
  if (v5)
  {
  }

  else
  {

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v13, __src, sizeof(v13));
    *a4 = sub_1CF08B99C(v13) != 1 && (sub_1CEFCCC44(__dst, &unk_1EC4BFC20, &unk_1CFA0A290), (v13[512] & 2) != 0);
  }
}

void sub_1CF85E794(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v50 = a4;
  v7 = sub_1CF9E5CF8();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = *(v10 + 40);
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = *(a3 + 8);
  v78 = *a3;
  v79 = v15;
  v16 = *(v13 + 8);

  v17 = v14;
  v18 = v53;
  sub_1CF68DDB0(&v78, v17, v12, v16, v80);
  if (v18)
  {

    return;
  }

  v49 = v10;

  memcpy(v76, v80, sizeof(v76));
  memcpy(v77, v80, sizeof(v77));
  if (sub_1CF08B99C(v77) == 1)
  {

    return;
  }

  v19 = v77[31];
  if (!v77[31])
  {
    goto LABEL_14;
  }

  v53 = v11;
  v20 = a1[3];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  v59 = v19;
  v47 = (*v53 + 264);
  v48 = v22;
  v46 = *v47;
  v23 = *(v21 + 8);
  v24 = v19;
  (v46)(&v60, &v59, v48, v20, v23);
  v54[12] = v72;
  v54[13] = v73;
  v54[14] = v74;
  v54[8] = v68;
  v54[9] = v69;
  v54[10] = v70;
  v54[11] = v71;
  v54[4] = v64;
  v54[5] = v65;
  v54[6] = v66;
  v54[7] = v67;
  v54[0] = v60;
  v54[1] = v61;
  v54[2] = v62;
  v54[3] = v63;
  v56[12] = v72;
  v56[13] = v73;
  v57 = v74;
  v56[8] = v68;
  v56[9] = v69;
  v56[10] = v70;
  v56[11] = v71;
  v56[4] = v64;
  v56[5] = v65;
  v56[6] = v66;
  v56[7] = v67;
  v56[0] = v60;
  v56[1] = v61;
  v55 = v75;
  v58 = v75;
  v56[2] = v62;
  v56[3] = v63;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v56) == 1 || (v25 = v57, , sub_1CEFCCC44(v54, &qword_1EC4BECF0, &unk_1CF9FEEB0), !v25))
  {

    sub_1CEFCCC44(v76, &unk_1EC4BFC20, &unk_1CFA0A290);

    return;
  }

  v33 = v24;
  v34 = *v25->tree;
  v25, v26, v27, v28, v29, v30, v31, v32;
  if (!v34)
  {

    goto LABEL_14;
  }

  v35 = a1[3];
  v47 = a1[4];
  v48 = v35;
  v46 = __swift_project_boxed_opaque_existential_1(a1, v35);
  v49 = sub_1CF033A74();
  v36 = v33;
  v37 = sub_1CF9042A4(v50);
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE0, &unk_1CFA18220);
  v40 = swift_allocObject();
  v41 = *(*v40 + 632);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 1;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0;
  *(v40 + 96) = xmmword_1CF9FEC30;
  *(v40 + 112) = 0;
  *(v40 + 120) = v37;
  *(v40 + 128) = v39;
  *(v40 + 136) = 0x8000000;
  *(v40 + 144) = v36;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v44 = v43;
  (*(v51 + 8))(v9, v52);
  v45 = v44 * 1000000000.0;
  if (COERCE__INT64(fabs(v44 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v45 < 9.22337204e18)
  {
    sub_1CF5215C0(v40, v45, v46, v48, v47);

LABEL_14:

    sub_1CEFCCC44(v76, &unk_1EC4BFC20, &unk_1CFA0A290);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1CF85ED8C(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - v5);
  sub_1CEFCCBDC(a1, &v9 - v5, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = v7;
    a2(v7);
  }

  else
  {
    a2(0);
    sub_1CEFCCC44(v6, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

void sub_1CF85EEA4(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, char *a7, void *a8, void *a9)
{
  if (a2)
  {
    a3();
    v13 = a1;
LABEL_10:
    a5(v13);
    return;
  }

  if (!a1)
  {
    a3();
    v13 = 0;
    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v23 = [objc_allocWithZone(FPDDownloader) initWithDomain:Strong callbackQueue:*&a7[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue]];

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_1CF900FB8;
    v31 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1CEFCA444;
    v29 = &block_descriptor_5457;
    v18 = _Block_copy(&aBlock);

    sub_1CF03C63C(sub_1CF900FB8, v17);

    [a8 setCancellationHandler_];
    _Block_release(v18);

    if ([a9 isFromPOSIX])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    v20[5] = a3;
    v20[6] = a4;
    v30 = sub_1CF901014;
    v31 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1CF00A468;
    v29 = &block_descriptor_5454;
    v21 = _Block_copy(&aBlock);

    v22 = a7;

    [v23 downloadItem:a1 recursively:v19 request:a9 withCompletion:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF85F158(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong cancel];
  }
}

double sub_1CF85F1B4(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v29[1] = a3;
  v30 = a2;
  v36 = sub_1CF9E63A8();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1CF9E6448();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6388();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1CF9E6498();
  v31 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v29 - v21;
  v30(a1, v20);
  v32 = *(v32 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  sub_1CF9E6478();
  *v14 = 200;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7F38], v11);
  MEMORY[0x1D3868740](v18, v14);
  (*(v12 + 8))(v14, v11);
  v23 = *(v16 + 8);
  v23(v18, v15);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v33;
  *(v24 + 24) = v25;
  aBlock[4] = sub_1CEFFD05C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_5463;
  v26 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v27 = v36;
  sub_1CF9E77B8();
  MEMORY[0x1D38695B0](v22, v10, v8, v26);
  _Block_release(v26);
  (*(v38 + 8))(v8, v27);
  (*(v35 + 8))(v10, v37);
  v23(v22, v31);

  return result;
}

uint64_t FPDDomainFPFSBackend.downloadItem(with:request:progress:completionHandler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v66 = a5;
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for Signpost(0);
  v58 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v59 = v17;
  v60 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v7 + 56))(v15, 1, 1, v6);
  v61 = a1;
  v22 = [a1 description];
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v56 = v24;
  v57 = v23;

  sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(v7 + 48);
  if (v25(v12, 1, v6) == 1)
  {
    v26 = v21;
    sub_1CF9E6048();
    v27 = v9;
    if (v25(v12, 1, v6) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v9;
    (*(v7 + 32))(v9, v12, v6);
  }

  (*(v7 + 16))(v20, v27, v6);
  *&v20[*(v16 + 20)] = v21;
  v28 = &v20[*(v16 + 24)];
  *v28 = "Materialization";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v29 = v27;
  v30 = v21;
  v31 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v56;
  *(v32 + 32) = v57;
  *(v32 + 40) = v33;
  sub_1CF9E6028(v31, &dword_1CEFC7000, v30, "Materialization", 15, 2, v20, "%s", 2);
  v32, v34, v35, v36, v37, v38, v39, v40;
  (*(v7 + 8))(v29, v6);
  sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  v41 = v60;
  sub_1CEFDA34C(v20, v60, type metadata accessor for Signpost);
  v42 = (*(v58 + 80) + 40) & ~*(v58 + 80);
  v43 = (v59 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v46 = v61;
  v45 = v62;
  v44[2] = v61;
  v44[3] = v45;
  v47 = v63;
  v44[4] = v63;
  sub_1CEFDA0C4(v41, v44 + v42, type metadata accessor for Signpost);
  v48 = (v44 + v43);
  v49 = v64;
  v50 = v66;
  *v48 = v64;
  v48[1] = v50;
  swift_retain_n();
  v51 = v46;
  v52 = v45;
  v53 = v47;
  sub_1CF8EC6D8("downloadItem(with:request:progress:completionHandler:)", 54, 2, sub_1CF8F095C, v44, v65, v49, v50);

  return sub_1CEFD5338(v20, type metadata accessor for Signpost);
}

double sub_1CF85FD5C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void))
{
  v194 = a7;
  v207 = a6;
  v192 = a5;
  v199 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v193 = &v192 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v195 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v198 = (&v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v196 = &v192 - v15;
  v197 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v206 = &v192 - v18;
  v19 = sub_1CF9E6118();
  v204 = *(v19 - 8);
  v205 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v203 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v202 = &v192 - v22;
  v23 = type metadata accessor for Signpost(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  *(v27 + 16) = [a2 identifier];
  *(v27 + 24) = a3;
  v208 = *(a1 + 16);
  v28 = a3;
  v29 = sub_1CEFD4E9C([a2 identifier]);
  sub_1CEFDA34C(v192, v26, type metadata accessor for Signpost);
  v30 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v31 = (v25 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v34 + v30;
  v36 = v27;
  sub_1CEFDA0C4(v26, v35, type metadata accessor for Signpost);
  v37 = (v34 + v31);
  v38 = v194;
  *v37 = v207;
  v37[1] = v38;
  *(v34 + v32) = a1;
  v39 = v29;
  v40 = v202;
  v207 = v34;
  *(v34 + v33) = a2;

  v41 = a2;
  v42 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();

  v43 = sub_1CF9E6108();
  v44 = sub_1CF9E7298();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v27;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v209[0] = v47;
    *v46 = 136315394;
    v48 = swift_beginAccess();
    v49 = *(v39 + 32);
    v50 = *(v39 + 40);
    if (*(v39 + 41))
    {
      v51 = NSFileProviderItemIdentifier.description.getter(v49);
      v53 = v52;
      sub_1CEFD0994(v49, v50, 1);
    }

    else
    {
      v211 = *(v39 + 32);
      v212 = v50;
      v51 = VFSItemID.description.getter(v48);
      v53 = v56;
    }

    v57 = sub_1CEFD0DF0(v51, v53, v209);
    v53, v58, v59, v60, v61, v62, v63, v64;
    *(v46 + 4) = v57;
    *(v46 + 12) = 2080;
    v36 = v45;
    v65 = sub_1CEFD11AC(v45);
    v67 = v66;

    v68 = sub_1CEFD0DF0(v65, v67, v209);
    v67, v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 14) = v68;
    _os_log_impl(&dword_1CEFC7000, v43, v44, "Request to materialize content of itemID %s reason %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v47, -1, -1);
    MEMORY[0x1D386CDC0](v46, -1, -1);

    v54 = *(v204 + 8);
    v55 = v202;
  }

  else
  {

    v54 = *(v204 + 8);
    v55 = v40;
  }

  v194 = v54;
  v54(v55, v205);
  v76 = v206;
  v77 = v193;
  sub_1CEFCCBDC(v208 + qword_1EDEBBC18, v193, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v78 = type metadata accessor for TelemetrySignposter(0);
  v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
  v200 = v39;
  v201 = v36;
  if (v79 == 1)
  {
    sub_1CEFCCC44(v77, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v80 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v76);
    sub_1CEFD5338(v77, type metadata accessor for TelemetrySignposter);
    v80 = 0;
  }

  v81 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v81 - 8) + 56))(v76, v80, 1, v81);
  v82 = v196;
  sub_1CEFCCBDC(v76, v196, qword_1EC4C1588, &unk_1CFA0A260);
  v83 = *(v195 + 80);
  v84 = (v83 + 16) & ~v83;
  v85 = v197;
  v86 = (v197 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  sub_1CEFE55D0(v82, v87 + v84, qword_1EC4C1588, &unk_1CFA0A260);
  v88 = (v87 + v86);
  v89 = v207;
  *v88 = sub_1CF900518;
  v88[1] = v89;
  v90 = v198;
  sub_1CEFCCBDC(v76, v198, qword_1EC4C1588, &unk_1CFA0A260);
  v91 = (v83 + 24) & ~v83;
  v197 = (v91 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v91 + v85 + 31) & 0xFFFFFFFFFFFFFFF8;
  v202 = ((v92 + 15) & 0xFFFFFFFFFFFFFFF8);
  v93 = (v92 + 31) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  v97 = v201;
  *(v96 + 16) = v201;
  sub_1CEFE55D0(v90, v96 + v91, qword_1EC4C1588, &unk_1CFA0A260);
  v98 = v96 + v197;
  v100 = v207;
  v99 = v208;
  *v98 = sub_1CF900518;
  *(v98 + 8) = v100;
  *(v98 + 16) = 0;
  *(v96 + v92) = v99;
  v101 = &v202[v96];
  v103 = v199;
  v102 = v200;
  *v101 = v200;
  v101[8] = 0;
  *(v96 + v93) = 1;
  v104 = v97;
  *(v96 + v94) = v103;
  v105 = v102;
  v106 = v96 + v95;
  *v106 = sub_1CF903314;
  *(v106 + 8) = v87;
  *(v106 + 16) = 1;
  v107 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v108 = v103;
  v202 = v87;

  v109 = [v107 init];
  v110 = swift_allocObject();
  v110[2] = sub_1CF903318;
  v110[3] = v96;
  v110[4] = v97;
  swift_retain_n();
  v199 = v96;
  swift_retain_n();
  v111 = fpfs_current_or_default_log();
  v112 = v203;
  sub_1CF9E6128();
  swift_retain_n();

  v113 = sub_1CF9E6108();
  v114 = sub_1CF9E7298();
  if (os_log_type_enabled(v113, v114))
  {
    v198 = v110;
    v197 = v109;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v210 = v116;
    *v115 = 136315906;
    v117 = swift_beginAccess();
    v118 = *(v105 + 32);
    v119 = *(v105 + 40);
    if (*(v105 + 41))
    {
      v120 = NSFileProviderItemIdentifier.description.getter(v118);
      v122 = v121;
      sub_1CEFD0994(v118, v119, 1);
    }

    else
    {
      v211 = *(v105 + 32);
      v212 = v119;
      v120 = VFSItemID.description.getter(v117);
      v122 = v124;
    }

    v125 = v206;
    v126 = sub_1CEFD0DF0(v120, v122, &v210);
    v122, v127, v128, v129, v130, v131, v132, v133;
    *(v115 + 4) = v126;
    *(v115 + 12) = 2080;
    *(v115 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v210);
    *(v115 + 22) = 2080;
    v134 = sub_1CEFD11AC(v104);
    v136 = v135;

    v137 = sub_1CEFD0DF0(v134, v136, &v210);
    v136, v138, v139, v140, v141, v142, v143, v144;
    *(v115 + 24) = v137;
    *(v115 + 32) = 2048;
    *(v115 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v113, v114, "Lookup itemID %s with behavior %s request %s iteration %ld", v115, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v116, -1, -1);
    MEMORY[0x1D386CDC0](v115, -1, -1);

    v194(v203, v205);
    v109 = v197;
    v110 = v198;
    v123 = v125;
  }

  else
  {

    v194(v112, v205);
    v123 = v206;
  }

  swift_beginAccess();
  v145 = *(v105 + 32);
  v146 = *(v105 + 40);
  if ((*(v105 + 41) & 1) == 0)
  {
    if (!v145 && v146 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v147 = qword_1EDEA34B0;
  v148 = v145;
  if (v147 != -1)
  {
    swift_once();
  }

  v149 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v151 = v150;
  v153 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v159 = v149;
  v160 = v152;
  if (v159 != v153 || v151 != v152)
  {
    v168 = sub_1CF9E8048();
    v151, v169, v170, v171, v172, v173, v174, v175;
    v160, v176, v177, v178, v179, v180, v181, v182;
    sub_1CEFD0994(v145, v146, 1);
    if (v168)
    {
      goto LABEL_24;
    }

LABEL_26:
    v183 = swift_allocObject();
    *(v183 + 16) = v104;
    v184 = v183 | 0x7000000000000004;
    v185 = swift_allocObject();
    *(v185 + 16) = sub_1CF796A0C;
    *(v185 + 24) = v110;
    v198 = v110;
    v186 = v208;
    *(v185 + 32) = v208;
    *(v185 + 40) = 1;
    *(v185 + 48) = v104;
    *(v185 + 56) = v105;
    *(v185 + 64) = 0;
    *(v185 + 72) = v109;
    *(v185 + 80) = 0;
    v187 = swift_allocObject();
    *(v187 + 16) = v105;
    *(v187 + 24) = v186;
    *(v187 + 32) = 0;
    *(v187 + 40) = sub_1CF796A90;
    *(v187 + 48) = v185;
    *(v187 + 56) = v184;
    v188 = v109;
    v189 = swift_allocObject();
    *(v189 + 16) = sub_1CF796A90;
    *(v189 + 24) = v185;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v190 = v188;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v189, sub_1CF796A9C, v187);

    v109 = v188;
    v123 = v206;
    goto LABEL_27;
  }

  v151, v152, v153, v154, v155, v156, v157, v158;
  v160, v161, v162, v163, v164, v165, v166, v167;
  sub_1CEFD0994(v145, v146, 1);
LABEL_24:
  sub_1CF90CAC8(v104, sub_1CF796A0C, v110);

LABEL_27:

  sub_1CEFCCC44(v123, qword_1EC4C1588, &unk_1CFA0A260);

  return result;
}

uint64_t sub_1CF860BD8(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5, void *a6)
{
  v38 = a6;
  v39 = a5;
  v40 = a4;
  v41 = a3;
  v42 = a2;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v35 - v22);
  sub_1CEFCCBDC(a1, &v35 - v22, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    (*(v8 + 56))(v20, 1, 1, v7);
    v25 = v24;
    v41(v20, v24);

    sub_1CEFCCC44(v20, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v26 = v41;
    sub_1CEFDA0C4(v23, v12, type metadata accessor for VFSItem);
    type metadata accessor for VFSFileTree(0);
    v27 = swift_dynamicCastClassUnconditional();

    v28 = objc_sync_enter(v27);
    if (v28)
    {
      MEMORY[0x1EEE9AC00](v28);
      *(&v35 - 2) = v27;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v35 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v29 = objc_sync_exit(v27);
    if (v29)
    {
      MEMORY[0x1EEE9AC00](v29);
      *(&v35 - 2) = v27;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v35 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    sub_1CF25116C(v17);
    if ((*(v8 + 48))(v17, 1, v7) == 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
      v30 = v36;
      (*(v8 + 56))(v36, 1, 1, v7);
      v31 = [v38 identifier];
      v32 = FPItemNotFoundError();

      v26(v30, v32);
      sub_1CEFCCC44(v30, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v33 = v37;
      (*(v8 + 32))(v37, v17, v7);
      (*(v8 + 16))(v20, v33, v7);
      (*(v8 + 56))(v20, 0, 1, v7);
      v26(v20, 0);
      sub_1CEFCCC44(v20, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*(v8 + 8))(v33, v7);
    }

    sub_1CEFD5338(v12, type metadata accessor for VFSItem);
  }

  sub_1CF9E7458();
  type metadata accessor for Signpost(0);
  return sub_1CF9E6038();
}

uint64_t FPDDomainFPFSBackend.downloadVersion(with:version:originalURL:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v64 = a2;
  v70 = a4;
  v60 = a3;
  v69 = sub_1CF9E5A58();
  v62 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v61 = v6;
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for Signpost(0);
  v58 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v55 - v20;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v8 + 56))(v16, 1, 1, v7);
  v65 = a1;
  v22 = [a1 description];
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v55 = v24;
  v56 = v23;

  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(v8 + 48);
  if (v25(v13, 1, v7) == 1)
  {
    v26 = v21;
    sub_1CF9E6048();
    if (v25(v13, 1, v7) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
  }

  v27 = v67;
  (*(v8 + 16))(v67, v10, v7);
  *(v27 + *(v17 + 20)) = v21;
  v28 = v27 + *(v17 + 24);
  *v28 = "DownloadVersion";
  *(v28 + 8) = 15;
  *(v28 + 16) = 2;
  v29 = v21;
  v30 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1CF9FA450;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1CEFD51C4();
  v32 = v55;
  *(v31 + 32) = v56;
  *(v31 + 40) = v32;
  sub_1CF9E6028(v30, &dword_1CEFC7000, v29, "DownloadVersion", 15, 2, v27, "%s", 2);
  v31, v33, v34, v35, v36, v37, v38, v39;
  (*(v8 + 8))(v10, v7);
  sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = swift_allocObject();
  v41 = v63;
  *(v40 + 16) = v70;
  *(v40 + 24) = v41;
  v42 = v59;
  sub_1CEFDA34C(v27, v59, type metadata accessor for Signpost);
  v43 = v62;
  (*(v62 + 16))(v68, v60, v69);
  v44 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v43 + 80) + v45 + 16) & ~*(v43 + 80);
  v47 = swift_allocObject();
  v49 = v64;
  v48 = v65;
  *(v47 + 2) = v64;
  *(v47 + 3) = v48;
  sub_1CEFDA0C4(v42, &v47[v44], type metadata accessor for Signpost);
  v50 = &v47[v45];
  v51 = v69;
  *v50 = v70;
  v50[1] = v41;
  (*(v43 + 32))(&v47[v46], v68, v51);
  swift_retain_n();

  v52 = v49;
  v53 = v48;
  sub_1CF8ECE60("downloadVersion(with:version:originalURL:completionHandler:)", 60, 2, sub_1CF8F0A30, v47, v66, sub_1CF8F0A04, v40);

  return sub_1CEFD5338(v67, type metadata accessor for Signpost);
}

uint64_t sub_1CF861890(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v131 = a7;
  v132 = a6;
  v147 = a5;
  materialization_alignment = a4;
  v133 = a3;
  v151 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v138 = &v124 - v9;
  v144 = sub_1CF9E63D8();
  v149 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v139 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v124 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v124 - v14;
  v15 = sub_1CF9E6448();
  v141 = *(v15 - 8);
  v142 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v146 = &v124 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v140 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v124 - v22;
  v145 = sub_1CF9E6118();
  v135 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v134 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1CF9E5A58();
  v24 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = v25;
  v128 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Signpost(0);
  v125 = *(v26 - 8);
  v27 = *(v125 + 64);
  *&v28 = MEMORY[0x1EEE9AC00](v26 - 8).n128_u64[0];
  v126 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 contentVersion];
  v30 = sub_1CF9E5B88();
  v32 = v31;

  v33 = [a2 metadataVersion];
  v34 = sub_1CF9E5B88();
  v36 = v35;

  v37 = [a2 lastEditorDeviceName];
  if (v37)
  {
    v38 = v37;
    v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  *&v163 = v30;
  *(&v163 + 1) = v32;
  *&v164 = 0;
  *(&v164 + 1) = v34;
  v165 = v36;
  *&v166 = v39;
  *(&v166 + 1) = v41;
  v42 = *(*(*(v151 + 16) + 40) + 16);
  type metadata accessor for FPFileTree(0);
  v150 = swift_dynamicCastClassUnconditional();
  v151 = v42;

  v133 = [v133 identifier];
  v159 = v163;
  v160 = v164;
  v161 = v165;
  v162 = v166;
  v43 = v126;
  sub_1CEFDA34C(materialization_alignment, v126, type metadata accessor for Signpost);
  v45 = v128;
  v44 = v129;
  (*(v24 + 16))(v128, v131, v129);
  v46 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v47 = (v27 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (*(v24 + 80) + v47 + 16) & ~*(v24 + 80);
  v49 = swift_allocObject();
  sub_1CEFDA0C4(v43, v49 + v46, type metadata accessor for Signpost);
  v50 = (v49 + v47);
  v51 = v132;
  *v50 = v147;
  v50[1] = v51;
  v52 = *(v24 + 32);
  v147 = v49;
  v52(v49 + v48, v45, v44);
  sub_1CEFCCBDC(&v163, &v167, &unk_1EC4BF250, &unk_1CFA01B50);

  v158[0] = v159;
  v158[1] = v160;
  v158[2] = v161;
  v158[3] = v162;
  v167 = v159;
  v168 = v160;
  v169 = v161;
  v170 = v162;
  v53 = v159;
  v54 = *(&v160 + 1);
  v55 = v161;
  v56 = *(&v162 + 1);
  sub_1CEFCCBDC(v158, &v152, &unk_1EC4BF250, &unk_1CFA01B50);
  sub_1CEFCCBDC(v158, &v152, &unk_1EC4BF250, &unk_1CFA01B50);
  sub_1CEFE42D4(v53, *(&v53 + 1));
  sub_1CEFE42D4(v54, v55);
  v57 = sub_1CF9E5B48();
  v58 = sub_1CF9E5B48();
  if (v56)
  {
    v59 = sub_1CF9E6888();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_opt_self();
  v61 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v57 metadataVersion:v58 lastEditorDeviceName:v59];

  sub_1CEFE4714(v54, v55);
  sub_1CEFE4714(v53, *(&v53 + 1));
  v62 = [v60 etagForVersion:v61 providerDomainID:v150[35]];

  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;

  v66 = fpfs_current_or_default_log();
  v67 = v134;
  sub_1CF9E6128();

  v68 = sub_1CF9E6108();
  v69 = sub_1CF9E7288();
  v65, v70, v71, v72, v73, v74, v75, v76;
  if (os_log_type_enabled(v68, v69))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v152 = v78;
    *v77 = 136315138;
    *(v77 + 4) = sub_1CEFD0DF0(v63, v65, &v152);
    _os_log_impl(&dword_1CEFC7000, v68, v69, "⚔️  Fetching version %s...", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x1D386CDC0](v78, -1, -1);
    MEMORY[0x1D386CDC0](v77, -1, -1);
  }

  (*(v135 + 8))(v67, v145);
  v79 = v149;
  v80 = v143;
  v81 = swift_allocObject();
  v82 = v147;
  *(v81 + 2) = sub_1CF9003D8;
  *(v81 + 3) = v82;
  v83 = v133;
  v84 = v150;
  *(v81 + 4) = v133;
  *(v81 + 5) = v84;
  *(v81 + 6) = v63;
  *(v81 + 7) = v65;
  v85 = swift_allocObject();
  *(v85 + 16) = nullsub_1;
  *(v85 + 24) = 0;
  v86 = swift_allocObject();
  v86[2] = v84;
  v86[3] = v85;
  v86[4] = sub_1CF903330;
  v86[5] = v81;
  v145 = v86;

  v131 = v83;
  v135 = v85;

  v134 = v81;

  materialization_alignment = fpfs_get_materialization_alignment();
  v87 = v84[20];
  v132 = v84[21];
  v133 = v87;
  sub_1CF9E6418();
  qos_class_self();
  v88 = v138;
  sub_1CF9E63B8();
  v89 = *(v79 + 48);
  v90 = v144;
  if (v89(v88, 1, v144) == 1)
  {
    (*(v79 + 104))(v136, *MEMORY[0x1E69E7FA0], v90);
    if (v89(v88, 1, v90) != 1)
    {
      sub_1CEFCCC44(v88, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v79 + 32))(v136, v88, v90);
  }

  v91 = v137;
  sub_1CF9E6428();
  sub_1CF9E6438();
  v92 = sub_1CF9E63C8();
  v93 = *(v79 + 8);
  v149 = v79 + 8;
  v93(v80, v90);
  v94 = v139;
  v95 = v146;
  sub_1CF9E6438();
  v96 = sub_1CF9E63C8();
  v139 = v93;
  v93(v94, v90);
  v98 = v141;
  v97 = v142;
  v99 = *(v141 + 8);
  if (v92 >= v96)
  {
    v100 = v91;
  }

  else
  {
    v100 = v95;
  }

  if (v92 >= v96)
  {
    v101 = v95;
  }

  else
  {
    v101 = v91;
  }

  v137 = *(v141 + 8);
  v138 = (v141 + 8);
  v99(v100, v142);
  v102 = v148;
  (*(v98 + 32))(v148, v101, v97);
  (*(v98 + 56))(v102, 0, 1, v97);
  v103 = swift_allocObject();
  *(v103 + 16) = v150;
  *(v103 + 24) = 0;
  v104 = v131;
  *(v103 + 32) = v131;
  *(v103 + 40) = 8;
  *(v103 + 48) = 0;
  *(v103 + 56) = 0;
  v105 = v168;
  *(v103 + 64) = v167;
  *(v103 + 80) = v105;
  v106 = v170;
  *(v103 + 96) = v169;
  *(v103 + 112) = v106;
  v107 = v145;
  *(v103 + 128) = sub_1CF2F6584;
  *(v103 + 136) = v107;
  *(v103 + 144) = 0;
  v108 = materialization_alignment;
  *(v103 + 152) = 0;
  *(v103 + 160) = v108;
  *(v103 + 168) = v135;
  v109 = swift_allocObject();
  v109[2] = sub_1CF2F6584;
  v109[3] = v107;
  v110 = v132;
  v109[4] = v132;
  swift_retain_n();

  sub_1CEFCCBDC(v158, &v152, &unk_1EC4BF250, &unk_1CFA01B50);
  v150 = v104;

  v111 = fpfs_current_log();
  v146 = *(v110 + 16);
  v112 = *(v98 + 48);
  v113 = v112(v102, 1, v97);
  v114 = v102;
  v115 = v140;
  sub_1CEFCCBDC(v114, v140, &unk_1EC4BE370, qword_1CFA01B30);
  if (v112(v115, 1, v97) == 1)
  {
    sub_1CEFCCC44(v115, &unk_1EC4BE370, qword_1CFA01B30);
    v116 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v117 = v143;
    sub_1CF9E6438();
    (v137)(v115, v97);
    v116 = sub_1CF9E63C8();
    (v139)(v117, v144);
  }

  v118 = 32;
  if (v113 == 1)
  {
    v118 = 16;
  }

  v149 = v118;
  v119 = swift_allocObject();
  v119[2] = v111;
  v119[3] = sub_1CF902DA8;
  v119[4] = v103;
  v156 = sub_1CF2BA17C;
  v157 = v119;
  v152 = MEMORY[0x1E69E9820];
  v153 = 1107296256;
  v154 = sub_1CEFCA444;
  v155 = &block_descriptor_5319;
  v120 = _Block_copy(&v152);
  v121 = v111;

  v156 = sub_1CF2F6720;
  v157 = v109;
  v152 = MEMORY[0x1E69E9820];
  v153 = 1107296256;
  v154 = sub_1CEFCA444;
  v155 = &block_descriptor_5322;
  v122 = _Block_copy(&v152);

  fp_task_tracker_async_and_qos(v146, v133, v149, v116, v120, v122);

  _Block_release(v122);
  _Block_release(v120);

  sub_1CEFCCC44(v148, &unk_1EC4BE370, qword_1CFA01B30);

  sub_1CEFCCC44(v158, &unk_1EC4BF250, &unk_1CFA01B50);
  sub_1CEFCCC44(v158, &unk_1EC4BF250, &unk_1CFA01B50);

  sub_1CEFCCC44(&v159, &unk_1EC4BF250, &unk_1CFA01B50);

  return sub_1CEFCCC44(&v163, &unk_1EC4BF250, &unk_1CFA01B50);
}

uint64_t sub_1CF862764(uint64_t a1, uint64_t a2, void (*a3)(void *, char *, void *), uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a3;
  v7 = type metadata accessor for StagedRemoteVersion(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v24 - v14);
  sub_1CEFCCBDC(a1, &v24 - v14, &unk_1EC4C5A90, &qword_1CFA01BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v17 = sub_1CF9E5A58();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = v16;
    v25(0, v12, v16);

    sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    sub_1CEFDA0C4(v15, v9, type metadata accessor for StagedRemoteVersion);
    v19 = sub_1CF93D168(a5);
    v20 = *(v7 + 20);
    v21 = sub_1CF9E5A58();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v12, &v9[v20], v21);
    (*(v22 + 56))(v12, 0, 1, v21);
    v25(v19, v12, 0);

    sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFD5338(v9, type metadata accessor for StagedRemoteVersion);
  }

  sub_1CF9E7458();
  type metadata accessor for Signpost(0);
  return sub_1CF9E6038();
}

void sub_1CF862BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1CEFCCBDC(a2, &v15 - v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_1CF9E5928();
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v14 = sub_1CF9E57E8();
  }

  else
  {
    v14 = 0;
  }

  (*(a4 + 16))(a4, a1, v13, v14);
}

uint64_t FPDDomainFPFSBackend.forceUpdateBlockedProcessNames(fromDomain:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CF862D84, 0, 0);
}

uint64_t sub_1CF862D84()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = v0[18];
    v3 = [objc_msgSend(Strong session)];
    v0[21] = v3;
    swift_unknownObjectRelease();
    v0[2] = v0;
    v0[3] = sub_1CF862F58;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4AD8, &qword_1CFA17B08);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CF863150;
    v0[13] = &block_descriptor_124_0;
    v0[14] = v4;
    [v3 forceUpdateBlockedProcessNamesFromDomain:v2 completionHandler:v0 + 10];
    v5 = v0 + 2;

    return MEMORY[0x1EEE6DEC8](v5);
  }

  v5 = FPDomainUnavailableError();
  if (!v5)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v5);
  }

  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1CF862F58()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1CF8630D4;
  }

  else
  {
    v2 = sub_1CF863068;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CF863068()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF8630D4(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1CF863150(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1CF863384(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1CF863448;

  return FPDDomainFPFSBackend.forceUpdateBlockedProcessNames(fromDomain:)(v6);
}

uint64_t sub_1CF863448()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_1CF9E57E8();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

void sub_1CF8635E4(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    a1 = sub_1CEFE1894(sub_1CF900398);
    if (v3)
    {
      v5 = v3;
      sub_1CF9E52F8();
      sub_1CF196978();
      v6 = sub_1CF9E5658();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v3 = 0;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1CEFE1894(sub_1CF900360);
  if (!v3)
  {
    *a3 = 0;
  }
}

uint64_t FPDDomainFPFSBackend.movingItem(at:with:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v11);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  (*(v9 + 32))(v15 + v13, v12, v8);
  *(v15 + v14) = a2;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = v22;
  *v16 = v22;
  v16[1] = a4;
  swift_retain_n();
  v18 = v4;
  v19 = a2;
  sub_1CF8ED5F4("movingItem(at:with:completionHandler:)", 38, 2, sub_1CF8F0B48, v15, v18, v17, a4);
}

void sub_1CF8639A0(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
  a2();
}

void sub_1CF863A10(uint64_t a1, uint64_t (**a2)(uint64_t a1, uint64_t a2), uint64_t a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v231 = a4;
  v232 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2E0, &qword_1CF9FD970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v223 - v9;
  v237 = sub_1CF9E5A58();
  v233 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v234 = &v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v223 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v227 = &v223 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v235 = &v223 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v236 = &v223 - v20;
  v230 = sub_1CF9E53C8();
  v228 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v229 = &v223 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6118();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v224 = &v223 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v223 - v26;
  type metadata accessor for VFSFileTree(0);
  v28 = swift_dynamicCastClassUnconditional();

  v29 = objc_sync_enter(v28);
  if (v29)
  {
LABEL_56:
    MEMORY[0x1EEE9AC00](v29);
    v221 = v28;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v223 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v225 = v23;
  v226 = v22;
  v239 = a6;
  v240 = a5;
  isa = v28[5].super.isa;

  v30 = objc_sync_exit(v28);
  if (v30)
  {
    MEMORY[0x1EEE9AC00](v30);
    v221 = v28;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v223 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v31 = sub_1CF9E5A18();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v31);
  LOBYTE(v221) = 0;
  v248 = 0;
  v249 = 0;
  v250 = 1;
  v34 = swift_allocObject();
  v34[2] = &v249;
  v34[3] = sub_1CF900338;
  v34[4] = &v223 - 4;
  v34[5] = &v248;
  v28 = swift_allocObject();
  *v28->tree = sub_1CF900354;
  *v28->tester = v34;
  v246 = sub_1CF50EB9C;
  v247 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v243 = 1107296256;
  v244 = sub_1CF005DF8;
  v245 = &block_descriptor_5262;
  v35 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v36 = fpfs_openat();

  _Block_release(v35);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v45 = v248;
  if (v248)
  {
LABEL_5:
    swift_willThrow();
    v33, v46, v47, v48, v49, v50, v51, v52;

    goto LABEL_6;
  }

  if (v36 < 0)
  {
    if (MEMORY[0x1D38683F0](v29))
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        v45 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v82 = sub_1CF9E6138();
        if ((v82 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v82;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v120 = v229;
        v121 = v230;
        sub_1CF9E57D8();
        v45 = sub_1CF9E53A8();
        v228[1](v120, v121);
      }

      goto LABEL_5;
    }

    aBlock = 0;
    v243 = 0xE000000000000000;
    sub_1CF9E7948();
    v243, v137, v138, v139, v140, v141, v142, v143;
    aBlock = 0xD00000000000001ALL;
    v243 = 0x80000001CFA2DF30;
    v241 = v36;
    v144 = sub_1CF9E7F98();
    v146 = v145;
    MEMORY[0x1D3868CC0](v144);
    v146, v147, v148, v149, v150, v151, v152, v153;
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v154 = aBlock;
    v155 = v243;
    v156 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v157 = sub_1CF9E6108();
    v158 = sub_1CF9E72B8();
    v155, v159, v160, v161, v162, v163, v164, v165;
    if (os_log_type_enabled(v157, v158))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      aBlock = v167;
      *v166 = 136315650;
      v168 = sub_1CF9E7988();
      v170 = v169;
      v171 = sub_1CEFD0DF0(v168, v169, &aBlock);
      v170, v172, v173, v174, v175, v176, v177, v178;
      *(v166 + 4) = v171;
      *(v166 + 12) = 2048;
      *(v166 + 14) = 315;
      *(v166 + 22) = 2080;
      *(v166 + 24) = sub_1CEFD0DF0(v154, v155, &aBlock);
      _os_log_impl(&dword_1CEFC7000, v157, v158, "[ASSERT] ‼️  %s:%lu: %s", v166, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v167, -1, -1);
      MEMORY[0x1D386CDC0](v166, -1, -1);
    }

    (*(v225 + 8))(v27, v226);
    v222 = 0;
    v221 = 315;
LABEL_64:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  if (v250)
  {
    goto LABEL_54;
  }

  v55 = v249;
  v33, v38, v39, v40, v41, v42, v43, v44;
  v56 = [v231 destinationDirectoryURL];
  v57 = v236;
  sub_1CF9E59D8();

  v58 = v233;
  v59 = (v233 + 2);
  v60 = v237;
  v233[2](v14, v57, v237);
  v61 = sub_1CEFCE64C();
  v62 = v59 - 8;
  v223 = v55;
  v63 = v61;
  sub_1CEFDD0F4(v61, v10);
  v63, v64, v65, v66, v67, v68, v69, v70;
  v71 = *v62;
  (*v62)(v14, v60);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2E8, qword_1CFA08D40);
  v73 = (*(*(v72 - 8) + 48))(v10, 1, v72);
  if (v73 == 1)
  {
    sub_1CEFCCC44(v10, &qword_1EC4BE2E0, &qword_1CF9FD970);
    v81 = [objc_opt_self() providingRequiredResponse];
    v240();

LABEL_34:
    v119 = v57;
LABEL_35:
    v71(v119, v60);
    return;
  }

  *&v10[*(v72 + 48) + 8], v74, v75, v76, v77, v78, v79, v80;
  v83 = v58[4];
  v84 = v227;
  (v83)(v227, v10, v60);
  v233 = v83;
  (v83)(v235, v84, v60);
  v85 = sub_1CF9E5928();
  v86 = sub_1CF9E5928();
  v87 = [v85 fp:v86 relationshipToItemAtURL:?];

  if (v87 == 2)
  {
LABEL_33:
    v118 = [objc_opt_self() providingRequiredResponse];
    v240();

    v71(v235, v60);
    goto LABEL_34;
  }

  v232 = &v244;
  LODWORD(v227) = 9939394;
  ++v228;
  v231 = v62;
  while (1)
  {
    v88 = sub_1CF9E5A18();
    v28 = v89;
    MEMORY[0x1EEE9AC00](v88);
    LOBYTE(v221) = 1;
    v248 = 0;
    v249 = 0;
    v250 = 1;
    v90 = swift_allocObject();
    *(v90 + 16) = &v249;
    *(v90 + 24) = sub_1CF902DC4;
    *(v90 + 32) = &v223 - 4;
    *(v90 + 40) = &v248;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1CF902C74;
    *(v91 + 24) = v90;
    v246 = sub_1CF50EB9C;
    v247 = v91;
    aBlock = MEMORY[0x1E69E9820];
    v243 = 1107296256;
    v244 = sub_1CF005DF8;
    v245 = &block_descriptor_5274;
    v92 = _Block_copy(&aBlock);

    sub_1CF9E6978();
    v93 = fpfs_openat();

    _Block_release(v92);

    LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

    if (v90)
    {
      goto LABEL_53;
    }

    v45 = v248;
    if (v248)
    {
      swift_willThrow();
      v101 = v45;
      goto LABEL_31;
    }

    if ((v93 & 0x80000000) == 0)
    {
      if ((v250 & 1) == 0)
      {
        v123 = v249;
        v28, v94, v95, v96, v97, v98, v99, v100;
        v124 = *(isa + 4);
        v125 = *(v124 + 16);
        v126 = (v124 + 32);
        v127 = v125;
        v128 = v126;
        do
        {
          v129 = v127;
          if (!v127)
          {
            break;
          }

          v130 = *v128++;
          --v127;
        }

        while (v130 != v223);
        v131 = v240;
        v132 = v236;
        v60 = v237;
        while (v125)
        {
          v133 = *v126++;
          --v125;
          if (v133 == v123)
          {
            if (v129)
            {
              v134 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
              goto LABEL_51;
            }

            break;
          }
        }

        v135 = objc_opt_self();
        if (v123 == v223)
        {
          v134 = [v135 providingNotRequiredResponseWithSyncRootID_];
        }

        else
        {
          v134 = [v135 providingRequiredResponse];
        }

LABEL_51:
        v136 = v134;
        v131();

        v71(v235, v60);
        v119 = v132;
        goto LABEL_35;
      }

      goto LABEL_55;
    }

    if (!MEMORY[0x1D38683F0](v29))
    {
      aBlock = 0;
      v243 = 0xE000000000000000;
      sub_1CF9E7948();
      v243, v179, v180, v181, v182, v183, v184, v185;
      aBlock = 0xD00000000000001ALL;
      v243 = 0x80000001CFA2DF30;
      v241 = v93;
      v186 = sub_1CF9E7F98();
      v188 = v187;
      MEMORY[0x1D3868CC0](v186);
      v188, v189, v190, v191, v192, v193, v194, v195;
      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v196 = aBlock;
      v197 = v243;
      v198 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v199 = sub_1CF9E6108();
      v200 = sub_1CF9E72B8();
      v197, v201, v202, v203, v204, v205, v206, v207;
      if (os_log_type_enabled(v199, v200))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        aBlock = v209;
        *v208 = 136315650;
        v210 = sub_1CF9E7988();
        v212 = v211;
        v213 = sub_1CEFD0DF0(v210, v211, &aBlock);
        v212, v214, v215, v216, v217, v218, v219, v220;
        *(v208 + 4) = v213;
        *(v208 + 12) = 2048;
        *(v208 + 14) = 315;
        *(v208 + 22) = 2080;
        *(v208 + 24) = sub_1CEFD0DF0(v196, v197, &aBlock);
        _os_log_impl(&dword_1CEFC7000, v199, v200, "[ASSERT] ‼️  %s:%lu: %s", v208, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v209, -1, -1);
        MEMORY[0x1D386CDC0](v208, -1, -1);
      }

      (*(v225 + 8))(v224, v226);
      v222 = 0;
      v221 = 315;
      goto LABEL_64;
    }

    if (MEMORY[0x1D38683F0]() == v227)
    {
      v45 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v109 = sub_1CF9E6138();
      LODWORD(aBlock) = (v109 & 0x100000000) != 0 ? 22 : v109;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v110 = v229;
      v111 = v230;
      sub_1CF9E57D8();
      v45 = sub_1CF9E53A8();
      (*v228)(v110, v111);
    }

    swift_willThrow();
LABEL_31:
    v28, v102, v103, v104, v105, v106, v107, v108;

    v112 = v45;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    v113 = sub_1CF9E5658();

    if ((v113 & 1) == 0)
    {
      break;
    }

    v114 = v234;
    v57 = v236;
    sub_1CF9E5988();
    v60 = v237;
    v71(v57, v237);
    (v233)(v57, v114, v60);
    v115 = sub_1CF9E5928();
    v116 = sub_1CF9E5928();
    v117 = [v115 fp:v116 relationshipToItemAtURL:?];

    if (v117 == 2)
    {
      goto LABEL_33;
    }
  }

  v122 = v237;
  v71(v235, v237);
  v71(v236, v122);
LABEL_6:
  v53 = v240;
  v54 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
  v53();
}

id FPDDomainFPFSBackend.evictItem(at:evictionReason:request:completionHandler:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v25 = a5;
  v26 = a4;
  v28 = a2;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 11) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v13, v11, v8);
  v18 = (v17 + v14);
  v19 = v25;
  *v18 = v26;
  v18[1] = v19;
  *(v17 + v15) = v28;
  v20 = v29;
  *(v17 + v16) = v29;
  v21 = v27;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  swift_retain_n();

  v22 = v20;
  v23 = v21;
  sub_1CF8EDD24("evictItem(at:evictionReason:request:completionHandler:)", 55, 2, sub_1CF8F0B4C, v17, v30, sub_1CF90325C, v12);

  return v23;
}

void sub_1CF8651E8(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, unsigned int a5, void *a6, uint64_t a7)
{
  v34 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF010CE0(a2, 1, 2, 0, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v20 = sub_1CF9E5928();
    v21 = FPItemNotFoundErrorAtURL();

    a3(0, v21);
  }

  else
  {
    sub_1CEFDA0C4(v15, v19, type metadata accessor for VFSItem);
    if (a5 >= 6)
    {
      a5 = 0;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
    v23 = swift_allocBox();
    v25 = v24;
    v26 = *(v22 + 48);
    v27 = sub_1CF9E5A58();
    (*(*(v27 - 8) + 16))(v25, a2, v27);
    *(v25 + v26) = a6;
    v28 = *(a1 + 16);
    v29 = *v19;
    v30 = v19[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v31 = swift_allocObject();
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    *(v31 + 41) = 0;
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    *(v31 + 25) = 0;

    v32 = a6;
    sub_1CF550F28(v31, v23 | 0x1000000000000004, a5, v34, v28, a3, a4);

    sub_1CEFD5338(v19, type metadata accessor for VFSItem);
  }
}

double FPDDomainFPFSBackend.evictItem(with:evictionReason:request:completionHandler:)(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  swift_retain_n();
  v12 = a1;
  v13 = a3;
  sub_1CEFD4024("evictItem(with:evictionReason:request:completionHandler:)", 57, 2, sub_1CF90324C, v10, sub_1CF8F0C10, v11);

  return result;
}

double sub_1CF865780(uint64_t a1, unsigned int a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = [a3 identifier];
  *(v12 + 24) = a4;
  v13 = *(a1 + 16);
  v14 = a4;
  v15 = sub_1CEFD4E9C([a3 identifier]);
  v16 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v17 = swift_allocObject();
  swift_weakInit();

  sub_1CF55197C(v15, v12 | 0x2000000000000002, v11, v16, v13, a5, a6, v17);

  return result;
}

double FPDDomainFPFSBackend.materializeItem(with:requestedRange:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a1;
  swift_retain_n();
  v14 = a4;
  v15 = a1;
  sub_1CEFD4024("materializeItem(with:requestedRange:request:completionHandler:)", 63, 2, sub_1CF90324C, v12, sub_1CF8F0C14, v13);

  return result;
}

uint64_t sub_1CF865B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = sub_1CF9E6118();
  v107 = *(v14 - 8);
  v108 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v16;
  if (a4 < 0 || a5 < 1)
  {

    [a6 setRequestedExtent_];
  }

  else
  {

    [a6 setRequestedExtent_];
  }

  v18 = swift_allocObject();
  *(v18 + 16) = [a7 identifier];
  *(v18 + 24) = a6;
  v110 = *(a1 + 16);
  v19 = a6;
  v20 = sub_1CEFD4E9C([a7 identifier]);
  v21 = swift_allocObject();
  v21[2] = sub_1CF902EC0;
  v21[3] = v17;
  v21[4] = a1;
  v21[5] = v18 | 0x2000000000000004;
  v21[6] = a4;
  v21[7] = a5;
  v22 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  v23 = [v22 init];
  v24 = swift_allocObject();
  v24[2] = sub_1CF900234;
  v24[3] = v21;
  v109 = v24;
  v112 = v18 | 0x2000000000000004;
  v24[4] = v18 | 0x2000000000000004;
  swift_retain_n();
  swift_retain_n();
  v25 = fpfs_current_or_default_log();
  v26 = v111;
  sub_1CF9E6128();
  swift_retain_n();

  v27 = sub_1CF9E6108();
  v28 = sub_1CF9E7298();
  v29 = os_log_type_enabled(v27, v28);
  v113 = v23;
  if (v29)
  {
    v106 = v17;
    v30 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v114[0] = v105;
    *v30 = 136315906;
    v31 = swift_beginAccess();
    v32 = *(v20 + 32);
    v33 = *(v20 + 40);
    if (*(v20 + 41))
    {
      v34 = NSFileProviderItemIdentifier.description.getter(v32);
      v36 = v35;
      sub_1CEFD0994(v32, v33, 1);
    }

    else
    {
      v114[1] = *(v20 + 32);
      v115 = v33;
      v34 = VFSItemID.description.getter(v31);
      v36 = v37;
    }

    v38 = sub_1CEFD0DF0(v34, v36, v114);
    v36, v39, v40, v41, v42, v43, v44, v45;
    *(v30 + 4) = v38;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, v114);
    *(v30 + 22) = 2080;
    v46 = sub_1CEFD11AC(v112);
    v48 = v47;

    v49 = sub_1CEFD0DF0(v46, v48, v114);
    v48, v50, v51, v52, v53, v54, v55, v56;
    *(v30 + 24) = v49;
    *(v30 + 32) = 2048;
    *(v30 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v27, v28, "Lookup itemID %s with behavior %s request %s iteration %ld", v30, 0x2Au);
    v57 = v105;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v57, -1, -1);
    MEMORY[0x1D386CDC0](v30, -1, -1);

    (*(v107 + 8))(v111, v108);
    v17 = v106;
    v23 = v113;
  }

  else
  {

    (*(v107 + 8))(v26, v108);
  }

  swift_beginAccess();
  v58 = *(v20 + 32);
  v59 = *(v20 + 40);
  if ((*(v20 + 41) & 1) == 0)
  {
    if (!v58 && v59 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v60 = qword_1EDEA34B0;
  v61 = v58;
  if (v60 != -1)
  {
    swift_once();
  }

  v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v64 = v63;
  v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v72 = v65;
  if (v62 != v66 || v64 != v65)
  {
    v80 = sub_1CF9E8048();
    v64, v81, v82, v83, v84, v85, v86, v87;
    v72, v88, v89, v90, v91, v92, v93, v94;
    sub_1CEFD0994(v58, v59, 1);
    v23 = v113;
    if (v80)
    {
      goto LABEL_19;
    }

LABEL_21:
    v95 = swift_allocObject();
    v111 = v95;
    v96 = v112;
    *(v95 + 16) = v112;
    v97 = v95 | 0x7000000000000004;
    v98 = swift_allocObject();
    v99 = v109;
    v100 = v110;
    *(v98 + 16) = sub_1CF796A0C;
    *(v98 + 24) = v99;
    *(v98 + 32) = v100;
    *(v98 + 40) = 2;
    *(v98 + 48) = v96;
    *(v98 + 56) = v20;
    *(v98 + 64) = 0;
    *(v98 + 72) = v23;
    *(v98 + 80) = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v20;
    *(v101 + 24) = v100;
    *(v101 + 32) = 0;
    *(v101 + 40) = sub_1CF796A90;
    *(v101 + 48) = v98;
    *(v101 + 56) = v97;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_1CF796A90;
    *(v102 + 24) = v98;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v103 = v113;
    v106 = v17;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v102, sub_1CF796A9C, v101);

    v23 = v113;

    goto LABEL_22;
  }

  v64, v65, v66, v67, v68, v69, v70, v71;
  v72, v73, v74, v75, v76, v77, v78, v79;
  sub_1CEFD0994(v58, v59, 1);
  v23 = v113;
LABEL_19:
  sub_1CF90CAC8(v112, sub_1CF796A0C, v109);

LABEL_22:
}

void sub_1CF866324(uint64_t a1, void (*a2)(id), void (*a3)(id), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v136 = a7;
  v135 = a6;
  v137 = a5;
  v134 = a4;
  v154 = a2;
  v155 = a3;
  v153 = a1;
  v7 = sub_1CF9E63D8();
  v131 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v147 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v127 - v12;
  v13 = sub_1CF9E6068();
  v144 = *(v13 - 8);
  v145 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v127 - v18;
  v139 = type metadata accessor for Signpost(0);
  v141 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v146 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v143 = (&v127 - v21);
  v142 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v127 - v24;
  v149 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v149);
  v26 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  MEMORY[0x1EEE9AC00](v148);
  v28 = &v127 - v27;
  v29 = type metadata accessor for VFSItem(0);
  v132 = *(v29 - 8);
  v30 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v127 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v127 - v35);
  sub_1CEFCCBDC(v153, &v127 - v35, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    v38 = *v36;
    v154(v37);
  }

  else
  {
    v129 = v7;
    sub_1CEFDA0C4(v36, v33, type metadata accessor for VFSItem);
    v39 = *(v33 + 2);
    v40 = v33[24];
    v42 = *(v33 + 4);
    v41 = *(v33 + 5);
    v43 = *(v29 + 28);
    v44 = *(v148 + 40);
    sub_1CEFDA34C(&v33[v43], &v28[v44], type metadata accessor for ItemMetadata);
    *v28 = v39;
    v28[8] = v40;
    *(v28 + 2) = v42;
    *(v28 + 3) = v41;
    sub_1CEFDA34C(&v28[v44], v26, type metadata accessor for ItemMetadata);

    sub_1CEFCCC44(v28, &unk_1EC4BFD90, &unk_1CFA134F0);
    LODWORD(v41) = v26[*(v149 + 80)];
    sub_1CEFD5338(v26, type metadata accessor for ItemMetadata);
    v45 = v33;
    if (v41 == 1)
    {
      v46 = *(v134 + 16);
      v47 = v133;
      sub_1CEFDA34C(v33, v133, type metadata accessor for VFSItem);
      v48 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v49 = (v30 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      v51 = v137;
      *(v50 + 16) = v46;
      *(v50 + 24) = v51;
      sub_1CEFDA0C4(v47, v50 + v48, type metadata accessor for VFSItem);
      v52 = (v50 + v49);
      v53 = v136;
      *v52 = v135;
      v52[1] = v53;
      v153 = v50;
      v54 = (v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8));
      v55 = v154;
      v56 = v155;
      *v54 = v154;
      v54[1] = v56;
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = v56;
      v154 = v57;
      swift_retain_n();
      v149 = v46;

      sub_1CEFD09A0(v51);
      v155 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v58 = qword_1EDEBBE40;
      v60 = v144;
      v59 = v145;
      v61 = v150;
      (*(v144 + 56))(v150, 1, 1, v145);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v62 = sub_1CF9E7988();
      v64 = v63;
      MEMORY[0x1D3868CC0](v62);
      v64, v65, v66, v67, v68, v69, v70, v71;
      v72 = aBlock;
      v73 = v61;
      v74 = v138;
      sub_1CEFCCBDC(v73, v138, &unk_1EC4BED20, &unk_1CFA00700);
      v75 = *(v60 + 48);
      v76 = v75(v74, 1, v59);
      v77 = v140;
      v128 = v45;
      if (v76 == 1)
      {
        v78 = v58;
        sub_1CF9E6048();
        if (v75(v74, 1, v59) != 1)
        {
          sub_1CEFCCC44(v74, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v60 + 32))(v140, v74, v59);
      }

      v80 = v151;
      (*(v60 + 16))(v151, v77, v59);
      v81 = v139;
      *(v80 + *(v139 + 20)) = v58;
      v82 = v80 + *(v81 + 24);
      *v82 = "DB queue wait";
      *(v82 + 8) = 13;
      *(v82 + 16) = 2;
      v83 = v58;
      v84 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1CF9FA450;
      *(v85 + 56) = MEMORY[0x1E69E6158];
      *(v85 + 64) = sub_1CEFD51C4();
      *(v85 + 32) = v72;
      sub_1CF9E6028(v84, &dword_1CEFC7000, v83, "DB queue wait", 13, 2, v80, "%s", 2);
      v85, v86, v87, v88, v89, v90, v91, v92;
      (*(v60 + 8))(v77, v59);
      sub_1CEFCCC44(v150, &unk_1EC4BED20, &unk_1CFA00700);
      v148 = *(v149 + 168);
      v150 = *(v149 + 64);
      v93 = sub_1CF9E6448();
      v144 = *(v93 - 8);
      v145 = v93;
      (*(v144 + 56))(v152, 1, 1, v93);
      v94 = v143;
      sub_1CEFDA34C(v80, v143, type metadata accessor for Signpost);
      v95 = (*(v141 + 80) + 16) & ~*(v141 + 80);
      v96 = (v142 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      sub_1CEFDA0C4(v94, v97 + v95, type metadata accessor for Signpost);
      v98 = (v97 + v96);
      v143 = sub_1CF5543A4;
      v99 = v154;
      *v98 = sub_1CF5543A4;
      v98[1] = v99;
      v100 = v146;
      sub_1CEFDA34C(v80, v146, type metadata accessor for Signpost);
      v101 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
      v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
      v103 = (v102 + 25) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      v105 = v144;
      sub_1CEFDA0C4(v100, v104 + v95, type metadata accessor for Signpost);
      v106 = (v104 + v96);
      *v106 = sub_1CF045408;
      v106[1] = 0;
      *(v104 + v101) = v149;
      v107 = v104 + v102;
      *v107 = "materializeItem(with:requestedRange:request:completionHandler:)";
      *(v107 + 8) = 63;
      *(v107 + 16) = 2;
      v108 = (v104 + v103);
      v109 = v154;
      *v108 = v143;
      v108[1] = v109;
      v110 = v104;
      v111 = (v104 + ((v103 + 23) & 0xFFFFFFFFFFFFFFF8));
      v112 = v153;
      *v111 = sub_1CF900244;
      v111[1] = v112;
      v113 = swift_allocObject();
      v113[2] = sub_1CF903308;
      v113[3] = v97;
      v114 = v148;
      v113[4] = v148;
      swift_retain_n();

      v149 = v97;
      v115 = v145;

      v116 = fpfs_current_log();
      v117 = *(v114 + 16);
      v118 = v147;
      sub_1CEFCCBDC(v152, v147, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v105 + 48))(v118, 1, v115) == 1)
      {
        sub_1CEFCCC44(v118, &unk_1EC4BE370, qword_1CFA01B30);
        v119 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v120 = v130;
        sub_1CF9E6438();
        (*(v105 + 8))(v118, v115);
        v119 = sub_1CF9E63C8();
        (*(v131 + 8))(v120, v129);
      }

      v121 = swift_allocObject();
      v121[2] = v116;
      v121[3] = sub_1CF4858EC;
      v121[4] = v110;
      v159 = sub_1CF2BA17C;
      v160 = v121;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v157 = sub_1CEFCA444;
      v158 = &block_descriptor_5208;
      v122 = _Block_copy(&aBlock);
      v123 = v116;

      v159 = sub_1CF2BA180;
      v160 = v113;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v157 = sub_1CEFCA444;
      v158 = &block_descriptor_5211;
      v124 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v117, v150, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v119, v122, v124);
      _Block_release(v124);
      _Block_release(v122);

      sub_1CEFCCC44(v152, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v151, type metadata accessor for Signpost);
      v125 = v155;
      v126 = fpfs_adopt_log();

      v79 = v128;
    }

    else
    {
      v154(0);
      v79 = v33;
    }

    sub_1CEFD5338(v79, type metadata accessor for VFSItem);
  }
}

void sub_1CF86721C(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v36 = a6;
  v34 = a8;
  v35 = a7;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  v16 = sub_1CF90C94C(a3);
  if (v16)
  {
    v17 = v16;

    [v17 requestedExtent];

    v18 = a1[3];
    v19 = a1[4];
    v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
    v21 = *(a4 + 8);
    v38 = *a4;
    v39 = v21;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v23 = v22;
    (*(v13 + 8))(v15, v12);
    v24 = v23 * 1000000000.0;
    if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        v25 = v37;
        sub_1CF347AEC(&v38, 8, v24, a5, v36, v20, v18, v19);
        if (v25)
        {
LABEL_7:

          return;
        }

LABEL_6:
        v35(0);
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = a1[3];
  v26 = a1[4];
  v28 = __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(a4 + 8);
  v38 = *a4;
  v39 = v29;

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v31 = v30;
  (*(v13 + 8))(v15, v12);
  v32 = v31 * 1000000000.0;
  if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v32 < 9.22337204e18)
  {
    v33 = v37;
    sub_1CF347AC0(&v38, 8, v32, v28, v27, v26);
    if (v33)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  __break(1u);
}

void FPDDomainFPFSBackend.url(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:forBookmarkResolution:request:completionHandler:)(void *a1, char a2, int a3, char a4, void *a5, void (*a6)(void, void, void, __n128), uint64_t a7)
{
  v15 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  v25 = MEMORY[0x1EEE9AC00](v21);
  if ((a2 & 1) == 0)
  {
    a6(0, 0, 0, v25);
    return;
  }

  v105 = a6;
  v106 = v7;
  v26 = a4;
  v104 = a5;
  v99 = &v99 - v23;
  v100 = v24;
  v102 = v22;
  v27 = sub_1CEFD4E9C([a1 identifier]);
  swift_beginAccess();
  v28 = *(v27 + 32);
  v29 = *(v27 + 40);
  v30 = *(v27 + 41);
  v103 = a3;
  if (v30 == 1)
  {
    v101 = a7;
    v31 = qword_1EDEA34B0;
    v32 = v28;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v44 = v37;
    if (v33 == v36 && v35 == v37)
    {
      v35, v37, v38, v39, v40, v41, v42, v43;
      v44, v63, v64, v65, v66, v67, v68, v69;
      sub_1CEFD0994(v28, v29, 1);
      a7 = v101;
      v61 = v26;
    }

    else
    {
      v46 = sub_1CF9E8048();
      v35, v47, v48, v49, v50, v51, v52, v53;
      v44, v54, v55, v56, v57, v58, v59, v60;
      sub_1CEFD0994(v28, v29, 1);
      a7 = v101;
      v61 = v26;
      if ((v46 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (v28)
    {
      v62 = 0;
    }

    else
    {
      v62 = v29 == 2;
    }

    v61 = v26;
    if (!v62)
    {
      goto LABEL_19;
    }
  }

  v70 = sub_1CEFCE64C();
  if (!*v70->tree)
  {
    v70, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    v78 = swift_allocObject();
    v79 = v105;
    *(v78 + 16) = v105;
    *(v78 + 24) = a7;
    v80 = swift_allocObject();
    v81 = v104;
    *(v80 + 16) = a1;
    *(v80 + 24) = v81;
    *(v80 + 32) = v79;
    *(v80 + 40) = a7;
    *(v80 + 48) = v61 & 1;
    *(v80 + 49) = v103 & 1;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1CF8F0C2C;
    *(v82 + 24) = v78;
    swift_retain_n();
    v83 = a1;
    v84 = v81;

    sub_1CEFD4024("url(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:forBookmarkResolution:request:completionHandler:)", 113, 2, sub_1CF8F0C60, v82, sub_1CF8F0C5C, v80);

    return;
  }

  v101 = a7;
  v85 = v100;
  v86 = *(v100 + 16);
  v87 = v70;
  v88 = v102;
  v86(v20, v70 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v102);
  v87, v89, v90, v91, v92, v93, v94, v95;
  v96 = v99;
  (*(v85 + 32))(v99, v20, v88);
  sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
  v86(v17, v96, v88);
  v97 = sub_1CF02BFF8(v17, 0);
  v98 = v97;
  v105(0, v97, 0);

  (*(v85 + 8))(v96, v102);
}

uint64_t sub_1CF867C6C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = [a2 identifier];
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF902ED0;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF9000F0;
  *(v17 + 24) = v16;
  v18 = a3;

  v19 = sub_1CEFD4E9C([a2 identifier]);

  v20 = a2;

  sub_1CF794540(v19, a6, v13 | 6, a1, (v13 | 6), a7, a1, v20, sub_1CF900104, v17);
}

void sub_1CF867E48(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void *, id, id), uint64_t a7)
{
  v101 = a7;
  v102 = a6;
  v93 = a4;
  v94 = a5;
  v95 = a3;
  v97 = a2;
  v8 = sub_1CF9E6118();
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v91 - v12;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v91 - v23);
  sub_1CEFCCBDC(a1, &v91 - v23, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v27 = v97;
    sub_1CEFD09A0(v97);
    v28 = v25;
    v29 = sub_1CF9E6108();
    v30 = sub_1CF9E72A8();
    sub_1CEFD0A98(v27);

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v105 = v33;
      *v31 = 136315394;
      v34 = sub_1CEFD11AC(v27);
      v36 = v35;
      v37 = sub_1CEFD0DF0(v34, v35, &v105);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v31 + 4) = v37;
      *(v31 + 12) = 2112;
      swift_getErrorValue();
      v45 = Error.prettyDescription.getter(v103, v104);
      *(v31 + 14) = v45;
      *v32 = v45;
      _os_log_impl(&dword_1CEFC7000, v29, v30, "reply to %s: failure %@", v31, 0x16u);
      sub_1CEFCCC44(v32, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v31, -1, -1);
    }

    (*(v99 + 8))(v10, v100);
    v46 = v25;
    v102(v25, 0, 0);
  }

  else
  {
    (*(v14 + 32))(v21, v24, v13);
    v47 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v48 = *(v14 + 16);
    v92 = v21;
    v48(v18, v21, v13);
    v49 = v97;
    sub_1CEFD09A0(v97);
    v50 = sub_1CF9E6108();
    v51 = sub_1CF9E72C8();
    sub_1CEFD0A98(v49);
    v52 = v13;
    if (os_log_type_enabled(v50, v51))
    {
      v53 = swift_slowAlloc();
      v91 = v48;
      v54 = v53;
      v55 = swift_slowAlloc();
      v105 = v55;
      *v54 = 136315394;
      v56 = sub_1CEFD11AC(v49);
      LODWORD(v97) = v51;
      v58 = v57;
      v59 = sub_1CEFD0DF0(v56, v57, &v105);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v54 + 4) = v59;
      *(v54 + 12) = 2080;
      v67 = sub_1CF9E5928();
      v68 = [v67 fp_shortDescription];

      v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v71 = v70;

      v72 = *(v14 + 8);
      v72(v18, v13);
      v73 = sub_1CEFD0DF0(v69, v71, &v105);
      v74 = v71;
      v52 = v13;
      v74, v75, v76, v77, v78, v79, v80, v81;
      *(v54 + 14) = v73;
      _os_log_impl(&dword_1CEFC7000, v50, v97, "reply to %s: %s success", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v55, -1, -1);
      v82 = v54;
      v48 = v91;
      MEMORY[0x1D386CDC0](v82, -1, -1);
    }

    else
    {

      v72 = *(v14 + 8);
      v72(v18, v13);
    }

    (*(v99 + 8))(v98, v100);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    v83 = v96;
    v84 = v92;
    v48(v96, v92, v52);
    v85 = sub_1CF02BFF8(v83, 0);
    if ((v95 & 1) != 0 || (v86 = [*(v93 + 48) getAlternateContentsURLWrapperForItemID_]) == 0)
    {
      v90 = v85;
      v102(0, v85, 0);
    }

    else
    {
      v87 = v86;
      v88 = v86;
      v89 = v85;
      v102(0, v87, v85);
    }

    v72(v84, v52);
  }
}

void sub_1CF868578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_1CF9E57E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

double FPDDomainFPFSBackend.enumerateMaterializedSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v4;
  v10[5] = a1;
  v10[6] = a2;
  swift_retain_n();
  v11 = v4;
  v12 = a1;
  sub_1CEFD4024("enumerateMaterializedSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)", 78, 2, sub_1CF8F0C64, v9, sub_1CF8F0CA8, v10);

  return result;
}

void sub_1CF8686F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v118 = a6;
  v103 = sub_1CF9E63D8();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v113 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v101 - v15;
  v105 = sub_1CF9E6068();
  v16 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v101 - v22;
  v106 = type metadata accessor for Signpost(0);
  v109 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v112 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v110 = v27;
  v111 = (&v101 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v101 - v29;
  v30 = *(a1 + 16);
  v31 = swift_allocObject();
  v31[2] = a2;
  v31[3] = a3;
  v31[4] = a4;
  v32 = swift_allocObject();
  *(v32 + 2) = v30;
  *(v32 + 3) = a2;
  *(v32 + 4) = a3;
  *(v32 + 5) = a5;
  *(v32 + 6) = v118;
  *(v32 + 7) = a4;
  v115 = v32;
  *(v32 + 8) = a1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1CF900054;
  *(v33 + 24) = v31;
  v118 = v33;
  swift_retain_n();
  v34 = a4;

  v35 = a5;

  v116 = v31;

  v114 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEBBE40;
  v37 = v105;
  (*(v16 + 56))(v23, 1, 1, v105);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v38 = sub_1CF9E7988();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  v104 = *(&aBlock + 1);
  v48 = aBlock;
  v107 = v23;
  sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v49 = *(v16 + 48);
  if (v49(v20, 1, v37) == 1)
  {
    v50 = v36;
    v51 = v108;
    sub_1CF9E6048();
    v52 = v51;
    if (v49(v20, 1, v37) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v52 = v108;
    (*(v16 + 32))(v108, v20, v37);
  }

  v53 = v117;
  (*(v16 + 16))(v117, v52, v37);
  v54 = v106;
  *(v53 + *(v106 + 20)) = v36;
  v55 = v53 + *(v54 + 24);
  *v55 = "DB queue wait";
  *(v55 + 8) = 13;
  *(v55 + 16) = 2;
  v56 = v36;
  v57 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1CF9FA450;
  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1CEFD51C4();
  v59 = v104;
  *(v58 + 32) = v48;
  *(v58 + 40) = v59;
  sub_1CF9E6028(v57, &dword_1CEFC7000, v56, "DB queue wait", 13, 2, v53, "%s", 2);
  v58, v60, v61, v62, v63, v64, v65, v66;
  (*(v16 + 8))(v52, v37);
  sub_1CEFCCC44(v107, &unk_1EC4BED20, &unk_1CFA00700);
  v67 = *(v30 + 64);
  v107 = *(v30 + 168);
  v108 = v67;
  v106 = sub_1CF9E6448();
  v105 = *(v106 - 8);
  (*(v105 + 56))(v119, 1, 1, v106);
  v68 = v111;
  sub_1CEFDA34C(v53, v111, type metadata accessor for Signpost);
  v69 = *(v109 + 80);
  v109 = v30;
  v70 = (v69 + 16) & ~v69;
  v71 = (v110 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  sub_1CEFDA0C4(v68, v72 + v70, type metadata accessor for Signpost);
  v73 = (v72 + v71);
  v111 = sub_1CF902CDC;
  v74 = v118;
  *v73 = sub_1CF902CDC;
  v73[1] = v74;
  v75 = v112;
  sub_1CEFDA34C(v53, v112, type metadata accessor for Signpost);
  v76 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 25) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  sub_1CEFDA0C4(v75, v79 + v70, type metadata accessor for Signpost);
  v80 = (v79 + v71);
  *v80 = sub_1CF045408;
  v80[1] = 0;
  *(v79 + v76) = v109;
  v81 = v79 + v77;
  v82 = v105;
  *v81 = "enumerateMaterializedSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)";
  *(v81 + 8) = 78;
  *(v81 + 16) = 2;
  v83 = (v79 + v78);
  v84 = v118;
  *v83 = v111;
  v83[1] = v84;
  v85 = (v79 + ((v78 + 23) & 0xFFFFFFFFFFFFFFF8));
  v86 = v115;
  *v85 = sub_1CF9000C4;
  v85[1] = v86;
  v87 = swift_allocObject();
  v87[2] = sub_1CF903308;
  v87[3] = v72;
  v88 = v107;
  v87[4] = v107;
  swift_retain_n();

  v112 = v72;
  v89 = v106;

  v90 = fpfs_current_log();
  v91 = *(v88 + 16);
  v92 = v113;
  sub_1CEFCCBDC(v119, v113, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v82 + 48))(v92, 1, v89) == 1)
  {
    sub_1CEFCCC44(v92, &unk_1EC4BE370, qword_1CFA01B30);
    v93 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v94 = v101;
    sub_1CF9E6438();
    (*(v82 + 8))(v92, v89);
    v93 = sub_1CF9E63C8();
    (*(v102 + 8))(v94, v103);
  }

  v95 = swift_allocObject();
  v95[2] = v90;
  v95[3] = sub_1CF4858EC;
  v95[4] = v79;
  v123 = sub_1CF2BA17C;
  v124 = v95;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v121 = sub_1CEFCA444;
  v122 = &block_descriptor_5136;
  v96 = _Block_copy(&aBlock);
  v97 = v90;

  v123 = sub_1CF2BA180;
  v124 = v87;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v121 = sub_1CEFCA444;
  v122 = &block_descriptor_5139;
  v98 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v91, v108, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v93, v96, v98);
  _Block_release(v98);
  _Block_release(v96);

  sub_1CEFCCC44(v119, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v117, type metadata accessor for Signpost);
  v99 = v114;
  v100 = fpfs_adopt_log();
}

void sub_1CF869274(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, void (*a3)(_TtC18FileProviderDaemon8FSTester *, _TtC18FileProviderDaemon8FSTester *, void, void *, void, void, __n128), uint64_t a4, void *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v186 = a8;
  v202 = a7;
  v205 = a1;
  v199 = sub_1CF9E5FF8();
  v201 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v203 = &v177[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50B8, &unk_1CFA18240);
  v189 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v200 = &v177[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v198 = &v177[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v197 = &v177[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v196 = &v177[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v195 = &v177[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v204 = &v177[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v177[-v27];
  v187 = type metadata accessor for FPFSMaterializedSetAnchor(0);
  MEMORY[0x1EEE9AC00](v187);
  v30 = &v177[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v193 = &v177[-v32];
  v33 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  if (!swift_dynamicCastClass())
  {
    (a3)(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, a5, 0, 0);
    return;
  }

  v188 = v33;
  v184 = v30;
  v182 = a4;
  v183 = a3;
  v34 = 500;
  if (a6 < 500)
  {
    v34 = a6;
  }

  if (v34 <= 10)
  {
    v34 = 10;
  }

  v192 = v34;
  v35 = qword_1EDEBBDA8;
  swift_beginAccess();
  sub_1CEFCCBDC(a2 + v35, v28, &unk_1EC4BEDE0, qword_1CF9FA390);
  v36 = sub_1CF9E5D98();
  v37 = *(v36 - 8);
  v191 = *(v37 + 48);
  if ((v191)(v28, 1, v36) == 1)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v38 = a5;
  v39 = v193;
  sub_1CF9034D8(v38, v28, v193);
  if (v8)
  {

    return;
  }

  v181 = 0;
  v41 = *v205->tester;
  isa = v205[1].super.isa;
  v205 = __swift_project_boxed_opaque_existential_1(v205, v41);
  v42 = v187;
  v190 = *&v39[*(v187 + 20)];
  v185 = type metadata accessor for VFSItem(0);
  v180 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v43 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v44 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388, &unk_1CFA018B0);
  v45 = v181;
  v46 = sub_1CF24D218(v190, v192, v205, v185, v180, v41, v43, v44, isa);
  if (v45)
  {
    sub_1CEFD5338(v193, type metadata accessor for FPFSMaterializedSetAnchor);

    return;
  }

  v50 = v46;
  v51 = v47;
  v178 = v49;
  v181 = 0;
  v52 = v48;
  v53 = a2 + v35;
  v54 = v204;
  sub_1CEFCCBDC(v53, v204, &unk_1EC4BEDE0, qword_1CF9FA390);
  if ((v191)(v54, 1, v36) == 1)
  {
    goto LABEL_30;
  }

  v55 = v184;
  (*(v37 + 32))(v184, v54, v36);
  *(v55 + *(v42 + 20)) = v52;
  v56 = *v50->tree;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = v200;
  v179 = v50;
  v180 = v51;
  if (v56)
  {
    v206 = MEMORY[0x1E69E7CC0];
    v205 = v56;
    sub_1CF9E7A48();
    v59 = *&v202[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
    v60 = v50 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
    v191 = (v201 + 48);
    v192 = v59;
    v185 = (v201 + 32);
    v189 = *(v189 + 72);
    v190 = (v201 + 8);
    v62 = v198;
    v61 = v199;
    v63 = v203;
    v64 = v196;
    v65 = v197;
    v66 = v195;
    do
    {
      v204 = v60;
      sub_1CEFCCBDC(v60, v66, &qword_1EC4C50B8, &unk_1CFA18240);
      sub_1CEFCCBDC(v66, v64, &qword_1EC4C50B8, &unk_1CFA18240);
      v81 = *(v64 + 8);
      v203 = *v64;

      *(v64 + 24), v82, v83, v84, v85, v86, v87, v88;
      sub_1CEFCCBDC(v66, v65, &qword_1EC4C50B8, &unk_1CFA18240);

      v202 = *(v65 + 8);
      *(v65 + 24), v89, v90, v91, v92, v93, v94, v95;
      sub_1CEFCCBDC(v66, v62, &qword_1EC4C50B8, &unk_1CFA18240);

      v96 = *(v62 + 24);
      v201 = *(v62 + 16);
      sub_1CEFCCBDC(v66, v58, &qword_1EC4C50B8, &unk_1CFA18240);

      *(v58 + 24), v97, v98, v99, v100, v101, v102, v103;
      v104 = v194;
      v105 = *(v194 + 80);
      v106 = *v191;
      if ((*v191)(v58 + v105, 1, v61) == 1)
      {
        sub_1CF9E5F78();
        if (v106(v58 + v105, 1, v61) != 1)
        {
          sub_1CEFCCC44(&v200[v105], &unk_1EC4C50C0, &unk_1CFA084A0);
        }
      }

      else
      {
        (*v185)(v63, v58 + v105, v61);
      }

      v67 = *(v104 + 80);
      v68 = objc_allocWithZone(MEMORY[0x1E6967388]);
      v69 = sub_1CF9E6888();
      v96, v70, v71, v72, v73, v74, v75, v76;
      v77 = sub_1CF9E5F38();
      v79 = v202;
      v78 = v203;
      v201 = [v68 initWithProviderDomainID:v192 itemIdentifier:v203 parentItemIdentifier:v202 filename:v69 contentType:v77];

      (*v190)(v63, v61);
      v66 = v195;
      sub_1CEFCCC44(v195, &qword_1EC4C50B8, &unk_1CFA18240);
      v62 = v198;
      sub_1CEFCCC44(&v198[v67], &unk_1EC4C50C0, &unk_1CFA084A0);
      v65 = v197;
      sub_1CEFCCC44(&v197[v67], &unk_1EC4C50C0, &unk_1CFA084A0);
      v80 = &v196[v67];
      v64 = v196;
      sub_1CEFCCC44(v80, &unk_1EC4C50C0, &unk_1CFA084A0);
      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      v60 = &v204[v189];
      v205 = (v205 - 1);
      v61 = v199;
      v58 = v200;
    }

    while (v205);
    v57 = v206;
    v55 = v184;
    v51 = v180;
  }

  v205 = v57;
  v107 = *v51->tree;
  v108 = MEMORY[0x1E69E7CC0];
  if (v107)
  {
    v206 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v109 = v51 + 1;
    type metadata accessor for FPFileTree(0);
    do
    {
      v110 = v109->super.isa;
      v109 = (v109 + 8);
      [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(swift_dynamicCastClassUnconditional() + 280) itemIdentifier:v110];
      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      --v107;
    }

    while (v107);
    v108 = v206;
    v55 = v184;
    v51 = v180;
  }

  sub_1CF9E56C8();
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CEFCCCA4(&qword_1EC4C50B0, type metadata accessor for FPFSMaterializedSetAnchor, &unk_1CFA18794);
  v111 = v181;
  v112 = sub_1CF9E56A8();
  v120 = v193;
  v121 = v179;
  if (v111)
  {
    v51, v113, v114, v115, v116, v117, v118, v119;
    v121, v122, v123, v124, v125, v126, v127, v128;

    v205, v129, v130, v131, v132, v133, v134, v135;
    v108, v136, v137, v138, v139, v140, v141, v142;

    sub_1CEFD5338(v55, type metadata accessor for FPFSMaterializedSetAnchor);
    v143 = v120;
  }

  else
  {
    v144 = v112;
    v145 = v51;
    v146 = v113;
    sub_1CEFE42D4(v112, v113);
    v147 = sub_1CF9E5B48();
    sub_1CEFE4714(v144, v146);
    sub_1CEFE4714(v144, v146);

    v148 = v205;
    (v183)(v205, v108, v178 & 1, v147, 0, 0);
    v145, v149, v150, v151, v152, v153, v154, v155;
    v121, v156, v157, v158, v159, v160, v161, v162;

    v148, v163, v164, v165, v166, v167, v168, v169;
    v108, v170, v171, v172, v173, v174, v175, v176;

    sub_1CEFD5338(v55, type metadata accessor for FPFSMaterializedSetAnchor);
    v143 = v193;
  }

  sub_1CEFD5338(v143, type metadata accessor for FPFSMaterializedSetAnchor);
}

double FPDDomainFPFSBackend.currentMaterializedSetSyncAnchor(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("currentMaterializedSetSyncAnchor(completionHandler:)", 52, 2, sub_1CF8F0CC0, v4, sub_1CF8F0CEC, v5);

  return result;
}

double sub_1CF86A0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F0CC0;
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_1CF7AAF88("currentMaterializedSetSyncAnchor(completionHandler:)", 52, 2, 2, sub_1CF9034B8, v8, sub_1CF8FFFE8, v7);

  return result;
}

void sub_1CF86A1E8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for FPFSMaterializedSetAnchor(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v40 = v15;
  if (swift_dynamicCastClass())
  {
    v35 = v12;
    v36 = v14;
    v33 = a4;
    v34 = a3;
    v39 = v4;
    v16 = qword_1EDEBBDA8;
    swift_beginAccess();
    sub_1CEFCCBDC(a2 + v16, v11, &unk_1EC4BEDE0, qword_1CF9FA390);
    v17 = sub_1CF9E5D98();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11, 1, v17) == 1)
    {
      __break(1u);
    }

    else
    {
      v19 = a1[3];
      v38 = a1[4];
      v37 = __swift_project_boxed_opaque_existential_1(a1, v19);
      v20 = type metadata accessor for VFSItem(0);
      v21 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
      v22 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
      v23 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388, &unk_1CFA018B0);

      v24 = v23;
      v25 = v39;
      v26 = sub_1CF24D160(v37, v20, v21, v19, v22, v24, v38);
      if (v25)
      {

        (*(v18 + 8))(v11, v17);
      }

      else
      {
        v27 = v26;
        v28 = v36;
        (*(v18 + 32))(v36, v11, v17);
        *(v28 + *(v35 + 20)) = v27;
        sub_1CF9E56C8();
        swift_allocObject();
        sub_1CF9E56B8();
        sub_1CF9E5698();
        sub_1CEFCCCA4(&qword_1EC4C50B0, type metadata accessor for FPFSMaterializedSetAnchor, &unk_1CFA18794);
        v29 = sub_1CF9E56A8();
        v31 = v30;
        sub_1CEFE42D4(v29, v30);
        v32 = sub_1CF9E5B48();
        sub_1CEFE4714(v29, v31);
        sub_1CEFE4714(v29, v31);

        (v34)(v32);

        sub_1CEFD5338(v28, type metadata accessor for FPFSMaterializedSetAnchor);
      }
    }
  }

  else
  {
    a3();
  }
}

uint64_t sub_1CF86A748(uint64_t a1, char *a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v121 = a4;
  v133 = a3;
  v125 = a1;
  v126 = a2;
  v7 = sub_1CF9E6118();
  v127 = *(v7 - 8);
  v128 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v110 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v110 - v14;
  v16 = sub_1CF9E5CF8();
  v123 = *(v16 - 8);
  v124 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v114 = &v110 - v19;
  v131 = type metadata accessor for FPFSPendingSetAnchor(0);
  MEMORY[0x1EEE9AC00](v131);
  v116 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v119 = &v110 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v110 - v24;
  v132 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v26 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v129 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v130 = &v110 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v110 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v110 - v37;
  v39 = objc_sync_enter(v4);
  if (v39)
  {
LABEL_64:
    MEMORY[0x1EEE9AC00](v39);
    *(&v110 - 2) = v4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v110 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v40 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFCCBDC(&v4[v40], v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v41 = objc_sync_exit(v4);
  if (v41)
  {
    MEMORY[0x1EEE9AC00](v41);
    *(&v110 - 2) = v4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v110 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v42 = sub_1CF9E5B88();
  v44 = v43 >> 62;
  v117 = v25;
  v113 = v15;
  if ((v43 >> 62) > 1)
  {
    if (v44 != 2)
    {
      sub_1CEFE4714(v42, v43);
      v53 = 1;
      goto LABEL_19;
    }

    v54 = *(v42 + 16);
    v55 = *(v42 + 24);
    sub_1CEFE4714(v42, v43);
    if (v54 != v55)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  if (v44)
  {
    v56 = v42;
    sub_1CEFE4714(v42, v43);
    if (v56 != v56 >> 32)
    {
      goto LABEL_6;
    }

LABEL_14:
    v53 = 1;
    goto LABEL_19;
  }

  v45 = v43;
  sub_1CEFE4714(v42, v43);
  if ((v45 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v111 = v5;
  v112 = v38;
  v46 = sub_1CF9E5B88();
  v48 = v47;
  if (qword_1EDEAB5E8 != -1)
  {
    swift_once();
  }

  v49 = sub_1CF9E5B88();
  v51 = v50;
  v52 = sub_1CF328660(v46, v48, v49, v50);
  sub_1CEFE4714(v49, v51);
  sub_1CEFE4714(v46, v48);
  if (!v52)
  {
    v38 = sub_1CF9E5B88();
    v6 = v57;
    if (qword_1EDEAB5F0 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_17;
  }

  v53 = 1;
  while (1)
  {
    v38 = v112;
    v6 = v111;
LABEL_19:
    sub_1CEFCCBDC(v38, v35, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v61 = *(v26 + 48);
    v62 = v132;
    if (v61(v35, 1, v132) != 1)
    {
      break;
    }

    sub_1CEFCCC44(v35, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (!v53)
    {
      v63 = fpfs_current_or_default_log();
      v64 = v120;
      sub_1CF9E6128();
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E72A8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1CEFC7000, v65, v66, "received a non-empty sync anchor when pending set is not being computed anymore", v67, 2u);
        MEMORY[0x1D386CDC0](v67, -1, -1);
      }

      (*(v127 + 8))(v64, v128);
      type metadata accessor for NSFileProviderError(0);
      v134 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      swift_willThrow();
      return sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

LABEL_27:
    sub_1CEFCCBDC(v38, v32, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v61(v32, 1, v62) == 1)
    {
      v70 = v129;
      sub_1CF83F228(v121, v129);
      if (v6)
      {
        sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
        result = (v61)(v32, 1, v62);
        if (result != 1)
        {
          return sub_1CEFCCC44(v32, &qword_1EC4C49F8, &qword_1CFA17AF8);
        }

        return result;
      }

      if (v61(v32, 1, v62) != 1)
      {
        sub_1CEFCCC44(v32, &qword_1EC4C49F8, &qword_1CFA17AF8);
      }
    }

    else
    {
      v70 = v129;
      sub_1CEFDA0C4(v32, v129, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }

    v26 = v131;
    sub_1CEFDA34C(v70, v125, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    v81 = sub_1CF9E5D98();
    v32 = v126;
    (*(*(v81 - 8) + 16))(v126, v70, v81);
    v82 = *(v62 + 20);
    v83 = v122;
    v84 = v123;
    v85 = v124;
    (*(v123 + 16))(v122, v70 + v82, v124);
    sub_1CF9E5C98();
    v87 = v86;
    (*(v84 + 8))(v83, v85);
    sub_1CEFD5338(v70, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    result = sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v88 = v87 * 1000000000.0;
    if (COERCE__INT64(fabs(v87 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v88 <= -9.22337204e18)
    {
      goto LABEL_58;
    }

    if (v88 < 9.22337204e18)
    {
      *&v32[*(v26 + 20)] = v88;
      *&v32[*(v26 + 24)] = 0;
      v32[*(v26 + 28)] = 1;
      return result;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
LABEL_17:
    v58 = sub_1CF9E5B88();
    v60 = v59;
    v53 = sub_1CF328660(v38, v6, v58, v59);
    sub_1CEFE4714(v58, v60);
    sub_1CEFE4714(v38, v6);
  }

  v69 = v130;
  sub_1CEFDA0C4(v35, v130, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  if (v53)
  {
    sub_1CEFD5338(v69, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    v62 = v132;
    goto LABEL_27;
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v71 = sub_1CF9E5B88();
  v73 = v72;
  sub_1CEFCCCA4(&qword_1EC4C50A8, type metadata accessor for FPFSPendingSetAnchor, &unk_1CFA16528);
  v74 = v119;
  v75 = v131;
  sub_1CF9E5668();
  if (!v6)
  {

    sub_1CEFE4714(v71, v73);
    v89 = v74;
    v90 = v117;
    sub_1CEFDA0C4(v89, v117, type metadata accessor for FPFSPendingSetAnchor);
    v91 = v116;
    sub_1CEFDA34C(v90, v116, type metadata accessor for FPFSPendingSetAnchor);
    v92 = sub_1CF9E5D48();
    v93 = sub_1CF9E5D98();
    (*(*(v93 - 8) + 8))(v91, v93);
    if ((v92 & 1) == 0)
    {
      v103 = fpfs_current_or_default_log();
      v104 = v115;
      sub_1CF9E6128();
      v105 = sub_1CF9E6108();
      v106 = sub_1CF9E72A8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "received a pending set anchor for an outdated UUID";
LABEL_53:
        _os_log_impl(&dword_1CEFC7000, v105, v106, v108, v107, 2u);
        MEMORY[0x1D386CDC0](v107, -1, -1);
      }

LABEL_54:

      (*(v127 + 8))(v104, v128);
      type metadata accessor for NSFileProviderError(0);
      v134 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      swift_willThrow();
      sub_1CEFD5338(v90, type metadata accessor for FPFSPendingSetAnchor);
      sub_1CEFD5338(v69, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      return sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

    v94 = *(v90 + *(v75 + 20));
    v95 = v114;
    sub_1CEFCCBDC(v69 + *(v132 + 24), v114, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v96 = sub_1CF4D3CE8(v95);
    if ((v97 & 1) == 0 && v94 == v96)
    {
      goto LABEL_50;
    }

    v4 = v122;
    v98 = v123;
    v99 = v124;
    (*(v123 + 16))(v122, v69 + *(v132 + 20), v124);
    sub_1CF9E5C98();
    v101 = v100;
    v39 = (*(v98 + 8))(v4, v99);
    v102 = v101 * 1000000000.0;
    if (COERCE__INT64(fabs(v101 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v102 > -9.22337204e18)
    {
      if (v102 < 9.22337204e18)
      {
        if (v94 == v102)
        {
LABEL_50:
          sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
          sub_1CEFDA0C4(v69, v125, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
          return sub_1CEFDA0C4(v90, v126, type metadata accessor for FPFSPendingSetAnchor);
        }

        v109 = fpfs_current_or_default_log();
        v104 = v113;
        sub_1CF9E6128();
        v105 = sub_1CF9E6108();
        v106 = sub_1CF9E72A8();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          v108 = "received a change gathering for an outdated timestamp";
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  sub_1CEFE4714(v71, v73);
  v76 = fpfs_current_or_default_log();
  v77 = v118;
  sub_1CF9E6128();
  v78 = sub_1CF9E6108();
  v79 = sub_1CF9E72A8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_1CEFC7000, v78, v79, "cannot decode anchor for pending set", v80, 2u);
    MEMORY[0x1D386CDC0](v80, -1, -1);
  }

  (*(v127 + 8))(v77, v128);
  type metadata accessor for NSFileProviderError(0);
  v134 = -1002;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
  sub_1CF9E57D8();
  swift_willThrow();

  sub_1CEFD5338(v69, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  return sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
}

double FPDDomainFPFSBackend.enumeratePendingSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = a1;
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7298();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v52 = v17;
    v19 = v18;
    v51 = swift_slowAlloc();
    v56 = v51;
    *v19 = 136315394;
    v20 = sub_1CF9E5B88();
    v54 = v10;
    v21 = v20;
    v50 = v16;
    v22 = v15;
    v23 = a4;
    v24 = v5;
    v26 = v25;
    v27 = sub_1CF9E5AB8();
    v55 = a3;
    v28 = a2;
    v29 = v27;
    v53 = v11;
    v31 = v30;
    v32 = v26;
    v5 = v24;
    a4 = v23;
    v15 = v22;
    sub_1CEFE4714(v21, v32);
    v33 = v29;
    a2 = v28;
    a3 = v55;
    v34 = sub_1CEFD0DF0(v33, v31, &v56);
    v31, v35, v36, v37, v38, v39, v40, v41;
    *(v19 + 4) = v34;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a2;
    v42 = v50;
    _os_log_impl(&dword_1CEFC7000, v50, v52, "FPFS backend - enumerate pending %s, %ld", v19, 0x16u);
    v43 = v51;
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    (*(v53 + 8))(v13, v54);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  *(v44 + 24) = a4;
  v45 = swift_allocObject();
  v45[2] = a3;
  v45[3] = a4;
  v45[4] = v5;
  v45[5] = v15;
  v45[6] = a2;
  swift_retain_n();
  v46 = v15;
  v47 = v5;
  sub_1CEFD4024("enumeratePendingSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)", 73, 2, sub_1CF903258, v44, sub_1CF8F0CF4, v45);

  return result;
}

double sub_1CF86BAE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v12;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;
  swift_retain_n();
  v15 = a4;
  v16 = a5;

  sub_1CF7AAF88("enumeratePendingSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)", 73, 2, 2, sub_1CF8FFF30, v13, sub_1CF8FFF7C, v14);

  return result;
}

uint64_t sub_1CF86BC0C(_TtC18FileProviderDaemon8FSTester *a1, int *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(_TtC18FileProviderDaemon8FSTester *, _TtC18FileProviderDaemon8FSTester *, void, uint64_t, uint64_t (**)(void, void, void), int *, void, double), uint64_t a8)
{
  v200 = a3;
  v193 = a8;
  v194 = a7;
  v195 = a6;
  v198 = a5;
  v199 = a1;
  v10 = sub_1CF9E5CF8();
  v197 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FPFSPendingSetAnchor(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v185 - v17;
  v19 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v201;
  result = sub_1CF86A748(v21, v18, v200, a4);
  if (v22)
  {
    return result;
  }

  v191 = v15;
  v192 = v12;
  v200 = v18;
  v201 = v21;
  v188 = v10;
  v189 = a4;
  v196 = v19;
  v186 = *(v18 + *(v13 + 28));
  v24 = v13;
  v190 = 0;
  v187 = a2;
  if (v186 == 1)
  {
    v25 = *(&v201->super.isa + v196[7]);
    v26 = *(v25 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v202 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v26, 0);
      v27 = v202;
      v10 = v25 + 32;
      do
      {
        v28 = *v10;
        v202 = v27;
        v30 = *v27->tree;
        v29 = *v27->tester;
        v31 = v28;
        if (v30 >= v29 >> 1)
        {
          sub_1CF680D2C((v29 > 1), v30 + 1, 1);
          v27 = v202;
        }

        *v27->tree = v30 + 1;
        *(&v27[1].super.isa + v30) = v31;
        v10 += 24;
        --v26;
      }

      while (v26);
      v47 = MEMORY[0x1E69E7CC0];
      v18 = v200;
      v48 = v189;
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
      v48 = v189;
    }
  }

  else
  {
    v32 = *(v18 + *(v13 + 20));
    v33 = v197;
    v47 = v201;
    v34 = v192;
    v27 = v188;
    (v197)[2](v192, v201 + v196[5], v188);
    sub_1CF9E5C98();
    v36 = v35;
    (v33[1])(v34, v27);
    v44 = v36 * 1000000000.0;
    v45 = fabs(v36 * 1000000000.0);
    v48 = v189;
    if (v45 > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v45 = 0xC3E0000000000001;
    if (v44 <= -9.22337204e18)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v45 = 0x43E0000000000000;
    if (v44 >= 9.22337204e18)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v32 == v44)
    {
      v27 = MEMORY[0x1E69E7CC0];
      v47 = MEMORY[0x1E69E7CC0];
      v46 = v198;
      goto LABEL_23;
    }

    v49 = v196;
    v50 = *(&v47->super.isa + v196[8]);
    v51 = *(v50 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v202 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v51, 0);
      v27 = v202;
      v52 = (v50 + 32);
      do
      {
        v53 = *v52;
        v202 = v27;
        v10 = *v27->tree;
        v54 = *v27->tester;
        v55 = v53;
        if (v10 >= v54 >> 1)
        {
          v56 = v55;
          sub_1CF680D2C((v54 > 1), v10 + 1, 1);
          v55 = v56;
          v27 = v202;
        }

        *v27->tree = v10 + 1;
        *(&v27[1].super.isa + v10) = v55;
        v52 += 3;
        --v51;
      }

      while (v51);
      v18 = v200;
      v49 = v196;
    }

    v47 = *(&v47->super.isa + v49[9]);
    swift_bridgeObjectRetain_n();
  }

  v46 = v198;

LABEL_23:
  v45 = 10;
  if (v46 > 10)
  {
    v45 = v46;
  }

  if (v45 >= 500)
  {
    v45 = 500;
  }

  v34 = *(v18 + v24[6]);
  v15 = (v34 + v45);
  if (__OFADD__(v34, v45))
  {
    __break(1u);
    goto LABEL_69;
  }

  v57 = *v27->tree;
  v27, v37, v38, v39, v40, v41, v42, v43;
  if (v34 >= v57)
  {
    LODWORD(v10) = 0;
    v67 = MEMORY[0x1E69E7CC0];
    v18 = v192;
    goto LABEL_37;
  }

  v65 = *v27->tree;
  LODWORD(v10) = v15 < v65;
  if (v65 >= v15)
  {
    v45 = v15;
  }

  else
  {
    v45 = *v27->tree;
  }

  v18 = v192;
  if (v45 < v34)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v34 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v65 != v45 - v34)
  {
    sub_1CF4771D4(v27, &v27[1], v34, (2 * v45) | 1);
    v67 = v66;
LABEL_37:
    v27, v58, v59, v60, v61, v62, v63, v64;
    v27 = v67;
  }

  v68 = *v47->tree;
  v47, v58, v59, v60, v61, v62, v63, v64;
  v185 = v24;
  if (v34 < v68)
  {
    v76 = *v47->tree;
    if (v76 >= v15)
    {
      v45 = v15;
    }

    else
    {
      v45 = *v47->tree;
    }

    if (v15 < v76)
    {
      LODWORD(v10) = 1;
    }

    if (v45 >= v34)
    {
      if (v76 < v34)
      {
        goto LABEL_76;
      }

      if (v76 != v45 - v34)
      {
        goto LABEL_78;
      }

      if (!v10)
      {
        while (1)
        {
LABEL_48:
          v77 = sub_1CF9E5D98();
          v15 = v191;
          (*(*(v77 - 8) + 16))(v191, v200, v77);
          v78 = v196;
          v10 = v197;
          v79 = v18;
          v34 = v18;
          v18 = v188;
          (v197)[2](v79, v201 + v196[5], v188);
          sub_1CF9E5C98();
          v81 = v80;
          v82 = *(v10 + 8);
          LOBYTE(v10) = v10 + 8;
          v82(v34, v18);
          v83 = v81 * 1000000000.0;
          v45 = fabs(v81 * 1000000000.0);
          if (v45 > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
          }

          else
          {
            v45 = 0xC3E0000000000001;
            v18 = v190;
            v10 = v199;
            if (v83 > -9.22337204e18)
            {
              if (v83 < 9.22337204e18)
              {
                LODWORD(v198) = 0;
                *&v15[v24[5]] = v83;
                *&v15[v24[6]] = 0;
                v15[v24[7]] = 0;
                goto LABEL_54;
              }

              __break(1u);
LABEL_81:
              if (sub_1CF9E7818() >= 900)
              {
                goto LABEL_82;
              }

              goto LABEL_58;
            }
          }

          __break(1u);
LABEL_78:
          sub_1CF4771D4(v47, &v47[1], v34, (2 * v45) | 1);
          v177 = v176;
          v47, v178, v179, v180, v181, v182, v183, v184;
          v47 = v177;
          if (v10)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_73;
  }

  v47, v69, v70, v71, v72, v73, v74, v75;
  v47 = MEMORY[0x1E69E7CC0];
  if ((v10 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  v84 = v200;
  v85 = *(v200 + v24[5]);
  v86 = sub_1CF9E5D98();
  v87 = v191;
  (*(*(v86 - 8) + 16))(v191, v84, v86);
  *(v87 + v24[5]) = v85;
  *(v87 + v24[6]) = v15;
  v15 = v87;
  *(v87 + v24[7]) = v186;
  LODWORD(v198) = 1;
  v18 = v190;
  v78 = v196;
  v10 = v199;
LABEL_54:
  v24 = [objc_allocWithZone(MEMORY[0x1E6967338]) init];
  v88 = v201;
  v89 = [v24 setDomainVersion_];
  MEMORY[0x1EEE9AC00](v89);
  *(&v185 - 4) = v10;
  *(&v185 - 3) = v48;
  v48 = v187;
  *(&v185 - 2) = v187;
  v90 = sub_1CF25A894(sub_1CF8FFFA8, (&v185 - 6), v27);
  v10 = v18;
  if (v18)
  {

    v47, v98, v99, v100, v101, v102, v103, v104;
    v27, v105, v106, v107, v108, v109, v110, v111;
    sub_1CEFD5338(v15, type metadata accessor for FPFSPendingSetAnchor);
    sub_1CEFD5338(v200, type metadata accessor for FPFSPendingSetAnchor);
    return sub_1CEFD5338(v88, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  }

  else
  {
    v18 = v90;
    v27, v91, v92, v93, v94, v95, v96, v97;
    if (v18 >> 62)
    {
      goto LABEL_81;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 900)
    {
LABEL_82:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 3551);
    }

LABEL_58:
    v112 = *v199->tester;
    isa = v199[1].super.isa;
    v114 = __swift_project_boxed_opaque_existential_1(v199, v112);
    v115 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
    sub_1CF769068(v18, 32, v114, v112, v115, &off_1F4BF8588, isa);
    if (v10)
    {

      v47, v116, v117, v118, v119, v120, v121, v122;
      v18, v123, v124, v125, v126, v127, v128, v129;
      sub_1CEFD5338(v191, type metadata accessor for FPFSPendingSetAnchor);
      sub_1CEFD5338(v200, type metadata accessor for FPFSPendingSetAnchor);
      return sub_1CEFD5338(v201, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }

    else
    {
      sub_1CF9E56C8();
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CEFCCCA4(&qword_1EC4C50A0, type metadata accessor for FPFSPendingSetAnchor, &unk_1CFA16550);
      v130 = sub_1CF9E56A8();
      v199 = v18;
      v132 = v130;
      v133 = v131;
      sub_1CEFE42D4(v130, v131);
      v197 = sub_1CF9E5B48();
      sub_1CEFE4714(v132, v133);
      sub_1CEFE4714(v132, v133);

      MEMORY[0x1EEE9AC00](v134);
      *(&v185 - 2) = v201;
      *(&v185 - 1) = v48;
      sub_1CF052DA4(v48, sub_1CF8FFFCC);
      v190 = 0;
      v142 = v47;
      v143 = *v47->tree;
      if (v143)
      {
        v202 = MEMORY[0x1E69E7CC0];
        sub_1CF9E7A48();
        type metadata accessor for FPFileTree(0);
        v144 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(swift_dynamicCastClassUnconditional() + 280) itemIdentifier:*(&v142->super.isa + v144)];
          sub_1CF9E7A18();
          sub_1CF9E7A58();
          v142 = v47;
          sub_1CF9E7A68();
          sub_1CF9E7A28();
          v144 += 8;
          --v143;
        }

        while (v143);
        v47, v145, v146, v147, v148, v149, v150, v151;
        v152 = v202;
      }

      else
      {
        v47, v135, v136, v137, v138, v139, v140, v141;
        v152 = MEMORY[0x1E69E7CC0];
      }

      v153 = v201;
      v154 = *(&v201->super.isa + v196[14]);
      v155 = [objc_opt_self() defaultStore];
      [v155 pendingSetRefreshInterval];
      v157 = v156;

      v158 = v197;
      v159 = v197;
      v160 = v24;
      v161 = v199;
      v194(v199, v152, v198, v154, v158, v24, 0, v157);
      v152, v162, v163, v164, v165, v166, v167, v168;

      v161, v169, v170, v171, v172, v173, v174, v175;
      sub_1CEFD5338(v191, type metadata accessor for FPFSPendingSetAnchor);
      sub_1CEFD5338(v200, type metadata accessor for FPFSPendingSetAnchor);
      return sub_1CEFD5338(v153, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }
  }
}

uint64_t sub_1CF86C870@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v53 = a5;
  v49 = a6;
  v50 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v12 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v49 - v13;
  v15 = sub_1CF9E5FF8();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a2[3];
  v20 = a2[4];
  v21 = a2;
  v22 = v18;
  v23 = __swift_project_boxed_opaque_existential_1(v21, v19);
  v24 = *(a3 + 40);
  v55 = v22;
  v25 = v54;
  result = (*(*v24 + 240))(&v55, 1, v23, v19, v20);
  if (v25)
  {
    *v53 = v25;
  }

  else
  {
    v53 = v22;
    v54 = 0;
    v27 = v49;
    if ((*(v12 + 48))(v11, 1, v52) == 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CF9E5F78();
      v28 = *MEMORY[0x1E6967258];
      v29 = 0xE000000000000000;
      v30 = v27;
      v31 = v15;
      v32 = v50;
    }

    else
    {
      sub_1CEFE55D0(v11, v14, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v29 = *(v14 + 11);
      v33 = v14[*(v52 + 48)];

      v30 = v27;
      if (v33 > 1)
      {
        v32 = v50;
        if (v33 == 2)
        {
          sub_1CF9E5F18();
        }

        else
        {
          sub_1CF9E5FC8();
        }
      }

      else
      {
        v32 = v50;
        if (v33)
        {
          sub_1CF9E5F98();
        }

        else
        {
          sub_1CF9E5F78();
        }
      }

      v34 = *(v14 + 1);
      v35 = v14;
      v28 = v34;
      sub_1CEFCCC44(v35, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v31 = v15;
    }

    v36 = *(v32 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
    v37 = objc_allocWithZone(MEMORY[0x1E6967388]);
    v38 = v28;
    v39 = sub_1CF9E6888();
    v29, v40, v41, v42, v43, v44, v45, v46;
    v47 = sub_1CF9E5F38();
    v48 = [v37 initWithProviderDomainID:v36 itemIdentifier:v53 parentItemIdentifier:v38 filename:v39 contentType:v47];

    result = (*(v51 + 8))(v17, v31);
    *v30 = v48;
  }

  return result;
}

uint64_t sub_1CF86CC64(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFDA34C(a1, v11, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v12 = *(*(a1 + v8[7]) + 16);
  sub_1CF86CEBC(v12 != 0);
  if (v2)
  {

    v13 = 2;
  }

  else
  {
    v13 = v12 != 0;
  }

  v11[v8[12]] = v13;
  v14 = v8[5];
  v15 = v8[13];
  v16 = sub_1CF9E5CF8();
  (*(*(v16 - 8) + 24))(&v11[v15], &v11[v14], v16);
  sub_1CEFDA34C(v11, v7, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  (*(v9 + 56))(v7, 0, 1, v8);
  v17 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFDA9E0(v7, a2 + v17, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  return sub_1CEFD5338(v11, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
}

void sub_1CF86CEBC(int a1)
{
  v3 = v1;
  v5 = sub_1CF9E5A58();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6118();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  v17 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFCCBDC(v3 + v17, v16, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v18 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  if ((*(*(v18 - 8) + 48))(v16, 1, v18))
  {
    sub_1CEFCCC44(v16, &qword_1EC4C49F8, &qword_1CFA17AF8);
  }

  else
  {
    v24 = v16[*(v18 + 48)];
    sub_1CEFCCC44(v16, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v24 != 2 && ((v24 ^ a1) & 1) == 0)
    {
      return;
    }
  }

  sub_1CF9E5438();
  swift_allocObject();
  sub_1CF9E5428();
  v63 = a1 & 1;
  v19 = sub_1CF9E5418();
  v21 = v20;

  if (!v2)
  {
    v55 = v19;
    v56 = v21;
    v22 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
    swift_beginAccess();
    v54 = v22;
    sub_1CEFCCBDC(v3 + v22, v13, &unk_1EC4BE310, qword_1CF9FCBE0);
    v23 = v62;
    v53 = *(v62 + 48);
    if (v53(v13, 1, v5) == 1)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    sub_1CF9E5BB8();
    v51 = *(v23 + 8);
    v51(v13, v5);
    v25 = fpfs_current_or_default_log();
    v26 = v61;
    sub_1CF9E6128();
    v52 = v3;
    v27 = sub_1CF9E6108();
    v50 = sub_1CF9E7298();
    if (os_log_type_enabled(v27, v50))
    {
      v48 = v23 + 8;
      v49 = v27;
      v28 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64 = v47;
      *v28 = 67109378;
      *(v28 + 4) = a1 & 1;
      *(v28 + 8) = 2080;
      v29 = v58;
      sub_1CEFCCBDC(v3 + v54, v58, &unk_1EC4BE310, qword_1CF9FCBE0);
      v30 = v53(v29, 1, v5);

      if (v30 != 1)
      {
        v31 = *(v23 + 32);
        v32 = v57;
        v31(v57, v29, v5);
        sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v33 = sub_1CF9E7F98();
        v35 = v34;
        v51(v32, v5);
        v36 = sub_1CEFD0DF0(v33, v35, &v64);
        v35, v37, v38, v39, v40, v41, v42, v43;
        *(v28 + 10) = v36;
        v44 = v49;
        _os_log_impl(&dword_1CEFC7000, v49, v50, "Persisted pending set status %{BOOL}d to %s", v28, 0x12u);
        v45 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1D386CDC0](v45, -1, -1);
        MEMORY[0x1D386CDC0](v28, -1, -1);
        sub_1CEFE4714(v55, v56);

        (*(v59 + 8))(v61, v60);
        return;
      }

      goto LABEL_15;
    }

    sub_1CEFE4714(v55, v56);
    (*(v59 + 8))(v26, v60);
  }
}

void sub_1CF86D5B0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v16 = sub_1CF9E6D28();
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v17 = sub_1CF9E6D28();
  if (a7)
  {
    v18 = sub_1CF9E57E8();
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  (*(a8 + 16))(a8, v16, v17, a3 & 1, a4 & 1, a5, a6, a9);
}

double FPDDomainFPFSBackend.currentPendingSetSyncAnchor(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  swift_retain_n();
  v7 = v2;
  sub_1CEFD4024("currentPendingSetSyncAnchor(completionHandler:)", 47, 2, sub_1CF8F0D0C, v5, sub_1CF8F0D40, v6);

  return result;
}

double sub_1CF86D7B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v7;
  v9[4] = a2;
  v9[5] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF8F0D0C;
  *(v10 + 24) = v8;
  swift_retain_n();
  v11 = a4;

  sub_1CF7AAF88("currentPendingSetSyncAnchor(completionHandler:)", 47, 2, 2, sub_1CF9034B8, v10, sub_1CF8FFF10, v9);

  return result;
}

uint64_t sub_1CF86D8E0(uint64_t a1, char *a2, char *a3, void (*a4)(uint64_t, void *, double), uint64_t a5)
{
  v43 = a5;
  v44 = a4;
  v8 = sub_1CF9E5CF8();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FPFSPendingSetAnchor(0);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = objc_sync_enter(a2);
  if (v21)
  {
LABEL_17:
    MEMORY[0x1EEE9AC00](v21);
    *(&v39 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v39 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF86DF50(a2, a3, v20);
  if (!v5)
  {
    result = objc_sync_exit(a2);
    if (result)
    {
      goto LABEL_18;
    }

    sub_1CEFCCBDC(v20, v17, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if ((*(v13 + 48))(v17, 1, v12) == 1)
    {
      sub_1CEFCCC44(v17, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v44(0, 0, 0.0);
      return sub_1CEFCCC44(v20, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

    a2 = v41;
    sub_1CEFDA0C4(v17, v41, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    v23 = sub_1CF9E5D98();
    v24 = v42;
    (*(*(v23 - 8) + 16))(v42, a2, v23);
    v25 = v40;
    (*(v40 + 16))(v10, &a2[*(v12 + 20)], v8);
    sub_1CF9E5C98();
    v27 = v26;
    v21 = (*(v25 + 8))(v10, v8);
    v28 = v27 * 1000000000.0;
    if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -9.22337204e18)
    {
      if (v28 < 9.22337204e18)
      {
        v29 = v39;
        *(v24 + *(v39 + 20)) = v28;
        *(v24 + *(v29 + 24)) = 0;
        *(v24 + *(v29 + 28)) = 0;
        v30 = a2[*(v12 + 56)];
        v31 = [objc_opt_self() defaultStore];
        [v31 pendingSetRefreshInterval];
        v33 = v32;

        sub_1CF9E56C8();
        swift_allocObject();
        sub_1CF9E56B8();
        sub_1CF9E5698();
        sub_1CEFCCCA4(&qword_1EC4C50A0, type metadata accessor for FPFSPendingSetAnchor, &unk_1CFA16550);
        v34 = a2;
        v35 = sub_1CF9E56A8();
        v37 = v36;
        sub_1CEFE42D4(v35, v36);
        v38 = sub_1CF9E5B48();
        sub_1CEFE4714(v35, v37);
        sub_1CEFE4714(v35, v37);

        v44(v30, v38, v33);

        sub_1CEFD5338(v24, type metadata accessor for FPFSPendingSetAnchor);
        sub_1CEFD5338(v34, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
        return sub_1CEFCCC44(v20, &qword_1EC4C49F8, &qword_1CFA17AF8);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = objc_sync_exit(a2);
  if (result)
  {
LABEL_18:
    MEMORY[0x1EEE9AC00](result);
    *(&v39 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v39 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF86DF50@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v29 = a3;
  v4 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  v14 = v13;
  sub_1CEFCCBDC(a1 + v13, v12, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v26 = v5;
  v28 = *(v5 + 48);
  LODWORD(v13) = v28(v12, 1, v4);
  sub_1CEFCCC44(v12, &qword_1EC4C49F8, &qword_1CFA17AF8);
  if (v13 == 1)
  {
    v15 = v31;
    result = sub_1CF83F228(v27, v7);
    if (v15)
    {
      return result;
    }

    sub_1CF86CEBC(0);
    v31 = 0;
    v17 = v14;
    v7[v4[12]] = 0;
    v18 = v25;
    sub_1CEFDA0C4(v7, v25, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    (*(v26 + 56))(v18, 0, 1, v4);
    swift_beginAccess();
    sub_1CEFDA9E0(v18, a1 + v14, &qword_1EC4C49F8, &qword_1CFA17AF8);
    swift_endAccess();
  }

  else
  {
    v17 = v14;
  }

  v19 = sub_1CF828014(v30);
  v21 = v20;
  if (!v28(v20, 1, v4))
  {
    v22 = v4[5];
    v23 = v4[13];
    v24 = sub_1CF9E5CF8();
    (*(*(v24 - 8) + 24))(&v21[v23], &v21[v22], v24);
  }

  (v19)(v30, 0);
  return sub_1CEFCCBDC(a1 + v17, v29, &qword_1EC4C49F8, &qword_1CFA17AF8);
}

void sub_1CF86E3CC(char *a1, uint64_t a2, void *a3)
{
  sub_1CF052DA4(a1, sub_1CF8F8AD0);
  v5 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification;
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
    *&a1[v5] = 0;
    swift_unknownObjectRelease();
  }

  v6 = [objc_msgSend(a3 session)];
  swift_unknownObjectRelease();
  v7 = [v6 synchronousRemoteObjectProxy];
  sub_1CF9E7728();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CA0, &unk_1CFA17E90);
  if (swift_dynamicCast())
  {
    v8 = aBlock[6];
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a1;
    aBlock[4] = sub_1CF8F8AEC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_1847;
    v10 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v11 = a3;
    v12 = a1;

    [v8 signalEnumeratorForPendingItemsWithCompletionHandler_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    _Block_release(v10);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CF86E5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v8, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v16 = *(v13 + 48);
  v17 = v16(v8, 1, v12);
  v18 = &unk_1EDEA5000;
  v29 = a2;
  if (v17 == 1)
  {
    v19 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
    swift_beginAccess();
    v20 = a2 + v19;
    v18 = &unk_1EDEA5000;
    sub_1CEFCCBDC(v20, v11, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v16(v8, 1, v12) != 1)
    {
      sub_1CEFCCC44(v8, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }
  }

  else
  {
    sub_1CEFDA0C4(v8, v11, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    (*(v13 + 56))(v11, 0, 1, v12);
  }

  if (v16(v11, 1, v12) == 1)
  {
    return sub_1CEFCCC44(v11, &qword_1EC4C49F8, &qword_1CFA17AF8);
  }

  sub_1CEFDA0C4(v11, v15, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v22 = *(*&v15[*(v12 + 28)] + 16);
  v23 = v29;
  v24 = v30;
  sub_1CF86CEBC(v22 != 0);
  if (v24)
  {

    v25 = 2;
  }

  else
  {
    v25 = v22 != 0;
  }

  v15[*(v12 + 48)] = v25;
  v26 = v28;
  sub_1CEFDA34C(v15, v28, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  (*(v13 + 56))(v26, 0, 1, v12);
  v27 = v18[401];
  swift_beginAccess();
  sub_1CEFDA9E0(v26, v23 + v27, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  return sub_1CEFD5338(v15, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
}

uint64_t sub_1CF86E99C(char *a1, void *a2, void *a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1CF9E7948();
  v10 = v71;
  v11 = [a2 providerDomainID];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;
  v10, v13, v15, v16, v17, v18, v19, v20;

  v70 = v12;
  v71 = v14;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5D2A0);
  v22 = v70;
  v21 = v71;
  v23 = sub_1CF9E6888();
  v24 = [v23 fp_libnotifyPerUserNotificationName];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  v27 = sub_1CF9E6978();
  v26, v28, v29, v30, v31, v32, v33, v34;
  notify_post((v27 + 32));

  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v36 = sub_1CF9E6108();
  v37 = sub_1CF9E7298();
  v21, v38, v39, v40, v41, v42, v43, v44;
  if (os_log_type_enabled(v36, v37))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v69[0] = a3;
    v47 = v6;
    v48 = a1;
    v49 = v46;
    v70 = v46;
    *v45 = 136315138;
    v50 = sub_1CEFD0DF0(v22, v21, &v70);
    v21, v51, v52, v53, v54, v55, v56, v57;
    *(v45 + 4) = v50;
    _os_log_impl(&dword_1CEFC7000, v36, v37, "sending notification %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v58 = v49;
    a1 = v48;
    MEMORY[0x1D386CDC0](v58, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);

    v59 = v47;
    a3 = v69[0];
    (*(v7 + 8))(v9, v59);
  }

  else
  {

    v21, v60, v61, v62, v63, v64, v65, v66;
    (*(v7 + 8))(v9, v6);
  }

  v67 = objc_sync_enter(a3);
  if (v67)
  {
    MEMORY[0x1EEE9AC00](v67);
    v69[-2] = a3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v69[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF86ED94(a3, a1);
  result = objc_sync_exit(a3);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v69[-2] = a3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v69[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF86ED94(char *a1, char *a2)
{
  v126 = a2;
  v129 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v122 = &v107 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v107 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v113 = (&v107 - v9);
  v10 = sub_1CF9E6118();
  v120 = *(v10 - 8);
  v121 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v119 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v114 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v107 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v107 - v26;
  v28 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  v125 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  v124 = a1;
  sub_1CEFCCBDC(&a1[v28], v27, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v118 = v13;
  v29 = *(v13 + 48);
  v30 = v29(v27, 1, v12);
  v111 = v15;
  if (v30)
  {
    sub_1CEFCCC44(v27, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v126)
    {
      return;
    }
  }

  else
  {
    v31 = v126;
    sub_1CEFDA34C(v27, v15, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    sub_1CEFCCC44(v27, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v32 = sub_1CF827C04();
    sub_1CEFD5338(v15, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    if ((v32 & 1) != 0 || v31)
    {
      return;
    }
  }

  v33 = fpfs_current_or_default_log();
  v34 = v123;
  sub_1CF9E6128();
  v35 = v124;
  v36 = v124;
  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E7298();
  v126 = v36;

  v110 = v38;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v128[0] = v109;
    *v39 = 136315650;
    sub_1CEFCCBDC(v35 + v125, v24, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v40 = v29;
    if (v29(v24, 1, v12))
    {
      sub_1CEFCCC44(v24, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v41 = sub_1CF9E5CF8();
      (*(*(v41 - 8) + 56))(v113, 1, 1, v41);
    }

    else
    {
      v44 = v12[13];
      v45 = sub_1CF9E5CF8();
      v46 = *(v45 - 8);
      v47 = &v24[v44];
      v48 = v113;
      (*(v46 + 16))(v113, v47, v45);
      sub_1CEFCCC44(v24, &qword_1EC4C49F8, &qword_1CFA17AF8);
      (*(v46 + 56))(v48, 0, 1, v45);
    }

    v113 = v37;
    v49 = sub_1CF9E6948();
    v51 = v50;
    v52 = sub_1CEFD0DF0(v49, v50, v128);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v39 + 4) = v52;
    *(v39 + 12) = 2080;
    v35 = v124;
    v60 = v112;
    sub_1CEFCCBDC(v124 + v125, v112, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v61 = v40(v60, 1, v12);
    v108 = v40;
    if (v61)
    {
      sub_1CEFCCC44(v60, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v62 = sub_1CF9E5CF8();
      (*(*(v62 - 8) + 56))(v115, 1, 1, v62);
    }

    else
    {
      v63 = v111;
      sub_1CEFDA34C(v60, v111, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      sub_1CEFCCC44(v60, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v64 = v12[5];
      v65 = sub_1CF9E5CF8();
      v66 = *(v65 - 8);
      v67 = v63 + v64;
      v68 = v115;
      (*(v66 + 16))(v115, v67, v65);
      sub_1CEFD5338(v63, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      (*(v66 + 56))(v68, 0, 1, v65);
      v35 = v124;
    }

    v69 = sub_1CF9E6948();
    v71 = v70;
    v72 = sub_1CEFD0DF0(v69, v70, v128);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v39 + 14) = v72;
    *(v39 + 22) = 2080;
    v42 = v125;
    v80 = v114;
    sub_1CEFCCBDC(v35 + v125, v114, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v108(v80, 1, v12))
    {
      sub_1CEFCCC44(v80, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v81 = sub_1CF9E5CF8();
      (*(*(v81 - 8) + 56))(v116, 1, 1, v81);
    }

    else
    {
      v82 = v111;
      sub_1CEFDA34C(v80, v111, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      sub_1CEFCCC44(v80, &qword_1EC4C49F8, &qword_1CFA17AF8);
      sub_1CEFCCBDC(v82 + v12[6], v116, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFD5338(v82, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }

    v43 = v122;
    v83 = sub_1CF9E6948();
    v85 = v84;
    v86 = sub_1CEFD0DF0(v83, v84, v128);
    v85, v87, v88, v89, v90, v91, v92, v93;
    *(v39 + 24) = v86;
    v94 = v113;
    _os_log_impl(&dword_1CEFC7000, v113, v110, "Notifications from the pending set got ignored, stopping it, last enumeration: %s, refresh date: %s (previous: %s", v39, 0x20u);
    v95 = v109;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v95, -1, -1);
    MEMORY[0x1D386CDC0](v39, -1, -1);

    (*(v120 + 8))(v123, v121);
  }

  else
  {
    v42 = v125;

    (*(v120 + 8))(v34, v121);
    v43 = v122;
  }

  v96 = v119;
  (*(v118 + 56))(v119, 1, 1, v12);
  swift_beginAccess();
  sub_1CEFDA9E0(v96, v35 + v42, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  v97 = [objc_opt_self() defaultManager];
  v98 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
  v99 = v126;
  swift_beginAccess();
  sub_1CEFCCBDC(&v99[v98], v43, &unk_1EC4BE310, qword_1CF9FCBE0);
  v100 = sub_1CF9E5A58();
  v101 = *(v100 - 8);
  if ((*(v101 + 48))(v43, 1, v100) == 1)
  {
    __break(1u);
  }

  else
  {
    v102 = sub_1CF9E5928();
    (*(v101 + 8))(v43, v100);
    v127 = 0;
    v103 = [v97 removeItemAtURL:v102 error:&v127];

    if (v103)
    {
      v104 = v127;
    }

    else
    {
      v105 = v127;
      v106 = sub_1CF9E57F8();

      swift_willThrow();
    }
  }
}

void sub_1CF86F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v12 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  sub_1CEFDA34C(a4, v15, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = a6;
  sub_1CEFDA0C4(v15, v19 + v17, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  *(v19 + v18) = a5;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a2;
  v20[1] = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  swift_retain_n();

  v22 = a5;
  sub_1CF7AAF88("checkForPendingSetChanges(completionHandler:)", 45, 2, 2, sub_1CF9034B8, v21, sub_1CF8F9414, v19);
}

uint64_t sub_1CF86FB6C(double a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, char *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v175 = a7;
  v180 = a5;
  v181 = a6;
  v184 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v169 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v171 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v161 - v12;
  v185 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v173 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v188 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v190 = &v161 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v179 = &v161 - v17;
  v186 = sub_1CF9E6118();
  v18 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v174 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v172 = &v161 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v161 - v23;
  v192 = sub_1CF9E5CF8();
  v25 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v161 - v28;
  v176 = a3;
  v30 = *a3->tree;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v187 = swift_dynamicCastClassUnconditional();
  v182 = v30;

  sub_1CF9E5CE8();
  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E7298();
  v34 = os_log_type_enabled(v32, v33);
  v189 = v29;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = a1;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "Going full rescan for pending items after %f", v35, 0xCu);
    v29 = v189;
    MEMORY[0x1D386CDC0](v35, -1, -1);
  }

  v37 = *(v18 + 8);
  v36 = v18 + 8;
  v177 = v37;
  v37(v24, v186);
  v38 = v190;
  sub_1CEFDA34C(v184, v190, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v39 = *(v25 + 16);
  v40 = v191;
  v41 = v192;
  v39(v191, v29, v192);
  v42 = v183;
  v43 = sub_1CF7F6F74();
  if (v42)
  {

    v44 = *(v25 + 8);
    v44(v40, v41);
    v44(v29, v41);
    return sub_1CEFD5338(v38, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  }

  v183 = v43;
  v167 = v39;
  v168 = v25 + 16;
  v165 = v36;
  v46 = v176;
  v47 = objc_sync_enter(v176);
  if (v47)
  {
    goto LABEL_55;
  }

  v164 = 0;
  v163 = *(&v46->super.isa + qword_1EDEADB30);
  v162 = v163;
  v48 = objc_sync_exit(v46);
  v49 = v192;
  if (v48)
  {
    MEMORY[0x1EEE9AC00](v48);
    *(&v161 - 2) = v46;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v161 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v50 = v25;
  LODWORD(v187) = *(v187 + 96);
  v51 = sub_1CF9E5D98();
  v52 = v188;
  (*(*(v51 - 8) + 16))(v188, v38, v51);
  v53 = v185;
  v54 = v167;
  v167(&v52[*(v185 + 20)], v191, v49);
  v55 = v53[6];
  v54(&v52[v55], v38 + v53[5], v49);
  (*(v25 + 56))(&v52[v55], 0, 1, v49);
  *&v52[v53[7]] = v183;

  v57 = sub_1CF8E4764(v56);
  v46 = *(v38 + v53[7]);
  v58 = sub_1CF8E2944(v46, v57);
  v59 = v58;
  v60 = *(v58 + 16);
  if (v60)
  {
    v61 = sub_1CF1F8CE8(*(v58 + 16), 0);
    v62 = sub_1CF1FA388(&v193, (v61 + 4), v60, v59);
    v47 = sub_1CEFCB59C(v193);
    if (v62 == v60)
    {
      v50 = v25;
      v63 = v189;
      v64 = v185;
      v65 = v180;
      goto LABEL_11;
    }

    __break(1u);
LABEL_55:
    MEMORY[0x1EEE9AC00](v47);
    *(&v161 - 2) = v46;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v161 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v61 = MEMORY[0x1E69E7CC0];
  v64 = v185;
  v65 = v180;
  v63 = v29;
LABEL_11:
  v66 = v183;
  *&v188[*(v64 + 32)] = v61;
  v67 = *v46->tree;
  v68 = MEMORY[0x1E69E7CC0];
  v166 = v50;
  if (v67)
  {
    v69 = v65;
    v193 = MEMORY[0x1E69E7CC0];
    sub_1CF680D2C(0, v67, 0);
    v68 = v193;
    p_isa = &v46[1].super.isa;
    do
    {
      v71 = *p_isa;
      v193 = v68;
      v73 = *v68->tree;
      v72 = *v68->tester;
      v74 = v71;
      if (v73 >= v72 >> 1)
      {
        v75 = v72 > 1;
        v76 = v74;
        sub_1CF680D2C(v75, v73 + 1, 1);
        v74 = v76;
        v68 = v193;
      }

      *v68->tree = v73 + 1;
      *(&v68[1].super.isa + v73) = v74;
      p_isa += 3;
      --v67;
    }

    while (v67);
    v65 = v69;
    v49 = v192;
    v50 = v166;
    v63 = v189;
  }

  v77 = sub_1CF8E4840(v68);
  v68, v78, v79, v80, v81, v82, v83, v84;
  v92 = *v66->tree;
  if (v92)
  {
    v193 = MEMORY[0x1E69E7CC0];
    sub_1CF680D2C(0, v92, 0);
    v93 = 32;
    v94 = v193;
    do
    {
      v95 = *(&v66->super.isa + v93);
      v193 = v94;
      v96 = *v94->tree;
      v97 = *v94->tester;
      v105 = v95;
      if (v96 >= v97 >> 1)
      {
        sub_1CF680D2C((v97 > 1), v96 + 1, 1);
        v94 = v193;
      }

      *v94->tree = v96 + 1;
      *(&v94[1].super.isa + v96) = v105;
      v93 += 24;
      --v92;
    }

    while (v92);
    v66, v98, v99, v100, v101, v102, v103, v104;
    v65 = v180;
    v49 = v192;
    v50 = v166;
    v63 = v189;
  }

  else
  {
    v66, v85, v86, v87, v88, v89, v90, v91;
    v94 = MEMORY[0x1E69E7CC0];
  }

  v106 = sub_1CF8E23D0(v94, v77);
  v94, v107, v108, v109, v110, v111, v112, v113;
  v114 = v106[2];
  v115 = v185;
  if (!v114)
  {
    goto LABEL_27;
  }

  v116 = sub_1CF1F8AC0(v106[2], 0);
  v117 = sub_1CF1FA234(&v193, v116 + 4, v114, v106);
  sub_1CEFCB59C(v193);
  if (v117 != v114)
  {
    __break(1u);
LABEL_27:

    v116 = MEMORY[0x1E69E7CC0];
  }

  v118 = v188;
  *&v188[v115[9]] = v116;
  v119 = v163;
  *&v118[v115[10]] = v163;
  v120 = *(v190 + v115[10]);
  if (v119)
  {
    if (v120)
    {
      sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      v121 = v162;
      v122 = v120;
      v123 = sub_1CF9E7568();
      v124 = v191;
      v191 = *(v50 + 8);
      (v191)(v124, v49);

      v125 = v123 ^ 1;
    }

    else
    {
      v129 = v191;
      v191 = *(v50 + 8);
      (v191)(v129, v49);
      v125 = 1;
    }

    v130 = v167;
  }

  else
  {
    v126 = *(v50 + 8);
    v127 = v120;
    v128 = v191;
    v191 = v126;
    (v126)(v128, v49);
    if (v120)
    {

      v125 = 1;
    }

    else
    {
      v125 = 0;
    }

    v130 = v167;
    v63 = v189;
  }

  v131 = v115[12];
  v132 = v188;
  v188[v115[11]] = v125 & 1;
  *(v132 + v131) = 2;
  v133 = v190;
  v130(v132 + v115[13], v190 + v115[13], v49);
  sub_1CEFD5338(v133, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  *(v132 + v115[14]) = v187;
  v134 = v179;
  v135 = sub_1CEFDA0C4(v132, v179, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v136 = v181;
  if (*(*(v134 + v115[9]) + 16) || *(*(v134 + v115[8]) + 16) || (v137 = v115[11], (*(v134 + v137) & 1) != 0) || (*(v184 + v137) & 1) != 0 || (v160 = v115[14], (*(v184 + v160) & 1) == 0) && *(v134 + v160) == 1)
  {
    v138 = fpfs_current_or_default_log();
    v139 = v172;
    sub_1CF9E6128();
    v140 = sub_1CF9E6108();
    v141 = sub_1CF9E7298();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_1CEFC7000, v140, v141, "Pending set updates found, notifying", v142, 2u);
      MEMORY[0x1D386CDC0](v142, -1, -1);
    }

    v143 = v139;
    v144 = v186;
    v177(v143, v186);
    v145 = v178;
    if (*(v134 + v115[11]) == 1)
    {
      v146 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v147 = sub_1CF9E6108();
      v148 = sub_1CF9E7298();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_1CEFC7000, v147, v148, "Will force a second notify due to domain version change", v149, 2u);
        MEMORY[0x1D386CDC0](v149, -1, -1);
      }

      v177(v174, v144);
    }

    sub_1CEFDA34C(v134, v145, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    (*(v173 + 56))(v145, 0, 1, v115);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v151 = Strong;
      v190 = *&v65[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue];
      v152 = v65;
      v153 = v171;
      sub_1CEFCCBDC(v145, v171, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v154 = (*(v169 + 80) + 24) & ~*(v169 + 80);
      v155 = (v170 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
      v156 = swift_allocObject();
      *(v156 + 16) = v152;
      v157 = v156 + v154;
      v145 = v178;
      sub_1CEFE55D0(v153, v157, &qword_1EC4C49F8, &qword_1CFA17AF8);
      *(v156 + v155) = v151;
      v158 = v152;
      v159 = v151;
      sub_1CF01001C(0, "sendPendingSetNotification(newState:)", 37, 2, sub_1CF902D88, v156);

      v134 = v179;
    }

    v135 = sub_1CEFCCC44(v145, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v136 = v181;
    v49 = v192;
    v63 = v189;
  }

  v136(v135);

  (v191)(v63, v49);
  return sub_1CEFD5338(v134, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
}

double FPDDomainFPFSBackend.state(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("state(completionHandler:)", 25, 2, sub_1CF8F0D4C, v4, sub_1CF8F0D70, v5);

  return result;
}

double sub_1CF870B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_retain_n();

  sub_1CF7AAF88("state(completionHandler:)", 25, 2, 2, sub_1CF8FFECC, v6, sub_1CF8FFEF0, v7);

  return result;
}

uint64_t sub_1CF870C0C(void *a1, uint64_t (*a2)(void, void), const char *a3, const char *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v13 = a1;
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24[0] = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v24[1] = a3;
    v19 = a2;
    v20 = v18;
    *v17 = 138412290;
    swift_getErrorValue();
    v21 = Error.prettyDescription.getter(v24[3], v24[4]);
    *(v17 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&dword_1CEFC7000, v14, v15, v24[0], v17, 0xCu);
    sub_1CEFCCC44(v20, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v22 = v20;
    a2 = v19;
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  return a2(0, a1);
}

uint64_t sub_1CF870E0C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  result = sub_1CF5B901C(0, v7, v5, v6);
  if (!v3)
  {
    if (result)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    return a3(v9, 0);
  }

  return result;
}

double FPDDomainFPFSBackend.wakeForPush(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  swift_retain_n();
  v7 = v2;
  sub_1CEFD4024("wakeForPush(completionHandler:)", 31, 2, sub_1CF90324C, v5, sub_1CF8F0D78, v6);

  return result;
}

void sub_1CF8710B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong extensionBackend], v7, v8))
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1CF00A468;
    v11[3] = &block_descriptor_5070;
    v9 = _Block_copy(v11);

    [v8 wakeForPushWithCompletionHandler_];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_1CF8403B4();
    a3();
  }
}

double FPDDomainFPFSBackend.didChange(_:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v3;
  v8[4] = a2;
  v8[5] = a3;
  v9 = a1;
  v10 = v3;

  sub_1CF01001C(v7, "didChange(_:completionHandler:)", 31, 2, sub_1CF8F0D84, v8);

  return result;
}

void sub_1CF871410(void *a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v73[1] = a4;
  v74 = a3;
  v83 = sub_1CF9E6118();
  v5 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = v73 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v73 - v11;
  v13 = [objc_allocWithZone(FPLoggerScope) init];
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = v13;
  v16 = a1;
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E7298();
  v78 = v16;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    v21 = [v15 enter];
    *(v19 + 4) = v21;
    *(v19 + 12) = 2112;
    v22 = v78;
    *(v19 + 14) = v78;
    *v20 = v21;
    v20[1] = v22;
    v23 = v22;
    _os_log_impl(&dword_1CEFC7000, v17, v18, "%@ 📖  item %@ changed", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);
  }

  v73[0] = v15;

  v82 = *(v5 + 8);
  v24 = v5 + 8;
  v82(v12, v83);
  v25 = sub_1CF0878B4();
  v34 = v78;
  v84 = *v25->tree;
  v85 = v25;
  if (v84)
  {
    v35 = 0;
    anon_8 = v85[1]._anon_8;
    *&v33 = 136315138;
    v76 = v33;
    v77 = v7;
    while (v35 < *v85->tree)
    {
      v37 = *(anon_8 - 1);
      v38 = *anon_8;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v40 = [v34 identifier];
      v41 = *(v38 + 16);
      v86 = ObjectType;
      v42 = v41();

      if (v42)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        swift_unknownObjectRetain();
        v45 = sub_1CF9E6108();
        v46 = sub_1CF9E7298();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v79 = v46;
          v48 = v47;
          v80 = swift_slowAlloc();
          v87 = v80;
          *v48 = v76;
          v49 = [v37 description];
          v81 = v43;
          v50 = v49;
          v51 = v24;
          v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v54 = v53;

          v55 = sub_1CEFD0DF0(v52, v54, &v87);
          v56 = v54;
          v7 = v77;
          v56, v57, v58, v59, v60, v61, v62, v63;
          *(v48 + 4) = v55;
          v43 = v81;
          _os_log_impl(&dword_1CEFC7000, v45, v79, "notifying %s", v48, 0xCu);
          v64 = v80;
          __swift_destroy_boxed_opaque_existential_1(v80);
          MEMORY[0x1D386CDC0](v64, -1, -1);
          MEMORY[0x1D386CDC0](v48, -1, -1);

          v24 = v51;
          v82(v7, v83);
          v34 = v78;
        }

        else
        {

          v82(v7, v83);
        }

        [(*(v38 + 8))(v86 v38)];
        swift_unknownObjectRelease();
        objc_autoreleasePoolPop(v43);
      }

      ++v35;
      swift_unknownObjectRelease();
      anon_8 += 16;
      if (v84 == v35)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v85, v26, v27, v28, v29, v30, v31, v32;
    v74();
    v65 = fpfs_current_or_default_log();
    v66 = v75;
    sub_1CF9E6128();
    v67 = v73[0];
    v68 = sub_1CF9E6108();
    v69 = sub_1CF9E7298();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      v72 = [v67 leave];
      *(v70 + 4) = v72;
      *v71 = v72;
      _os_log_impl(&dword_1CEFC7000, v68, v69, "%@", v70, 0xCu);
      sub_1CEFCCC44(v71, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v71, -1, -1);
      MEMORY[0x1D386CDC0](v70, -1, -1);
    }

    v82(v66, v83);
  }
}

double FPDDomainFPFSBackend.workingSetDidChange(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("workingSetDidChange(completionHandler:)", 39, 2, sub_1CF90324C, v4, sub_1CF03C570, v5);

  return result;
}

uint64_t sub_1CF871C0C(char *a1, uint64_t a2)
{
  v4 = objc_sync_enter(a1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v8 = xmmword_1CF9FC980;
  swift_beginAccess();
  sub_1CF1C9EE0(&v8, a2);
  swift_endAccess();
  result = objc_sync_exit(a1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v7 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void FPDDomainFPFSBackend.enumerate(with:lifetimeExtender:observer:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 searchQuery];
  if (v16)
  {
    v17 = v16;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = [Strong extensionBackend];
      v21 = swift_allocObject();
      v21[2] = a4;
      v21[3] = a5;
      v21[4] = a2;
      v21[5] = a3;
      v21[6] = v5;
      v21[7] = v17;
      aBlock[4] = sub_1CF8F0DC0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_219;
      v22 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v23 = v5;
      v24 = v17;

      [v20 enumerateWithSettings:a1 lifetimeExtender:a2 observer:a3 completionHandler:v22];

      _Block_release(v22);
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = a4;
      v57 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v58 = sub_1CF9E6108();
      v59 = sub_1CF9E72A8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1CEFC7000, v58, v59, "Missing domain in enumerateWithSettings for search", v60, 2u);
        MEMORY[0x1D386CDC0](v60, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      v61 = FPNotSupportedError();
      v56(0, v61);
    }

    return;
  }

  v78 = a4;
  v25 = [a1 enumeratedItemID];
  v26 = [v25 identifier];
  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v29 = v28;
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;
  if (v27 == v30 && v29 == v31)
  {

    v29, v62, v63, v64, v65, v66, v67, v68;
    v32, v69, v70, v71, v72, v73, v74, v75;
  }

  else
  {
    v34 = sub_1CF9E8048();

    v29, v35, v36, v37, v38, v39, v40, v41;
    v32, v42, v43, v44, v45, v46, v47, v48;
    if ((v34 & 1) == 0)
    {
      v49 = swift_allocObject();
      v50 = v78;
      *(v49 + 16) = v78;
      *(v49 + 24) = a5;
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = a5;
      v51[4] = a1;
      v51[5] = v25;
      v51[6] = a2;
      v51[7] = a3;
      v51[8] = v5;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1CF8F0D90;
      *(v52 + 24) = v49;
      swift_retain_n();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v53 = v5;
      v54 = a1;
      v55 = v25;

      sub_1CEFD4024("enumerate(with:lifetimeExtender:observer:completionHandler:)", 60, 2, sub_1CF903280, v52, sub_1CF8F0DBC, v51);

      return;
    }
  }

  v77 = FPNotSupportedError();
  v78(0, v77);

  v76 = v77;
}

double sub_1CF872260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v251 = a8;
  v232 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v234 = &v228 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v235 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v238 = &v228 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v236 = &v228 - v19;
  v237 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v248 = &v228 - v22;
  v23 = sub_1CF9E6118();
  v250 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v240 = &v228 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v242 = &v228 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v228 - v28;
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = sub_1CF90325C;
  v32[3] = v30;
  v32[4] = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1CF8FF414;
  *(v33 + 24) = v32;

  v230 = a4;
  LODWORD(v241) = [a4 buildAndFilterAppLibraries];
  v34 = [a5 identifier];
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = v34;
  v231 = a6;
  *(v35 + 24) = [objc_opt_self() requestForPID_];
  v37 = v35 | 0x1000000000000000;
  v38 = v36;
  v247 = sub_1CEFD4E9C(v38);
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v249 = v29;
  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E7298();
  v245 = v35;
  v42 = v250;

  v43 = os_log_type_enabled(v40, v41);
  v246 = v23;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v255[0] = v45;
    *v44 = 136315138;
    v46 = sub_1CEFD11AC(v35 | 0x1000000000000000);
    v48 = v47;
    v49 = a1;
    v50 = v37;
    v51 = sub_1CEFD0DF0(v46, v47, v255);
    v48, v52, v53, v54, v55, v56, v57, v58;
    *(v44 + 4) = v51;
    v37 = v50;
    a1 = v49;
    _os_log_impl(&dword_1CEFC7000, v40, v41, "Request to enumerate with settings %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1D386CDC0](v45, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);

    v59 = v249;
    v60 = *(v250 + 8);
    v61 = v246;
  }

  else
  {

    v60 = *(v42 + 8);
    v59 = v249;
    v61 = v23;
  }

  v243 = v60;
  v60(v59, v61);
  v249 = *(a1 + 16);
  v62 = v247;
  swift_beginAccess();
  v63 = *(v62 + 40);
  v229 = *(v62 + 41);
  v228 = v63 == -1;
  v233 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1CF8FF2D8;
  *(v64 + 24) = v33;
  *(v64 + 32) = v37;
  v65 = v37;
  v66 = v230;
  *(v64 + 40) = v230;
  *(v64 + 48) = a1;
  v67 = v231;
  *(v64 + 56) = v38;
  *(v64 + 64) = v67;
  v68 = v251;
  *(v64 + 72) = v232;
  *(v64 + 80) = v68;
  v244 = v64;
  *(v64 + 88) = v241;
  v239 = v38;

  v241 = v33;

  v69 = v66;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v70 = v68;
  v71 = fpfs_current_or_default_log();
  v72 = v242;
  sub_1CF9E6128();
  swift_retain_n();

  v73 = sub_1CF9E6108();
  v74 = sub_1CF9E7298();
  v75 = os_log_type_enabled(v73, v74);
  v76 = v248;
  v251 = v65;
  if (v75)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = v78;
    v254 = v78;
    *v77 = 136315394;
    v80 = *(v62 + 32);
    v81 = *(v62 + 40);
    if (*(v62 + 41))
    {
      v82 = NSFileProviderItemIdentifier.description.getter(v80);
      v84 = v83;
      sub_1CEFD0994(v80, v81, 1);
    }

    else
    {
      v252 = *(v62 + 32);
      v253 = v81;
      v82 = VFSItemID.description.getter(v78);
      v84 = v86;
    }

    v87 = sub_1CEFD0DF0(v82, v84, &v254);
    v84, v88, v89, v90, v91, v92, v93, v94;
    *(v77 + 4) = v87;
    *(v77 + 12) = 2080;
    v95 = sub_1CEFD11AC(v251);
    v97 = v96;

    v98 = sub_1CEFD0DF0(v95, v97, &v254);
    v97, v99, v100, v101, v102, v103, v104, v105;
    *(v77 + 14) = v98;
    _os_log_impl(&dword_1CEFC7000, v73, v74, "Request to materialize content of itemID %s reason %s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v79, -1, -1);
    MEMORY[0x1D386CDC0](v77, -1, -1);

    v243(v242, v246);
    v85 = v234;
    v76 = v248;
  }

  else
  {

    v243(v72, v246);
    v85 = v234;
  }

  LODWORD(v242) = v229 | v228;
  sub_1CEFCCBDC(&v249[qword_1EDEBBC18], v85, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v106 = type metadata accessor for TelemetrySignposter(0);
  if ((*(*(v106 - 8) + 48))(v85, 1, v106) == 1)
  {
    sub_1CEFCCC44(v85, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v107 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v76);
    sub_1CEFD5338(v85, type metadata accessor for TelemetrySignposter);
    v107 = 0;
  }

  v108 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v108 - 8) + 56))(v76, v107, 1, v108);
  v109 = v236;
  sub_1CEFCCBDC(v76, v236, qword_1EC4C1588, &unk_1CFA0A260);
  v110 = *(v235 + 80);
  v111 = (v110 + 16) & ~v110;
  v112 = v237;
  v113 = (v237 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = swift_allocObject();
  sub_1CEFE55D0(v109, v114 + v111, qword_1EC4C1588, &unk_1CFA0A260);
  v115 = (v114 + v113);
  v116 = v244;
  *v115 = sub_1CF8FF424;
  v115[1] = v116;
  v117 = v238;
  sub_1CEFCCBDC(v76, v238, qword_1EC4C1588, &unk_1CFA0A260);
  v118 = (v110 + 24) & ~v110;
  v236 = (v118 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = (v118 + v112 + 31) & 0xFFFFFFFFFFFFFFF8;
  v237 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
  v120 = (v119 + 31) & 0xFFFFFFFFFFFFFFF8;
  v121 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
  v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
  v123 = swift_allocObject();
  *(v123 + 16) = v251;
  sub_1CEFE55D0(v117, v123 + v118, qword_1EC4C1588, &unk_1CFA0A260);
  v124 = v123 + v236;
  *v124 = sub_1CF8FF424;
  *(v124 + 8) = v116;
  v125 = (v242 & 1) == 0;
  *(v124 + 16) = v242 & 1;
  *(v123 + v119) = v249;
  v126 = v123 + v237;
  v127 = v247;
  *v126 = v247;
  *(v126 + 8) = 1;
  *(v123 + v120) = 0;
  v128 = v233;
  *(v123 + v121) = v233;
  v129 = v127;
  v130 = v123 + v122;
  *v130 = sub_1CF903314;
  *(v130 + 8) = v114;
  *(v130 + 16) = 1;
  if (v125)
  {
    v131 = 1;
  }

  else
  {
    v131 = 2;
  }

  LODWORD(v232) = v131;
  v132 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v133 = v128;
  v238 = v114;

  v134 = [v132 init];
  v135 = swift_allocObject();
  v135[2] = sub_1CF903318;
  v135[3] = v123;
  v235 = v135;
  v135[4] = v251;
  swift_retain_n();
  v237 = v123;
  swift_retain_n();
  v136 = fpfs_current_or_default_log();
  v137 = v240;
  sub_1CF9E6128();
  swift_retain_n();

  v138 = sub_1CF9E6108();
  v139 = sub_1CF9E7298();
  v140 = os_log_type_enabled(v138, v139);
  v236 = v134;
  if (v140)
  {
    v234 = v133;
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v233 = v142;
    v254 = v142;
    *v141 = 136315906;
    v143 = *(v129 + 32);
    v144 = *(v129 + 40);
    if (*(v129 + 41))
    {
      v145 = NSFileProviderItemIdentifier.description.getter(v143);
      v147 = v146;
      sub_1CEFD0994(v143, v144, 1);
    }

    else
    {
      v252 = *(v129 + 32);
      v253 = v144;
      v145 = VFSItemID.description.getter(v142);
      v147 = v148;
    }

    v149 = sub_1CEFD0DF0(v145, v147, &v254);
    v147, v150, v151, v152, v153, v154, v155, v156;
    *(v141 + 4) = v149;
    *(v141 + 12) = 2080;
    if (v242)
    {
      v157 = 0xD000000000000010;
    }

    else
    {
      v157 = 0x74616761706F7270;
    }

    if (v242)
    {
      v158 = 0x80000001CFA2C3C0;
    }

    else
    {
      v158 = 0xED000053466F5465;
    }

    v159 = sub_1CEFD0DF0(v157, v158, &v254);
    v158, v160, v161, v162, v163, v164, v165, v166;
    *(v141 + 14) = v159;
    *(v141 + 22) = 2080;
    v167 = sub_1CEFD11AC(v251);
    v169 = v168;

    v170 = sub_1CEFD0DF0(v167, v169, &v254);
    v169, v171, v172, v173, v174, v175, v176, v177;
    *(v141 + 24) = v170;
    *(v141 + 32) = 2048;
    *(v141 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v138, v139, "Lookup itemID %s with behavior %s request %s iteration %ld", v141, 0x2Au);
    v178 = v233;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v178, -1, -1);
    MEMORY[0x1D386CDC0](v141, -1, -1);

    v243(v137, v246);
    v133 = v234;
  }

  else
  {

    v243(v137, v246);
  }

  v179 = v248;
  v180 = *(v129 + 32);
  v181 = *(v129 + 40);
  if ((*(v129 + 41) & 1) == 0)
  {
    if (!v180 && v181 == 2)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v182 = qword_1EDEA34B0;
  v183 = v180;
  if (v182 != -1)
  {
    swift_once();
  }

  v184 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v186 = v185;
  v188 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v194 = v187;
  if (v184 != v188 || v186 != v187)
  {
    v203 = sub_1CF9E8048();
    v186, v204, v205, v206, v207, v208, v209, v210;
    v194, v211, v212, v213, v214, v215, v216, v217;
    sub_1CEFD0994(v180, v181, 1);
    v129 = v247;
    if (v203)
    {
      goto LABEL_36;
    }

LABEL_38:
    v218 = swift_allocObject();
    v219 = v251;
    *(v218 + 16) = v251;
    v220 = v218 | 0x7000000000000004;
    v221 = swift_allocObject();
    v222 = v235;
    *(v221 + 16) = sub_1CF796A0C;
    *(v221 + 24) = v222;
    v234 = v133;
    v223 = v249;
    *(v221 + 32) = v249;
    *(v221 + 40) = v232;
    *(v221 + 48) = v219;
    *(v221 + 56) = v129;
    *(v221 + 64) = 0;
    v202 = v236;
    *(v221 + 72) = v236;
    *(v221 + 80) = 0;
    v224 = swift_allocObject();
    *(v224 + 16) = v129;
    *(v224 + 24) = v223;
    *(v224 + 32) = 0;
    *(v224 + 40) = sub_1CF796A90;
    *(v224 + 48) = v221;
    *(v224 + 56) = v220;
    v225 = swift_allocObject();
    *(v225 + 16) = sub_1CF796A90;
    *(v225 + 24) = v221;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v226 = v202;

    v133 = v234;
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v225, sub_1CF796A9C, v224);

    v179 = v248;

    goto LABEL_39;
  }

  v186, v187, v188, v189, v190, v191, v192, v193;
  v194, v195, v196, v197, v198, v199, v200, v201;
  sub_1CEFD0994(v180, v181, 1);
LABEL_36:
  sub_1CF90CAC8(v251, sub_1CF796A0C, v235);

  v202 = v236;
LABEL_39:

  sub_1CEFCCC44(v179, qword_1EC4C1588, &unk_1CFA0A260);

  return result;
}

void sub_1CF8733A8(uint64_t a1, void (*a2)(void, id), uint64_t a3, unint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(void, id), char *a10, unsigned __int8 a11)
{
  v319 = a8;
  v327 = a7;
  v328 = a6;
  v330 = a5;
  v331 = a3;
  v329 = a2;
  v355 = *MEMORY[0x1E69E9840];
  v13 = sub_1CF9E63D8();
  v298 = *(v13 - 8);
  v299 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v297 = &v293 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v311 = &v293 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v316 = &v293 - v18;
  v19 = sub_1CF9E6068();
  v308 = *(v19 - 1);
  v309 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v302 = &v293 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v304 = &v293 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v314 = &v293 - v24;
  v301 = type metadata accessor for Signpost(0);
  v305 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v310 = &v293 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v306 = v28;
  v307 = (&v293 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v315 = &v293 - v30;
  v31 = sub_1CF9E6118();
  v324 = *(v31 - 8);
  v325 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v317 = &v293 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v312 = &v293 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v293 - v36;
  v323 = type metadata accessor for VFSItem(0);
  v321 = *(v323 - 1);
  MEMORY[0x1EEE9AC00](v323);
  v313 = &v293 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v318 = &v293 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v303 = &v293 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v300 = &v293 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v293 - v46;
  v322 = v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v293 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = (&v293 - v53);
  sub_1CEFCCBDC(a1, &v293 - v53, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = *v54;
    v56 = *v54;
    v329(0, v55);

    return;
  }

  sub_1CEFDA0C4(v54, v51, type metadata accessor for VFSItem);
  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v326 = v51;
  sub_1CEFDA34C(v51, v47, type metadata accessor for VFSItem);
  sub_1CEFD09A0(a4);
  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E7298();
  sub_1CEFD0A98(a4);
  v60 = os_log_type_enabled(v58, v59);
  v320 = a4;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v337[0] = v62;
    *v61 = 136315394;
    v63 = sub_1CF255338();
    v65 = v64;
    sub_1CEFD5338(v47, type metadata accessor for VFSItem);
    v66 = sub_1CEFD0DF0(v63, v65, v337);
    v65, v67, v68, v69, v70, v71, v72, v73;
    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    v74 = sub_1CEFD11AC(a4);
    v76 = v75;
    v77 = sub_1CEFD0DF0(v74, v75, v337);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v61 + 14) = v77;
    _os_log_impl(&dword_1CEFC7000, v58, v59, "Found item %s for request %s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v62, -1, -1);
    MEMORY[0x1D386CDC0](v61, -1, -1);
  }

  else
  {

    sub_1CEFD5338(v47, type metadata accessor for VFSItem);
  }

  v85 = *(v324 + 8);
  v85(v37, v325);
  v86 = [v330 isPresenterEnumeration];
  v87 = v326;
  if (v86)
  {
    v88 = &v326[v323[7]];
    v89 = type metadata accessor for ItemMetadata(0);
    if (!v88[*(v89 + 84)] || v88[*(v89 + 84)] >= 4u)
    {
LABEL_39:
      v134 = v328;
      v135 = *(v328 + 16);
      v136 = *(v135 + 5);
      v137 = v303;
      sub_1CEFDA34C(v87, v303, type metadata accessor for VFSItem);
      v138 = (*(v321 + 80) + 24) & ~*(v321 + 80);
      v139 = (v322 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
      v140 = (v139 + 15) & 0xFFFFFFFFFFFFFFF8;
      v141 = swift_allocObject();
      *(v141 + 16) = v134;
      sub_1CEFDA0C4(v137, v141 + v138, type metadata accessor for VFSItem);
      *(v141 + v139) = v136;
      v142 = v320;
      v312 = v141;
      *(v141 + v140) = v320;
      v300 = v135;

      sub_1CEFD09A0(v142);

      v303 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v143 = qword_1EDEBBE40;
      v144 = v308;
      v145 = v309;
      v146 = v314;
      (*(v308 + 56))(v314, 1, 1, v309);
      strcpy(v337, "async batch ");
      BYTE5(v337[1]) = 0;
      HIWORD(v337[1]) = -5120;
      v147 = sub_1CF9E7988();
      v149 = v148;
      MEMORY[0x1D3868CC0](v147);
      v149, v150, v151, v152, v153, v154, v155, v156;
      v157 = v337[1];
      v295 = v337[0];
      v158 = v304;
      sub_1CEFCCBDC(v146, v304, &unk_1EC4BED20, &unk_1CFA00700);
      v159 = *(v144 + 48);
      v160 = v159(v158, 1, v145);
      v296 = v136;
      if (v160 == 1)
      {
        v161 = v143;
        v162 = v302;
        sub_1CF9E6048();
        v163 = v159(v158, 1, v145);
        v164 = v301;
        if (v163 != 1)
        {
          sub_1CEFCCC44(v158, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v162 = v302;
        (*(v144 + 32))(v302, v158, v145);
        v164 = v301;
      }

      v165 = *(v144 + 16);
      v166 = v144;
      v167 = v315;
      v165(v315, v162, v145);
      *(v167 + *(v164 + 20)) = v143;
      v168 = v167 + *(v164 + 24);
      *v168 = "DB queue wait";
      *(v168 + 8) = 13;
      *(v168 + 16) = 2;
      v169 = v143;
      v170 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v171 = v145;
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_1CF9FA450;
      *(v172 + 56) = MEMORY[0x1E69E6158];
      *(v172 + 64) = sub_1CEFD51C4();
      *(v172 + 32) = v295;
      *(v172 + 40) = v157;
      v290 = v172;
      LOBYTE(v289) = 2;
      sub_1CF9E6028(v170, &dword_1CEFC7000, v169, "DB queue wait", 13, 2, v167, "%s", 2);
      v172, v173, v174, v175, v176, v177, v178, v179;
      (*(v166 + 8))(v162, v171);
      sub_1CEFCCC44(v314, &unk_1EC4BED20, &unk_1CFA00700);
      v309 = *(v300 + 21);
      v314 = *(v300 + 8);
      v308 = sub_1CF9E6448();
      v304 = *(v308 - 8);
      (*(v304 + 56))(v316, 1, 1, v308);
      v180 = v307;
      sub_1CEFDA34C(v167, v307, type metadata accessor for Signpost);
      v181 = (*(v305 + 80) + 16) & ~*(v305 + 80);
      v182 = (v306 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v183 = swift_allocObject();
      v306 = type metadata accessor for Signpost;
      sub_1CEFDA0C4(v180, v183 + v181, type metadata accessor for Signpost);
      v184 = (v183 + v182);
      v307 = nullsub_1;
      *v184 = nullsub_1;
      v184[1] = 0;
      v185 = v310;
      sub_1CEFDA34C(v167, v310, type metadata accessor for Signpost);
      v186 = (v182 + 23) & 0xFFFFFFFFFFFFFFF8;
      v187 = (v186 + 15) & 0xFFFFFFFFFFFFFFF8;
      v188 = (v187 + 25) & 0xFFFFFFFFFFFFFFF8;
      v189 = swift_allocObject();
      v190 = v189 + v181;
      v191 = v304;
      sub_1CEFDA0C4(v185, v190, v306);
      v192 = (v189 + v182);
      *v192 = sub_1CF045408;
      v192[1] = 0;
      *(v189 + v186) = v300;
      v193 = v189 + v187;
      *v193 = "enumerate(with:lifetimeExtender:observer:completionHandler:)";
      *(v193 + 8) = 60;
      *(v193 + 16) = 2;
      v194 = (v189 + v188);
      v195 = v308;
      *v194 = v307;
      v194[1] = 0;
      v196 = (v189 + ((v188 + 23) & 0xFFFFFFFFFFFFFFF8));
      v197 = v312;
      *v196 = sub_1CF8FF5AC;
      v196[1] = v197;
      v198 = swift_allocObject();
      v198[2] = sub_1CF903308;
      v198[3] = v183;
      v199 = v309;
      v198[4] = v309;

      v310 = v183;

      v200 = fpfs_current_log();
      v201 = v199[2];
      v202 = v311;
      sub_1CEFCCBDC(v316, v311, &unk_1EC4BE370, qword_1CFA01B30);
      v203 = (*(v191 + 48))(v202, 1, v195);
      v309 = v201;
      if (v203 == 1)
      {
        sub_1CEFCCC44(v202, &unk_1EC4BE370, qword_1CFA01B30);
        v204 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v205 = v297;
        sub_1CF9E6438();
        (*(v191 + 8))(v202, v195);
        v204 = sub_1CF9E63C8();
        (*(v298 + 8))(v205, v299);
      }

      v206 = swift_allocObject();
      v206[2] = v200;
      v206[3] = sub_1CF4858EC;
      v206[4] = v189;
      v340 = sub_1CF2BA17C;
      v341 = v206;
      v337[0] = MEMORY[0x1E69E9820];
      v337[1] = 1107296256;
      v338 = sub_1CEFCA444;
      v339 = &block_descriptor_5019;
      v207 = _Block_copy(v337);
      v208 = v200;

      v340 = sub_1CF2BA180;
      v341 = v198;
      v337[0] = MEMORY[0x1E69E9820];
      v337[1] = 1107296256;
      v338 = sub_1CEFCA444;
      v339 = &block_descriptor_5022;
      v209 = _Block_copy(v337);

      fp_task_tracker_async_and_qos(v309, v314, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v204, v207, v209);
      _Block_release(v209);
      _Block_release(v207);

      sub_1CEFCCC44(v316, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v315, type metadata accessor for Signpost);
      v210 = v303;
      v211 = fpfs_adopt_log();

      v87 = v326;
      goto LABEL_55;
    }

    type metadata accessor for VFSFileTree(0);
    v90 = swift_dynamicCastClassUnconditional();

    v91 = objc_sync_enter(v90);
    if (v91)
    {
LABEL_66:
      MEMORY[0x1EEE9AC00](v91);
      v290 = v90;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v288, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v92 = v90[20];

    v93 = objc_sync_exit(v90);
    if (v93)
    {
      MEMORY[0x1EEE9AC00](v93);
      v290 = v90;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v288, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v101 = v87 + v323[9];
    v102 = *v101;
    v103 = v87 + v323[14];
    if (*(v103 + 4))
    {
      v104 = 0;
    }

    else
    {
      v104 = *v103;
    }

    v105 = *(v101 + 8);
    0, v94, v95, v96, v97, v98, v99, v100;
    v350[0] = v102;
    v350[1] = 0;
    v351 = v104;
    v352 = v105;
    v353 = 0;
    v354 = 0;
    v106 = *(v92 + 16);
    os_unfair_lock_lock((v92 + 56));
    v107 = *(v92 + 72);
    v296 = *(v92 + 64);
    v108 = *(v92 + 80);
    v109 = *(v92 + 88);
    v110 = *(v92 + 89);
    LODWORD(v295) = *(v92 + 90);

    os_unfair_lock_unlock((v92 + 56));
    MEMORY[0x1EEE9AC00](v111);
    v290 = (v106 | 0x20800000000000);
    v348 = 0;
    v349 = 0;
    *&v346 = v113;
    *(&v346 + 1) = v114;
    v347 = __PAIR64__(v116, v115);
    if (!v117)
    {
      *&v342 = v113;
      *(&v342 + 1) = v114;
      v343 = __PAIR64__(v116, v115);
      v344 = 0;
      v345 = 0;
      LODWORD(v333[0]) = -1;
      v121 = fpfs_openfdbyhandle();
      if ((v121 & 0x80000000) != 0)
      {
        v132 = v333[0];
        v123 = MEMORY[0x1D38683F0]();
        if (v132 < 0)
        {
          LODWORD(v337[0]) = 0;
          BYTE4(v337[0]) = 1;
        }

        else
        {
          LODWORD(v337[0]) = v333[0];
          BYTE4(v337[0]) = 0;
        }

        goto LABEL_51;
      }

      v125 = v121;
      goto LABEL_25;
    }

    MEMORY[0x1EEE9AC00](v112);
    v288 = &v346;
    v289 = sub_1CF19BDC4;
    v290 = v120;
    if ((v119 & 0x1000000000000000) == 0)
    {
      if ((v119 & 0x2000000000000000) != 0)
      {
        v333[0] = v118;
        v333[1] = v119 & 0xFFFFFFFFFFFFFFLL;
        v348 = v333;
        v342 = v346;
        v343 = v347;
        v344 = v333;
        v345 = v349;
        v332 = -1;
        v121 = fpfs_openfdbyhandle();
        if ((v121 & 0x80000000) != 0)
        {
          v294 = &v293;
          v133 = v332;
          v123 = MEMORY[0x1D38683F0]();
          if ((v133 & 0x80000000) == 0)
          {
            v124 = v332;
            goto LABEL_34;
          }

LABEL_49:
          LODWORD(v337[0]) = 0;
          BYTE4(v337[0]) = 1;
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      if ((v118 & 0x1000000000000000) != 0)
      {
        v348 = ((v119 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v342 = v346;
        v343 = v347;
        v344 = v348;
        v345 = v349;
        LODWORD(v333[0]) = -1;
        v121 = fpfs_openfdbyhandle();
        if ((v121 & 0x80000000) != 0)
        {
          v294 = &v293;
          v122 = v333[0];
          v123 = MEMORY[0x1D38683F0]();
          if ((v122 & 0x80000000) == 0)
          {
            v124 = v333[0];
LABEL_34:
            LODWORD(v337[0]) = v124;
            BYTE4(v337[0]) = 0;
LABEL_51:
            LOBYTE(v341) = 0;
            v128 = sub_1CF19BBE4(v123, v337);
            sub_1CF1969CC(v337);
            v87 = v326;
            v129 = v312;
            swift_willThrow();
            v212 = v128;
            LODWORD(v337[0]) = sub_1CF9E5308();
            sub_1CF196978();
            sub_1CF9E5658();

            sub_1CF255928(v350);
            v131 = v300;
LABEL_52:
            v213 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            sub_1CEFDA34C(v87, v131, type metadata accessor for VFSItem);
            v214 = v128;
            v215 = v131;
            v216 = sub_1CF9E6108();
            v217 = sub_1CF9E72A8();

            if (os_log_type_enabled(v216, v217))
            {
              v218 = swift_slowAlloc();
              v316 = v85;
              v219 = v218;
              v220 = swift_slowAlloc();
              v221 = swift_slowAlloc();
              v315 = v128;
              v222 = v221;
              v337[0] = v221;
              *v219 = 136446466;
              v223 = sub_1CF255338();
              v225 = v224;
              sub_1CEFD5338(v215, type metadata accessor for VFSItem);
              v226 = sub_1CEFD0DF0(v223, v225, v337);
              v225, v227, v228, v229, v230, v231, v232, v233;
              *(v219 + 4) = v226;
              *(v219 + 12) = 2112;
              v234 = v315;
              swift_getErrorValue();
              v235 = Error.prettyDescription.getter(v335, v336);
              *(v219 + 14) = v235;
              *v220 = v235;
              _os_log_impl(&dword_1CEFC7000, v216, v217, "Failed to bump urgency of presented item: %{public}s, error %@", v219, 0x16u);
              sub_1CEFCCC44(v220, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v220, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v222);
              MEMORY[0x1D386CDC0](v222, -1, -1);
              MEMORY[0x1D386CDC0](v219, -1, -1);

              (v316)(v312, v325);
            }

            else
            {

              sub_1CEFD5338(v215, type metadata accessor for VFSItem);
              v85(v129, v325);
            }

            goto LABEL_55;
          }

          goto LABEL_49;
        }

LABEL_24:
        v125 = v121;
LABEL_25:
        v90 = 0;
LABEL_26:
        MEMORY[0x1EEE9AC00](v121);
        v291 = 4;
        v292 = v125;
        v337[0] = 0;
        LOBYTE(v346) = 1;
        MEMORY[0x1EEE9AC00](v126);
        *(&v293 - 10) = v296;
        *(&v293 - 9) = v107;
        *(&v293 - 8) = v108;
        *(&v293 - 56) = v109;
        *(&v293 - 55) = v110;
        *(&v293 - 54) = v295;
        *(&v293 - 13) = v125;
        *(&v293 - 6) = 0;
        *(&v293 - 5) = &v346;
        v288 = sub_1CF8FF570;
        v289 = v127;
        v290 = v337;
        v91 = sub_1CEFE1894(sub_1CF8FF594);
        v128 = v337[0];
        v87 = v326;
        v129 = v312;
        if (v337[0])
        {
          swift_willThrow();
          v130 = v128;

          v131 = v300;
          if ((v125 & 0x80000000) == 0)
          {
            close(v125);
          }

          sub_1CF255928(v350);
          goto LABEL_52;
        }

        if ((v346 & 1) == 0)
        {
          if ((v125 & 0x80000000) == 0)
          {
            close(v125);
          }

          sub_1CF255928(v350);
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_66;
      }
    }

    v294 = &v293;
    v121 = sub_1CF9E7938();
    v125 = v334;
    v90 = 0;
    goto LABEL_26;
  }

LABEL_55:
  LODWORD(v316) = a11;
  v315 = a10;
  v236 = v328;
  v314 = *(v328 + 16);
  v237 = v318;
  sub_1CEFDA34C(v87, v318, type metadata accessor for VFSItem);
  v238 = *(v321 + 80);
  v239 = (v238 + 48) & ~v238;
  v321 = v322 + 7;
  v240 = (v322 + 7 + v239) & 0xFFFFFFFFFFFFFFF8;
  v241 = (v240 + 15) & 0xFFFFFFFFFFFFFFF8;
  v322 = (v241 + 15) & 0xFFFFFFFFFFFFFFF8;
  v242 = (v241 + 31) & 0xFFFFFFFFFFFFFFF8;
  v243 = swift_allocObject();
  v244 = v331;
  *(v243 + 2) = v329;
  *(v243 + 3) = v244;
  v245 = v327;
  *(v243 + 4) = v320;
  *(v243 + 5) = v245;
  v246 = v237;
  v247 = v243;
  sub_1CEFDA0C4(v246, v243 + v239, type metadata accessor for VFSItem);
  *(v247 + v240) = v319;
  v248 = v326;
  *(v247 + v241) = a9;
  v249 = v315;
  v250 = v247 + v322;
  *v250 = v315;
  v250[8] = v316 & 1;
  *(v247 + v242) = v330;
  *(v247 + ((v242 + 15) & 0xFFFFFFFFFFFFFFF8)) = v236;
  v251 = v248 + v323[7];
  v252 = type metadata accessor for ItemMetadata(0);
  if (*(v251 + *(v252 + 64)) & 1) != 0 || (v274 = *(v251 + *(v252 + 68)), v274 != 2) && (v274)
  {
    v253 = v320;
    sub_1CEFD09A0(v320);

    v254 = v330;
    v255 = v249;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v256 = v327;

    v257 = fpfs_current_or_default_log();
    v258 = v317;
    sub_1CF9E6128();
    sub_1CEFD09A0(v253);
    v259 = sub_1CF9E6108();
    v260 = sub_1CF9E7298();
    sub_1CEFD0A98(v253);
    if (os_log_type_enabled(v259, v260))
    {
      v261 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      v337[0] = v262;
      *v261 = 136315138;
      v263 = sub_1CEFD11AC(v253);
      v265 = v264;
      v266 = sub_1CEFD0DF0(v263, v264, v337);
      v265, v267, v268, v269, v270, v271, v272, v273;
      *(v261 + 4) = v266;
      _os_log_impl(&dword_1CEFC7000, v259, v260, "Item is in ignored for request %s", v261, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v262);
      MEMORY[0x1D386CDC0](v262, -1, -1);
      MEMORY[0x1D386CDC0](v261, -1, -1);

      (*(v324 + 8))(v317, v325);
    }

    else
    {

      (*(v324 + 8))(v258, v325);
    }

    v286 = v329;
    v287 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6967210] code:15 userInfo:0];
    v286(0, v287);

    v285 = v248;
  }

  else
  {
    v329 = a9;
    v275 = v313;
    sub_1CEFDA34C(v248, v313, type metadata accessor for VFSItem);
    v276 = (v238 + 24) & ~v238;
    v277 = v249;
    v278 = (v321 + v276) & 0xFFFFFFFFFFFFFFF8;
    v279 = swift_allocObject();
    *(v279 + 16) = v314;
    sub_1CEFDA0C4(v275, v279 + v276, type metadata accessor for VFSItem);
    v280 = (v279 + v278);
    *v280 = sub_1CF8FF464;
    v280[1] = v247;
    v281 = v320;
    *(v279 + ((v278 + 23) & 0xFFFFFFFFFFFFFFF8)) = v320;
    sub_1CEFD09A0(v281);
    sub_1CEFD09A0(v281);

    v282 = v330;
    v283 = v277;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v284 = v327;

    sub_1CF7AAF88("checkIsInIgnoredHierarchy(_:request:completion:)", 48, 2, 2, nullsub_1, 0, sub_1CF8FF558, v279);

    v285 = v326;
  }

  sub_1CEFD5338(v285, type metadata accessor for VFSItem);
}

void sub_1CF8750A0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v53 = a5;
  v8 = sub_1CF9E5CF8();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(a2 + 16);
  v15 = *(a3 + 8);
  v81 = *a3;
  v82 = v15;
  v16 = *(v12 + 8);

  v17 = v13;
  v18 = v56;
  sub_1CF68DDB0(&v81, v17, v11, v16, v83);
  if (v18)
  {

    return;
  }

  v19 = v55;
  v51 = v14;
  v52 = v10;
  v56 = v8;

  memcpy(v79, v83, sizeof(v79));
  memcpy(v80, v83, sizeof(v80));
  if (sub_1CF08B99C(v80) != 1)
  {
    v20 = v80[31];
    if (!v80[31])
    {
LABEL_14:
      sub_1CEFCCC44(v79, &unk_1EC4BFC20, &unk_1CFA0A290);
      return;
    }

    v21 = a1;
    v22 = a1[3];
    v23 = a1[4];
    v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
    v62 = v20;
    v25 = *v19;
    v49 = *(*v19 + 264);
    v50 = v25 + 264;
    v26 = *(v23 + 8);
    v27 = v20;
    (v49)(&v63, &v62, v24, v22, v26);
    v57[12] = v75;
    v57[13] = v76;
    v57[14] = v77;
    v57[8] = v71;
    v57[9] = v72;
    v57[10] = v73;
    v57[11] = v74;
    v57[4] = v67;
    v57[5] = v68;
    v57[6] = v69;
    v57[7] = v70;
    v57[0] = v63;
    v57[1] = v64;
    v57[2] = v65;
    v57[3] = v66;
    v59[12] = v75;
    v59[13] = v76;
    v60 = v77;
    v59[8] = v71;
    v59[9] = v72;
    v59[10] = v73;
    v59[11] = v74;
    v59[4] = v67;
    v59[5] = v68;
    v59[6] = v69;
    v59[7] = v70;
    v59[0] = v63;
    v59[1] = v64;
    v58 = v78;
    v61 = v78;
    v59[2] = v65;
    v59[3] = v66;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v59) == 1 || (v28 = v60, , sub_1CEFCCC44(v57, &qword_1EC4BECF0, &unk_1CF9FEEB0), !v28))
    {
      sub_1CEFCCC44(v79, &unk_1EC4BFC20, &unk_1CFA0A290);

      return;
    }

    v36 = *v28->tree;
    v28, v29, v30, v31, v32, v33, v34, v35;
    if (!v36)
    {

      goto LABEL_14;
    }

    v37 = v21[3];
    v50 = v21[4];
    v55 = v37;
    v49 = __swift_project_boxed_opaque_existential_1(v21, v37);
    sub_1CF033A74();
    v38 = v27;
    v39 = sub_1CF9042A4(v53);
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE0, &unk_1CFA18220);
    v42 = swift_allocObject();
    v43 = *(*v42 + 632);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 1;
    *(v42 + 56) = 0u;
    *(v42 + 72) = 0u;
    *(v42 + 88) = 0;
    *(v42 + 96) = xmmword_1CF9FEC30;
    *(v42 + 112) = 0;
    *(v42 + 120) = v39;
    *(v42 + 128) = v41;
    *(v42 + 136) = 0x8000000;
    *(v42 + 144) = v38;
    v45 = v52;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v47 = v46;
    (*(v54 + 8))(v45, v56);
    v48 = v47 * 1000000000.0;
    if (COERCE__INT64(fabs(v47 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v48 > -9.22337204e18)
    {
      if (v48 < 9.22337204e18)
      {
        sub_1CF5215C0(v42, v48, v49, v55, v50);

        goto LABEL_14;
      }

LABEL_18:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1CF87563C(uint64_t a1, char a2, void (*a3)(void, uint64_t, __n128), uint64_t a4, unint64_t a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, char *a10, unsigned __int8 a11, void *a12, uint64_t a13)
{
  v333 = a8;
  v349 = a6;
  v350 = a7;
  v352 = a5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v346 = &v316[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v347 = *(v19 - 8);
  v20 = *(v347 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v348 = &v316[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v316[-v24];
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v330);
  v331 = &v316[-v26];
  v27 = type metadata accessor for VFSItem(0);
  v343 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v344 = v28;
  v345 = &v316[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v340 = sub_1CF9E7378();
  v338 = *(v340 - 1);
  MEMORY[0x1EEE9AC00](v340);
  v337 = &v316[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE40, &qword_1CFA00858);
  v335 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v334 = &v316[-v30];
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5098, &unk_1CFA18230);
  v341 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342);
  v339 = &v316[-v31];
  v32 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](&v316[-v35]);
  v37 = &v316[-v36];
  v43 = MEMORY[0x1EEE9AC00](v38);
  v45 = &v316[-v44];
  if (a2)
  {
    a3(0, a1, v43);
    return;
  }

  v328 = a4;
  v329 = a3;
  v351 = v40;
  if ((a1 & 1) == 0)
  {
    v326 = v39;
    v324 = v42;
    v323 = &v316[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v325 = v41;
    v319 = a11;
    v321 = a10;
    v320 = a9;
    v64 = v349;
    v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v67 = v66;
    v68 = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v65, v66);
    v67, v69, v70, v71, v72, v73, v74, v75;
    v327 = v25;
    v332 = v32;
    v322 = v20;
    if (v68)
    {
      v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v78 = v77;
      v79 = sub_1CF025150(0x80007uLL, v76, v77);
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v78, v80, v82, v84, v86, v87, v88, v89;
      v90 = MEMORY[0x1D3868C10](v79, v81, v83, v85);
      v92 = v91;
      v85, v91, v93, v94, v95, v96, v97, v98;
      VFSItemID.init(parsing:)(v90, v92, &v356, v99, v100, v101, v102, v103, v104);
      if (v357 != 255)
      {
        v64 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v356 = 0;
      v357 = -1;
    }

    v107 = v64;
LABEL_13:
    v108 = *v350;
    v109 = *(v350 + 8);
    v110 = v64;
    v317 = [a12 isPresenterEnumeration];
    v318 = type metadata accessor for FPFSEnumerator(0);
    v111 = objc_allocWithZone(v318);
    swift_unknownObjectWeakInit();
    v112 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID;
    *&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID] = 0;
    *&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_extensionEnumerator] = 0;
    v113 = &v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive];
    *v113 = 0;
    v113[1] = 0;
    v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated] = 0;
    v114 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries;
    v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries] = 0;
    *&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable] = 0;
    v115 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_changedItemsByID;
    *&v111[v115] = sub_1CF4E3884(MEMORY[0x1E69E7CC0]);
    *&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_deletedItemsIDs] = MEMORY[0x1E69E7CD0];
    v116 = &v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
    *v116 = v108;
    v116[8] = v109;
    v117 = *&v111[v112];
    *&v111[v112] = v64;
    v118 = v64;
    v119 = v110;

    *&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_lifetimeExtender] = v333;
    *&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_observer] = v320;
    v120 = v321;
    swift_unknownObjectWeakAssign();
    v111[v114] = v319 & 1;
    v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator] = v317;
    v121 = *&v120[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v122 = v121;
    sub_1CF9E6128();
    (*(v351 + 32))(&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v37, v332);
    *&v111[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor] = 0;
    swift_beginAccess();
    v353[0] = 0;
    sub_1CF9E6268();
    swift_endAccess();
    v355.receiver = v111;
    v355.super_class = v318;
    v123 = objc_msgSendSuper2(&v355, sel_init);
    v124 = v123;
    if (v118)
    {
      v125 = v119;
      v126 = v124;
      sub_1CF7AD294(v125);
    }

    else
    {
      v127 = v123;
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
    v128 = v334;
    sub_1CF9E6278();
    swift_endAccess();
    v129 = v337;
    sub_1CF9E7358();
    v356 = *&v120[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
    sub_1CEFCCCEC(&qword_1EDEAB6E8, &qword_1EC4BEE40, &qword_1CFA00858, MEMORY[0x1E695C068]);
    sub_1CF2B1654(&qword_1EDEAB610, &qword_1EDEAED70, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v130 = v339;
    v131 = v336;
    sub_1CF9E62E8();
    (*(v338 + 1))(v129, v340);
    (*(v335 + 8))(v128, v131);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1CEFCCCEC(&unk_1EDEA3968, &qword_1EC4C5098, &unk_1CFA18230, MEMORY[0x1E695BE68]);
    v132 = v124;
    v133 = v342;
    v134 = sub_1CF9E62F8();

    (v341)[1](v130, v133);
    *&v132[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable] = v134;

    v135 = objc_sync_enter(v120);
    if (v135)
    {
      MEMORY[0x1EEE9AC00](v135);
      *&v316[-16] = v120;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v316[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v341 = v119;
    v353[1] = &off_1F4C16BF0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    sub_1CF1C9EE0(v353, v132);
    swift_endAccess();
    v136 = objc_sync_exit(v120);
    if (v136)
    {
      MEMORY[0x1EEE9AC00](v136);
      *&v316[-16] = v120;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v316[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v137 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v138 = v132;
    v139 = sub_1CF9E6108();
    v140 = sub_1CF9E72C8();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v141 = 138412290;
      *(v141 + 4) = v138;
      *v142 = v124;
      v143 = v138;
      _os_log_impl(&dword_1CEFC7000, v139, v140, "📖  new enumerator %@", v141, 0xCu);
      sub_1CEFCCC44(v142, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v142, -1, -1);
      MEMORY[0x1D386CDC0](v141, -1, -1);
    }

    v144 = v351 + 8;
    v145 = *(v351 + 8);
    v146 = v332;
    v145(v326, v332);
    v147 = v138;
    (v329)(v124, 0);

    v342 = *(a13 + 16);
    v148 = sub_1CEFD4E9C(v349);
    v338 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    v149 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v340 = v147;

    v150 = v345;
    sub_1CEFDA34C(v350, v345, type metadata accessor for VFSItem);
    v151 = (*(v343 + 80) + 24) & ~*(v343 + 80);
    v152 = (v344 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
    v153 = swift_allocObject();
    *(v153 + 16) = a13;
    sub_1CEFDA0C4(v150, v153 + v151, type metadata accessor for VFSItem);
    v350 = v153;
    *(v153 + v152) = v149;

    v154 = fpfs_current_or_default_log();
    v155 = v324;
    sub_1CF9E6128();
    v156 = v352;
    sub_1CEFD09A0(v352);
    sub_1CEFD09A0(v156);

    v157 = sub_1CF9E6108();
    v158 = sub_1CF9E7298();
    v159 = os_log_type_enabled(v157, v158);
    v345 = v145;
    v351 = v144;
    if (v159)
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v353[0] = v161;
      *v160 = 136315394;
      v162 = swift_beginAccess();
      v163 = *(v148 + 32);
      v164 = *(v148 + 40);
      if (*(v148 + 41))
      {
        v165 = NSFileProviderItemIdentifier.description.getter(v163);
        v167 = v166;
        sub_1CEFD0994(v163, v164, 1);
      }

      else
      {
        v356 = *(v148 + 32);
        v357 = v164;
        v165 = VFSItemID.description.getter(v162);
        v167 = v168;
      }

      v169 = sub_1CEFD0DF0(v165, v167, v353);
      v167, v170, v171, v172, v173, v174, v175, v176;
      *(v160 + 4) = v169;
      *(v160 + 12) = 2080;
      v177 = v352;
      v178 = sub_1CEFD11AC(v352);
      v180 = v179;
      sub_1CEFD0A98(v177);
      sub_1CEFD0A98(v177);
      v181 = sub_1CEFD0DF0(v178, v180, v353);
      v182 = v180;
      v156 = v177;
      v182, v183, v184, v185, v186, v187, v188, v189;
      *(v160 + 14) = v181;
      _os_log_impl(&dword_1CEFC7000, v157, v158, "Request to materialize content of itemID %s reason %s", v160, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v161, -1, -1);
      MEMORY[0x1D386CDC0](v160, -1, -1);

      v345(v324, v332);
    }

    else
    {
      sub_1CEFD0A98(v156);
      sub_1CEFD0A98(v156);

      v145(v155, v146);
    }

    LODWORD(v344) = (v156 >> 58) & 0x3C | (v156 >> 1) & 3;
    v190 = v346;
    if (v344 == 2)
    {
      v191 = swift_projectBox();
      v192 = v331;
      sub_1CEFCCBDC(v191, v331, &unk_1EC4C4F40, qword_1CFA0F4C0);
      v192[1], v193, v194, v195, v196, v197, v198, v199;
      v200 = v330;
      v201 = *(v330 + 48);

      v202 = *(v192 + *(v200 + 80));
      v203 = sub_1CF9E5A58();
      (*(*(v203 - 8) + 8))(v192 + v201, v203);
    }

    else
    {
      v202 = 0;
    }

    sub_1CEFCCBDC(v342 + qword_1EDEBBC18, v190, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v204 = type metadata accessor for TelemetrySignposter(0);
    v205 = (*(*(v204 - 8) + 48))(v190, 1, v204);
    v339 = v148;
    if (v205 == 1)
    {
      sub_1CEFCCC44(v190, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v206 = 1;
      v207 = v327;
    }

    else
    {
      v207 = v327;
      sub_1CF519DE8(v202, v327);
      sub_1CEFD5338(v190, type metadata accessor for TelemetrySignposter);
      v206 = 0;
    }

    v208 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v208 - 8) + 56))(v207, v206, 1, v208);
    v209 = v348;
    sub_1CEFCCBDC(v207, v348, qword_1EC4C1588, &unk_1CFA0A260);
    v210 = *(v347 + 80);
    v211 = (v210 + 16) & ~v210;
    v212 = v322;
    v213 = (v322 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
    v214 = swift_allocObject();
    v349 = v214;
    sub_1CEFE55D0(v209, &v214[v211], qword_1EC4C1588, &unk_1CFA0A260);
    v215 = &v214[v213];
    v216 = v350;
    *v215 = sub_1CF8FFA94;
    v215[1] = v216;
    v217 = v323;
    sub_1CEFCCBDC(v207, v323, qword_1EC4C1588, &unk_1CFA0A260);
    v218 = (v210 + 24) & ~v210;
    v219 = (v218 + v212 + 31) & 0xFFFFFFFFFFFFFFF8;
    v347 = (v218 + v212 + 7) & 0xFFFFFFFFFFFFFFF8;
    v348 = ((v219 + 15) & 0xFFFFFFFFFFFFFFF8);
    v220 = (v219 + 31) & 0xFFFFFFFFFFFFFFF8;
    v221 = (v220 + 15) & 0xFFFFFFFFFFFFFFF8;
    v222 = swift_allocObject();
    v223 = v352;
    *(v222 + 16) = v352;
    sub_1CEFE55D0(v217, v222 + v218, qword_1EC4C1588, &unk_1CFA0A260);
    v224 = v222 + v347;
    *v224 = sub_1CF8FFA94;
    *(v224 + 8) = v216;
    *(v224 + 16) = 1;
    *(v222 + v219) = v342;
    v225 = &v348[v222];
    v226 = v339;
    *v225 = v339;
    v225[8] = 1;
    *(v222 + v220) = 0;
    v227 = v226;
    v228 = v338;
    *(v222 + v221) = v338;
    v229 = v222 + ((v221 + 15) & 0xFFFFFFFFFFFFFFF8);
    v230 = v349;
    *v229 = sub_1CF903314;
    *(v229 + 8) = v230;
    *(v229 + 16) = 1;
    v231 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v223);

    v232 = v228;

    v233 = [v231 init];
    v234 = swift_allocObject();
    v234[2] = sub_1CF903318;
    v234[3] = v222;
    v348 = v234;
    v234[4] = v223;
    sub_1CEFD09A0(v223);

    sub_1CEFD09A0(v223);

    v235 = fpfs_current_or_default_log();
    v236 = v325;
    sub_1CF9E6128();
    sub_1CEFD09A0(v223);
    sub_1CEFD09A0(v223);

    v237 = sub_1CF9E6108();
    v238 = sub_1CF9E7298();
    if (os_log_type_enabled(v237, v238))
    {
      v346 = v233;
      v347 = v232;
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v354 = v240;
      *v239 = 136315906;
      v241 = swift_beginAccess();
      v242 = *(v227 + 4);
      v243 = v227[40];
      if (v227[41])
      {
        v244 = NSFileProviderItemIdentifier.description.getter(v242);
        v246 = v245;
        sub_1CEFD0994(v242, v243, 1);
      }

      else
      {
        v356 = *(v227 + 4);
        v357 = v243;
        v244 = VFSItemID.description.getter(v241);
        v246 = v247;
      }

      v248 = sub_1CEFD0DF0(v244, v246, &v354);
      v246, v249, v250, v251, v252, v253, v254, v255;
      *(v239 + 4) = v248;
      *(v239 + 12) = 2080;
      *(v239 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v354);
      *(v239 + 22) = 2080;
      v223 = v352;
      v256 = sub_1CEFD11AC(v352);
      v258 = v257;
      sub_1CEFD0A98(v223);
      sub_1CEFD0A98(v223);
      v259 = sub_1CEFD0DF0(v256, v258, &v354);
      v258, v260, v261, v262, v263, v264, v265, v266;
      *(v239 + 24) = v259;
      *(v239 + 32) = 2048;
      *(v239 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v237, v238, "Lookup itemID %s with behavior %s request %s iteration %ld", v239, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v240, -1, -1);
      MEMORY[0x1D386CDC0](v239, -1, -1);

      v345(v325, v332);
      v233 = v346;
      v232 = v347;
    }

    else
    {
      sub_1CEFD0A98(v223);
      sub_1CEFD0A98(v223);

      v345(v236, v332);
    }

    swift_beginAccess();
    v267 = *(v227 + 4);
    v268 = v227[40];
    if (v227[41])
    {
      v269 = v232;
      v270 = qword_1EDEA34B0;
      v271 = v267;
      if (v270 != -1)
      {
        swift_once();
      }

      v272 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v274 = v273;
      v276 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v282 = v272;
      v283 = v275;
      if (v282 == v276 && v274 == v275)
      {
        v274, v275, v276, v277, v278, v279, v280, v281;
        v283, v284, v285, v286, v287, v288, v289, v290;
        sub_1CEFD0994(v267, v268, 1);
        v232 = v269;
LABEL_46:
        sub_1CF90CAC8(v223, sub_1CF796A0C, v348);
LABEL_52:

        sub_1CEFD0A98(v223);

        sub_1CEFCCC44(v327, qword_1EC4C1588, &unk_1CFA0A260);
        return;
      }

      v291 = sub_1CF9E8048();
      v274, v292, v293, v294, v295, v296, v297, v298;
      v283, v299, v300, v301, v302, v303, v304, v305;
      sub_1CEFD0994(v267, v268, 1);
      v232 = v269;
      if (v291)
      {
        goto LABEL_46;
      }
    }

    else if (!v267 && v268 == 2)
    {
      goto LABEL_46;
    }

    v347 = v232;
    if (v344 == 30)
    {
      v306 = *((v223 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v307 = v306;
    }

    else
    {
      v308 = swift_allocObject();
      *(v308 + 16) = v223;
      v307 = v308 | 0x7000000000000004;
      v306 = v223;
    }

    sub_1CEFD09A0(v306);
    v309 = swift_allocObject();
    v310 = v348;
    *(v309 + 16) = sub_1CF796A0C;
    *(v309 + 24) = v310;
    v311 = v342;
    *(v309 + 32) = v342;
    *(v309 + 40) = 2;
    *(v309 + 48) = v223;
    *(v309 + 56) = v227;
    *(v309 + 64) = 0;
    *(v309 + 72) = v233;
    *(v309 + 80) = 0;
    v312 = swift_allocObject();
    *(v312 + 16) = v227;
    *(v312 + 24) = v311;
    *(v312 + 32) = 0;
    *(v312 + 40) = sub_1CF796A90;
    *(v312 + 48) = v309;
    *(v312 + 56) = v307;
    v313 = v233;
    v314 = swift_allocObject();
    *(v314 + 16) = sub_1CF796A90;
    *(v314 + 24) = v309;

    sub_1CEFD09A0(v352);

    v315 = v313;
    sub_1CEFD09A0(v307);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v314, sub_1CF796A9C, v312);

    v233 = v313;
    v223 = v352;

    sub_1CEFD0A98(v307);
    v232 = v347;
    goto LABEL_52;
  }

  v46 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v47 = v352;
  sub_1CEFD09A0(v352);
  v48 = sub_1CF9E6108();
  v49 = sub_1CF9E7298();
  sub_1CEFD0A98(v47);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v32;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v356 = v52;
    *v51 = 136315138;
    v53 = sub_1CEFD11AC(v47);
    v55 = v54;
    v56 = sub_1CEFD0DF0(v53, v54, &v356);
    v55, v57, v58, v59, v60, v61, v62, v63;
    *(v51 + 4) = v56;
    _os_log_impl(&dword_1CEFC7000, v48, v49, "Item is in ignored for request %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v51, -1, -1);

    (*(v351 + 8))(v45, v50);
  }

  else
  {

    (*(v351 + 8))(v45, v32);
  }

  v105 = v329;
  v106 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6967210] code:15 userInfo:0];
  v105(0, v106);
}