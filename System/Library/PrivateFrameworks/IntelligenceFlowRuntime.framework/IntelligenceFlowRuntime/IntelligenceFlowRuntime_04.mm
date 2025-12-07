uint64_t sub_22BBB7068(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_allocObject();
}

unint64_t sub_22BBB7088()
{
  result = qword_28142A870;
  if (!qword_28142A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142A870);
  }

  return result;
}

uint64_t sub_22BBB7250()
{
  v192 = v0[62];
  v208 = v0[61];
  v224 = v0[60];
  v240 = v0[56];
  sub_22BB6FAF4();
  v320 = v1;
  v336 = v0[43];
  v2 = v0[41];
  v160 = v0[40];
  v176 = v0[44];
  v4 = v0[38];
  v3 = v0[39];
  v144 = v0[37];
  v352 = v0[36];
  v128 = v0[33];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v368 = v0[32];
  v384 = v0[25];
  v8 = v0[22];
  sub_22BDBAEA4();
  sub_22BBACC08(v8, v0 + 20, v0 + 19, v3, v5);
  (*(v6 + 8))(v5, v7);
  v9 = v128;
  v10 = sub_22BB3182C();
  v11(v10);
  (*(v4 + 8))(v3, v144);
  v12 = v176;
  (*(v2 + 8))(v176, v160);

  v208, v13, v14, v15, v16, v17, v18, v19, v128, v144, v160, v176, v192, v208, v224, v240, v256, v272, v288, v304, v320, v336, v352, v368, v384;
  v225, v20, v21, v22, v23, v24, v25, v26, v129, v145, v161, v177, v193, v209, v225, v241, v257, v273, v289, v305, v321, v337, v353, v369, v385;
  v242, v27, v28, v29, v30, v31, v32, v33, v130, v146, v162, v178, v194, v210, v226, v242, v258, v274, v290, v306, v322, v338, v354, v370, v386;
  v259, v34, v35, v36, v37, v38, v39, v40, v131, v147, v163, v179, v195, v211, v227, v243, v259, v275, v291, v307, v323, v339, v355, v371, v387;
  v276, v41, v42, v43, v44, v45, v46, v47, v132, v148, v164, v180, v196, v212, v228, v244, v260, v276, v292, v308, v324, v340, v356, v372, v388;
  v293, v48, v49, v50, v51, v52, v53, v54, v133, v149, v165, v181, v197, v213, v229, v245, v261, v277, v293, v309, v325, v341, v357, v373, v389;
  v310, v55, v56, v57, v58, v59, v60, v61, v134, v150, v166, v182, v198, v214, v230, v246, v262, v278, v294, v310, v326, v342, v358, v374, v390;
  v327, v62, v63, v64, v65, v66, v67, v68, v135, v151, v167, v183, v199, v215, v231, v247, v263, v279, v295, v311, v327, v343, v359, v375, v391;
  v12, v69, v70, v71, v72, v73, v74, v75, v136, v152, v168, v184, v200, v216, v232, v248, v264, v280, v296, v312, v328, v344, v360, v376, v392;
  v345, v76, v77, v78, v79, v80, v81, v82, v137, v153, v169, v185, v201, v217, v233, v249, v265, v281, v297, v313, v329, v345, v361, v377, v393;
  v3, v83, v84, v85, v86, v87, v88, v89, v138, v154, v170, v186, v202, v218, v234, v250, v266, v282, v298, v314, v330, v346, v362, v378, v394;
  v363, v90, v91, v92, v93, v94, v95, v96, v139, v155, v171, v187, v203, v219, v235, v251, v267, v283, v299, v315, v331, v347, v363, v379, v395;
  v9, v97, v98, v99, v100, v101, v102, v103, v140, v156, v172, v188, v204, v220, v236, v252, v268, v284, v300, v316, v332, v348, v364, v380, v396;
  v381, v104, v105, v106, v107, v108, v109, v110, v141, v157, v173, v189, v205, v221, v237, v253, v269, v285, v301, v317, v333, v349, v365, v381, v397;
  v5, v111, v112, v113, v114, v115, v116, v117, v142, v158, v174, v190, v206, v222, v238, v254, v270, v286, v302, v318, v334, v350, v366, v382, v398;
  v399, v118, v119, v120, v121, v122, v123, v124, v143, v159, v175, v191, v207, v223, v239, v255, v271, v287, v303, v319, v335, v351, v367, v383, v399;
  sub_22BB2F09C();
  sub_22BD6421C();

  return v125();
}

Swift::Void __swiftcall SnippetStreamingRouter.Scoped.deallocateAllContexts()()
{
  v1 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v1);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  sub_22BBB74FC(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, &v9 - v3);
  v5 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v8 = sub_22BB35DC4(v4, v6, v7, v5);
  sub_22BBAD104(v8);
  sub_22BBB7914(v4);
}

uint64_t sub_22BBB74FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB756C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = *(type metadata accessor for FeedbackLearning.TaskEvaluation(0) - 8);
  v3[7] = swift_task_alloc();
  v3[8] = *(_s18TaskDefinitionThinO18TaskEvaluationThinVMa(0) - 8);
  v3[9] = swift_task_alloc();
  v4 = sub_22BDB9774();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22BDB7734();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_22BDB7754();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_22BDB43E4();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v8 = sub_22BDB9B54();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBB8720, 0, 0);
}

uint64_t sub_22BBB7914(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BBB798C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v11, 0x16u);
}

uint64_t sub_22BBB79B0()
{

  return swift_task_alloc();
}

uint64_t sub_22BBB79E4()
{

  return sub_22BDBB214();
}

uint64_t sub_22BBB79FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BBB7A1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BBB7AA4()
{
  sub_22BB2F0D4();
  sub_22BB69FEC((v0 + 16), *(v0 + 56));
  sub_22BD790CC(MEMORY[0x277D84F90], sub_22BB35598, 0);
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F09C();

  return v1();
}

void sub_22BBB7E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v22;
  a20 = v23;
  v24 = sub_22BDB5F24();
  v25 = sub_22BB2F0C8(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  sub_22BB3ABC8();
  v26 = sub_22BDB77D4();
  sub_22BB30444();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB51A9C();
  if (!v20)
  {
    sub_22BBB8068();
    sub_22BDB63E4();
    sub_22BB36720();
    sub_22BB33618();
    v30 = sub_22BDB77C4();
    v31 = sub_22BDBB134();
    if (os_log_type_enabled(v30, v31))
    {
      sub_22BB354D0();
      v36 = swift_slowAlloc();
      sub_22BB2F440();
      v37 = swift_slowAlloc();
      a10 = v37;
      *v36 = 136446210;
      v35 = MEMORY[0x23189FEB0]();
      v33 = v32;
      sub_22BB309FC();
      sub_22BB34698();
      v34 = sub_22BB32EE0(v35, v33, &a10);

      *(v36 + 4) = v34;
      _os_log_impl(&dword_22BB2C000, v30, v31, "Session %{public}s deregistered.", v36, 0xCu);
      sub_22BB32FA4(v37);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    else
    {

      sub_22BB309FC();
      sub_22BB34698();
    }

    (*(v28 + 8))(v21, v26);
  }

  sub_22BB376A8();
}

uint64_t sub_22BBB8068()
{
  v0 = sub_22BDB5F24();
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v2);
  v42 = sub_22BDB77D4();
  v3 = *(v42 - 8);
  v4 = MEMORY[0x28223BE20](v42);
  v6 = &v43[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43[-1] - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v43[-1] - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43[-1] - v13;
  swift_beginAccess();
  sub_22BBAE0E0();
  swift_endAccess();
  v15 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  if (sub_22BB3AA28(v14, 1, v15) == 1)
  {
    sub_22BB58728(v14, &qword_27D8E67E8, &qword_22BDCF4B0);
    sub_22BDB63E4();
    sub_22BB33618();
    v16 = sub_22BDB77C4();
    v17 = sub_22BDBB124();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43[0] = v19;
      *v18 = 136446210;
      v20 = MEMORY[0x23189FEB0]();
      v22 = v21;
      sub_22BB34698();
      v23 = sub_22BB32EE0(v20, v22, v43);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22BB2C000, v16, v17, "SessionCoordinator %{public}s could not be popped.", v18, 0xCu);
      sub_22BB32FA4(v19);
      MEMORY[0x2318A6080](v19, -1, -1);
      MEMORY[0x2318A6080](v18, -1, -1);
    }

    else
    {

      sub_22BB34698();
    }

    return (*(v3 + 8))(v6, v42);
  }

  else
  {

    sub_22BB34698();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22BDB63E4();
      sub_22BB33618();
      v25 = sub_22BDB77C4();
      v26 = sub_22BDBB134();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43[0] = v28;
        *v27 = 136446210;
        v29 = MEMORY[0x23189FEB0]();
        v31 = v30;
        sub_22BB34698();
        v32 = sub_22BB32EE0(v29, v31, v43);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_22BB2C000, v25, v26, "SessionCoordinator %{public}s removed. It was destroyed.", v27, 0xCu);
        sub_22BB32FA4(v28);
        MEMORY[0x2318A6080](v28, -1, -1);
        MEMORY[0x2318A6080](v27, -1, -1);
      }

      else
      {

        sub_22BB34698();
      }

      return (*(v3 + 8))(v9, v42);
    }

    else
    {
      sub_22BDB63E4();
      sub_22BB33618();
      v34 = sub_22BDB77C4();
      v35 = sub_22BDBB114();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v43[0] = v37;
        *v36 = 136446210;
        v38 = MEMORY[0x23189FEB0]();
        v40 = v39;
        sub_22BB34698();
        v41 = sub_22BB32EE0(v38, v40, v43);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_22BB2C000, v34, v35, "SessionCoordinator %{public}s removed. The SessionCoordinator was held with non-exclusive ownership. Its destruction may be deferred.", v36, 0xCu);
        sub_22BB32FA4(v37);
        MEMORY[0x2318A6080](v37, -1, -1);
        MEMORY[0x2318A6080](v36, -1, -1);
      }

      else
      {

        sub_22BB34698();
      }

      return (*(v3 + 8))(v11, v42);
    }
  }
}

uint64_t sub_22BBB86C8()
{
  sub_22BBAE224();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB86F4()
{
  sub_22BBAE7D0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB8720(uint64_t a1)
{
  v379 = v1;
  if (*(*(v1[3] + 104) + 16))
  {
    sub_22BDB6404();
    v2 = sub_22BB38B84();
    v3(v2);
    v4 = sub_22BDB77C4();
    v5 = sub_22BDBB0F4();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[30];
    v8 = v1[29];
    v9 = v1[25];
    if (v6)
    {
      v294 = v1[25];
      v10 = sub_22BB311A4();
      loga = sub_22BB314C8();
      v372 = loga;
      sub_22BB37DA4(loga, v11, v12, v13, v14, v15, v16, v17, 4.8149e-34, v221);
      sub_22BB30890();
      sub_22BBB8FCC(v18, v19, MEMORY[0x277CC9628]);
      sub_22BDBB684();
      v20 = sub_22BB31D70();
      v21(v20);
      v22 = sub_22BB36300();
      v23(v22, v294);
      v24 = sub_22BB32EE0(v8, v5, &v372);

      *(v10 + 4) = v24;
      sub_22BB37308(&dword_22BB2C000, v25, v26, "Cancelling evaluation of eventId=%s, a termination signal was received", v27, v28, v29, v30, v222, v237, v251, v265, v279, v294, buf);
      sub_22BB32FA4(loga);
      sub_22BB30AF0();
      sub_22BB30AF0();

      (*(v7 + 8))();
    }

    else
    {

      v70 = sub_22BB36300();
      v71(v70, v9);
      v72 = sub_22BB2F324();
      v74(v72, v73);
    }
  }

  else
  {
    sub_22BDB6404();
    v38 = sub_22BB38B84();
    v39(v38);
    v40 = sub_22BDB77C4();
    v41 = sub_22BDBB0F4();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v1[29];
    v44 = v1[30];
    v45 = v1[25];
    if (v42)
    {
      v295 = v1[25];
      v46 = sub_22BB311A4();
      logb = sub_22BB314C8();
      v372 = logb;
      sub_22BB37DA4(logb, v47, v48, v49, v50, v51, v52, v53, 4.8149e-34, v221);
      sub_22BB30890();
      sub_22BBB8FCC(v54, v55, MEMORY[0x277CC9628]);
      sub_22BDBB684();
      v56 = sub_22BB31D70();
      v57(v56);
      v58 = sub_22BB36300();
      v59(v58, v295);
      v60 = sub_22BB32EE0(v43, v41, &v372);

      *(v46 + 4) = v60;
      sub_22BB37308(&dword_22BB2C000, v61, v62, "Starting evaluation of eventId=%s", v63, v64, v65, v66, v223, v237, v251, v265, v279, v295, buf);
      sub_22BB32FA4(logb);
      sub_22BB30AF0();
      sub_22BB30AF0();

      v67 = *(v44 + 8);
      v68 = v341;
      v69 = v357;
    }

    else
    {

      v75 = sub_22BB36300();
      v76(v75, v45);
      v68 = sub_22BB2F324();
    }

    v358 = v67;
    v67(v68, v69);
    v77 = v1[19];
    v78 = v1[17];
    v79 = v1[18];
    sub_22BDB6144();
    sub_22BDB6144();
    sub_22BDB7744();
    sub_22BDB7704();
    v342 = *(v79 + 8);
    v342(v77, v78);
    v80 = sub_22BDB7744();
    v81 = sub_22BDBB1D4();
    if (sub_22BDBB244())
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v80, v81, v83, "FeedbackLearning", "", v82, 2u);
      sub_22BB30AF0();
    }

    v251 = v1[20];
    v265 = v1[23];
    v84 = v1[16];
    v237 = v1[17];
    v85 = v1[14];
    v86 = v1[12];
    v87 = v1[13];
    v88 = v1[11];
    bufb = v1[10];
    v279 = v1[5];
    v293 = v1[4];
    v89 = v1[3];

    v90 = sub_22BB2F324();
    v91(v90);
    sub_22BDB77A4();
    swift_allocObject();
    v92 = sub_22BDB7794();
    (*(v85 + 8))(v84, v87);
    v342(v251, v237);
    sub_22BDB43D4();
    sub_22BB69FEC((v89 + 24), *(v89 + 48));
    sub_22BDB96A4();
    sub_22BBAE984(v86, v293, v265, &v372);
    (*(v88 + 8))(v86, bufb);
    v93 = v372;
    v94 = v373;
    sub_22BDB6404();

    v95 = sub_22BDB77C4();
    v96 = sub_22BDBB0F4();

    if (os_log_type_enabled(v95, v96))
    {
      log = v95;
      v343 = v92;
      v97 = swift_slowAlloc();
      v293 = sub_22BB314C8();
      v374 = v293;
      bufa = v97;
      *v97 = 136380675;
      v98 = *(v94 + 16);
      v99 = MEMORY[0x277D84F90];
      if (v98)
      {
        LODWORD(v265) = v96;
        LODWORD(v279) = v93;
        v100 = v1[8];
        v101 = v1[6];
        v372 = MEMORY[0x277D84F90];
        sub_22BD28530(0, v98, 0);
        v99 = v372;
        v102 = v94 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v103 = *(v101 + 72);
        do
        {
          v104 = v1[7];
          sub_22BD1CA68(v102, v104);
          sub_22BCF7988();
          sub_22BD1CB30(v104, type metadata accessor for FeedbackLearning.TaskEvaluation);
          v372 = v99;
          v106 = *(v99 + 16);
          v105 = *(v99 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_22BD28530(v105 > 1, v106 + 1, 1);
            v99 = v372;
          }

          v107 = v1[9];
          *(v99 + 16) = v106 + 1;
          sub_22BD1CACC(v107, v99 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v106);
          v102 += v103;
          --v98;
        }

        while (v98);
        LOBYTE(v93) = v279;
        LOBYTE(v96) = v265;
      }

      v109 = v1[32];
      v110 = v1[29];
      v1[2] = v99;
      sub_22BBE6DE0(&qword_27D8E5ED8, &unk_22BDCCD10);
      sub_22BBDC038();
      v111 = sub_22BDBAB74();
      v113 = v112;

      v114 = sub_22BB32EE0(v111, v113, &v374);

      *(bufa + 4) = v114;
      _os_log_impl(&dword_22BB2C000, log, v96, "Evaluation Results: %{private}s", bufa, 0xCu);
      sub_22BB32FA4(v293);
      sub_22BB30AF0();
      sub_22BB30AF0();

      v358(v109, v110);
      v92 = v343;
    }

    else
    {

      v108 = sub_22BB2F324();
      (v358)(v108);
    }

    v115 = v1[23];
    v116 = v1[4];
    LOBYTE(v372) = v93;
    v373 = v94;
    sub_22BBDC0EC(&v372, v116, v115);
    v117 = sub_22BB33728();
    v118(v117);

    sub_22BBDCE44(v92, "FeedbackLearning");
  }

  v119 = v1[32];
  v120 = v1[31];
  v122 = v1[27];
  v121 = v1[28];
  v124 = v1[23];
  v123 = v1[24];
  v126 = v1[19];
  v125 = v1[20];
  v127 = v1[16];
  v1[33], v31, v32, v33, v34, v35, v36, v37, v221, v237, v251, v265, v279, v293, v1[15], v1[12], v1[9], v1[7], v372, v373, v374, v375, v376, v377, v378;
  v119, v128, v129, v130, v131, v132, v133, v134, v224, v238, v252, v266, v280, v296, bufc, logc, v344, v359, v372, v373, v374, v375, v376, v377, v378;
  v120, v135, v136, v137, v138, v139, v140, v141, v225, v239, v253, v267, v281, v297, bufd, logd, v345, v360, v372, v373, v374, v375, v376, v377, v378;
  v121, v142, v143, v144, v145, v146, v147, v148, v226, v240, v254, v268, v282, v298, bufe, loge, v346, v361, v372, v373, v374, v375, v376, v377, v378;
  v122, v149, v150, v151, v152, v153, v154, v155, v227, v241, v255, v269, v283, v299, buff, logf, v347, v362, v372, v373, v374, v375, v376, v377, v378;
  v123, v156, v157, v158, v159, v160, v161, v162, v228, v242, v256, v270, v284, v300, bufg, logg, v348, v363, v372, v373, v374, v375, v376, v377, v378;
  v124, v163, v164, v165, v166, v167, v168, v169, v229, v243, v257, v271, v285, v301, bufh, logh, v349, v364, v372, v373, v374, v375, v376, v377, v378;
  v125, v170, v171, v172, v173, v174, v175, v176, v230, v244, v258, v272, v286, v302, bufi, logi, v350, v365, v372, v373, v374, v375, v376, v377, v378;
  v126, v177, v178, v179, v180, v181, v182, v183, v231, v245, v259, v273, v287, v303, bufj, logj, v351, v366, v372, v373, v374, v375, v376, v377, v378;
  v127, v184, v185, v186, v187, v188, v189, v190, v232, v246, v260, v274, v288, v304, bufk, logk, v352, v367, v372, v373, v374, v375, v376, v377, v378;
  bufl, v191, v192, v193, v194, v195, v196, v197, v233, v247, v261, v275, v289, v305, bufl, logl, v353, v368, v372, v373, v374, v375, v376, v377, v378;
  logm, v198, v199, v200, v201, v202, v203, v204, v234, v248, v262, v276, v290, v306, bufm, logm, v354, v369, v372, v373, v374, v375, v376, v377, v378;
  v355, v205, v206, v207, v208, v209, v210, v211, v235, v249, v263, v277, v291, v307, bufn, logn, v355, v370, v372, v373, v374, v375, v376, v377, v378;
  v371, v212, v213, v214, v215, v216, v217, v218, v236, v250, v264, v278, v292, v308, bufo, logo, v356, v371, v372, v373, v374, v375, v376, v377, v378;
  v219 = v1[1];

  return v219();
}

uint64_t sub_22BBB8F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BBB8FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s19TranscriptRetrieverVMa(uint64_t a1)
{
  result = qword_28142BFD8;
  if (!qword_28142BFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBB9080@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB9C14();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22BDB9774();
  v12 = *(v27 - 8);
  (*(v12 + 16))(a3, a1, v27);
  v13 = sub_22BDB9744();
  sub_22BDB9744();
  sub_22BBB04DC();
  v15 = v14;

  v16 = _s19TranscriptRetrieverVMa(0);
  sub_22BBB2510(v13, a2, v15, a3 + v16[5]);

  v17 = sub_22BDB9744();
  v18 = sub_22BDB9744();
  v19 = sub_22BBC23C8(v17, v18, _s23PromptResponseRetrieverCMa, 72, sub_22BBC2588);
  v20 = (a3 + v16[6]);
  v20[3] = _s23PromptResponseRetrieverCMa();
  v20[4] = &off_283F767C8;
  *v20 = v19;
  v21 = sub_22BDB9744();
  (*(v8 + 16))(v11, a2, v6);
  v22 = sub_22BBC975C(v21);

  v23 = *(v8 + 8);
  v23(v11, v6);
  v24 = (a3 + v16[7]);
  v24[3] = &_s28StatementParameterResolutionVN;
  v24[4] = &off_283F76848;
  *v24 = v22;
  v23(a2, v6);
  return (*(v12 + 8))(a1, v27);
}

uint64_t sub_22BBB92F0()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_session;
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v2 + 8))(v0 + v1);
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_runtime));
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_instrumentationSender));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBB9370()
{
  sub_22BBB939C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB939C()
{
  sub_22BB30474();
  (*(v1 + 8))(v0 + v2);
  sub_22BB5413C();
  sub_22BB32FA4((v0 + *(v3 + 112)));
  sub_22BB5413C();
  sub_22BB32FA4((v0 + *(v4 + 120)));
  sub_22BB5413C();

  sub_22BB5413C();
  sub_22BB32FA4((v0 + *(v5 + 136)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBB9470()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolbox;
  sub_22BDB9C14();
  sub_22BB2F330();
  (*(v2 + 8))(v0 + v1);

  sub_22BBB9500(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolExecutionSession);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBB9530()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB9568()
{
  v1 = sub_22BDB77D4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB36220();
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB104();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_22BB37F30();
    *v7 = 0;
    _os_log_impl(&dword_22BB2C000, v5, v6, "ODPEvent Publisher finished with .cancel", v7, 2u);
    sub_22BB30AF0();
  }

  (*(v3 + 8))(v0, v1);
  return sub_22BB37CB8();
}

uint64_t SnippetStreamingRouter.Scoped.__deallocating_deinit()
{

  sub_22BBB9714(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBB9714(uint64_t a1)
{
  v2 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBB9770()
{
  sub_22BB343F4();
  sub_22BB34648();

  sub_22BB325EC(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_configuration, &qword_27D8E6628, &qword_22BDCE5B0);

  return v0;
}

void sub_22BBB97EC()
{
  sub_22BB30F94();
  sub_22BB51360(v3);
  sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB52EA4();
  sub_22BB31D8C();
  v7 = sub_22BBB9968(v5, v6, MEMORY[0x277D1C348]);
  sub_22BB898A4(v7);
  sub_22BB38B98();
  do
  {
    sub_22BB53DA4();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_22BB6BB34();
      v14(v13);
      v15 = sub_22BB3A2A8();
      sub_22BBB99B0(v15, v16, v17);
      v18 = sub_22BB54294();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22BB2F578();
    v2(v9);
    sub_22BB31D8C();
    v11 = sub_22BBB9968(&qword_28142DD10, v10, MEMORY[0x277D1C358]);
    sub_22BB337C8(v11);
    v12 = sub_22BB37080();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22BB3E3B4();
  v1(v20);
  v21 = sub_22BB58AEC();
  v2(v21);
LABEL_7:
  sub_22BB314EC();
}

uint64_t sub_22BBB9968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BBB99B0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22BDB4C34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2C0BC(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22BBB9C60(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
      v13 = sub_22BDBABA4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22BBB9968(&qword_28142DD10, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v15 = sub_22BDBABD4();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22BD2D510();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22BBB9C60(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22BDB4C34();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22BBE6DE0(&qword_27D8E6098, &unk_22BDCD5D0);
  v7 = sub_22BDBB304();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
        result = sub_22BDBABA4();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22BBB9F78(uint64_t a1, uint64_t a2)
{
  v140 = a2;
  v138 = _s13ValueExecutedVMa(0);
  v137 = *(v138 - 8);
  v3 = MEMORY[0x28223BE20](v138);
  v157 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v156 = &v133 - v5;
  v165 = sub_22BDBA594();
  v145 = *(v165 - 8);
  v6 = MEMORY[0x28223BE20](v165);
  v144 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v164 = &v133 - v8;
  v9 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v185 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v133 - v12;
  v191 = sub_22BDB80F4();
  v213 = *(v191 - 8);
  v14 = MEMORY[0x28223BE20](v191);
  v188 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v200 = &v133 - v17;
  MEMORY[0x28223BE20](v16);
  v189 = &v133 - v18;
  v19 = sub_22BDB89F4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v193 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_22BDB9954();
  v205 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_22BDB8D84();
  v210 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v24 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22BDB4C34();
  v211 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v186 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v215 = &v133 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v133 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v139 = &v133 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v212 = &v133 - v36;
  MEMORY[0x28223BE20](v35);
  v154 = &v133 - v37;
  v163 = sub_22BDB5404();
  v209 = *(v163 - 8);
  v38 = MEMORY[0x28223BE20](v163);
  v173 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v153 = &v133 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v152 = &v133 - v43;
  MEMORY[0x28223BE20](v42);
  v172 = &v133 - v44;
  v151 = sub_22BDB90B4();
  v208 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_22BDB87F4();
  v46 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_22BDB9B14();
  v48 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v184 = &v133 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22BBBB918(a1);
  v216 = MEMORY[0x277D84FA0];
  v51 = a1;
  v52 = *(a1 + 16);
  if (!v52)
  {

    v166 = MEMORY[0x277D84F90];
    goto LABEL_72;
  }

  v190 = v13;
  v183 = v50;
  v53 = *(sub_22BDB9B54() - 8);
  v181 = v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v180 = (v48 + 88);
  v136 = (v48 + 8);
  v175 = (v48 + 96);
  v179 = *MEMORY[0x277D1E6F8];
  v169 = *MEMORY[0x277D1E798];
  v149 = *MEMORY[0x277D1E7C0];
  v135 = (v210 + 4);
  v162 = (v209 + 16);
  v161 = (v209 + 88);
  v160 = *MEMORY[0x277D1CBF0];
  v159 = *MEMORY[0x277D1CBE8];
  v214 = (v211 + 8);
  v158 = (v209 + 8);
  v134 = v210 + 1;
  v148 = (v46 + 32);
  v147 = (v208 + 8);
  v146 = (v46 + 8);
  v168 = (v205 + 32);
  v197 = v20 + 16;
  v196 = (v213 + 32);
  v210 = (v213 + 88);
  LODWORD(v209) = *MEMORY[0x277D1DAD0];
  LODWORD(v208) = *MEMORY[0x277D1DA48];
  v207 = *MEMORY[0x277D1DAE8];
  v54 = v52;
  v206 = (v213 + 8);
  v195 = (v20 + 8);
  v213 = v211 + 16;
  v178 = *(v53 + 72);
  v174 = (v211 + 32);
  v167 = (v205 + 8);
  v143 = v145 + 16;
  v142 = v145 + 32;
  v141 = (v145 + 8);
  v166 = MEMORY[0x277D84F90];
  v55 = v191;
  v56 = v189;
  v57 = v173;
  v58 = v184;
  v192 = v19;
  v198 = v24;
  v199 = v20;
  v194 = v32;
  do
  {
    v187 = v54 - 1;
    sub_22BDB9B24();
    v59 = v182;
    v60 = (*v180)(v58, v182);
    if (v60 != v179)
    {
      if (v60 == v169)
      {
        v109 = v184;
        (*v175)(v184, v59);
        (*v148)(v170, v109, v171);
        v110 = v150;
        sub_22BDB87E4();
        v111 = v172;
        sub_22BDB9094();
        (*v147)(v110, v151);
        v112 = v154;
        sub_22BDB8794();
        v113 = v152;
        v114 = v163;
        (*v162)(v152, v111, v163);
        v115 = (*v161)(v113, v114);
        if (v115 != v160 && v115 != v159)
        {
          (*v214)(v112, v25);
          v130 = *v158;
          (*v158)(v172, v114);
          v130(v113, v114);
          v32 = v194;
LABEL_65:
          (*v146)(v170, v171);
          goto LABEL_66;
        }

        v117 = *v158;
        (*v158)(v113, v114);
        sub_22BBBCB1C();
        LODWORD(v205) = v118;
        v119 = *v214;
        (*v214)(v112, v25);
        v117(v172, v114);
        v55 = v191;
        v32 = v194;
        if (v205)
        {
          goto LABEL_65;
        }

        v205 = v119;
        v120 = v170;
        sub_22BDB8794();
        v121 = v212;
        sub_22BBB97EC();
        (v205)(v121, v25);
        (*v146)(v120, v171);
      }

      else
      {
        if (v60 != v149)
        {
          (*v136)(v184, v59);
          goto LABEL_68;
        }

        v122 = v184;
        (*v175)(v184, v59);
        (*v135)(v24, v122, v155);
        v123 = v153;
        sub_22BDB8D44();
        sub_22BDB8174();
        v124 = v163;
        (*v162)(v57, v123, v163);
        v125 = (*v161)(v57, v124);
        if (v125 == v160 || v125 == v159)
        {
          v127 = *v158;
          (*v158)(v57, v124);
          sub_22BBBCB1C();
          LODWORD(v205) = v128;
          v204 = *v214;
          v204(v32, v25);
          v127(v153, v124);
          if ((v205 & 1) == 0)
          {
            sub_22BDB8174();
            v129 = v212;
            sub_22BBB97EC();
            v204(v129, v25);
          }

          (*v134)(v24, v155);
          v55 = v191;
        }

        else
        {
          (*v214)(v32, v25);
          v131 = *v158;
          (*v158)(v153, v124);
          (*v134)(v24, v155);
          v131(v173, v124);
        }
      }

LABEL_66:
      v57 = v173;
      goto LABEL_68;
    }

    (*v175)(v58, v59);
    (*v168)(v176, v58, v177);
    v61 = sub_22BDB9914();
    v203 = *(v61 + 16);
    if (v203)
    {
      v62 = 0;
      v201 = v61 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v63 = v193;
      v64 = v190;
      v202 = v61;
      while (1)
      {
        if (v62 >= *(v61 + 16))
        {
          __break(1u);
          goto LABEL_71;
        }

        (*(v20 + 16))(v63, v201 + *(v20 + 72) * v62, v19);
        v65 = v63;
        sub_22BDB89D4();
        v66 = v200;
        (*v196)(v200, v56, v55);
        v204 = *v210;
        v67 = (v204)(v66, v55);
        v205 = *v206;
        (v205)(v66, v55);
        if (v67 == v209 || v67 == v208 || v67 == v207)
        {
          v70 = v64;
          v71 = v215;
          v72 = v216;
          sub_22BDB8174();
          if (!*(v72 + 16))
          {
            (*v214)(v71, v25);
            v19 = v192;
            (*v195)(v65, v192);
            v63 = v65;
            v24 = v198;
            v20 = v199;
            v64 = v70;
LABEL_31:
            v32 = v194;
            goto LABEL_32;
          }

          sub_22BCD3F54(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
          v73 = sub_22BDBABA4();
          v74 = ~(-1 << *(v72 + 32));
          do
          {
            v75 = v73 & v74;
            if (((*(v72 + 56 + (((v73 & v74) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v73 & v74)) & 1) == 0)
            {
              (*v214)(v215, v25);
              v63 = v193;
              v19 = v192;
              (*v195)(v193, v192);
              v64 = v190;
              v55 = v191;
              v56 = v189;
              v24 = v198;
              v20 = v199;
              goto LABEL_31;
            }

            v77 = v211;
            v76 = v212;
            v78 = *(v211 + 16);
            v78(v212, *(v72 + 48) + *(v211 + 72) * v75, v25);
            sub_22BCD3F54(&qword_28142DD10, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
            v79 = sub_22BDBABD4();
            v80 = *(v77 + 8);
            v80(v76, v25);
            v73 = v75 + 1;
          }

          while ((v79 & 1) == 0);
          v80(v215, v25);
          v81 = v188;
          sub_22BDB89D4();
          v82 = v81;
          v55 = v191;
          v83 = (v204)(v82, v191);
          v85 = v83 == v209 || v83 == v208 || v83 == v207;
          v86 = v190;
          if (v85)
          {
            v87 = v185;
            sub_22BDB8174();
            v89 = v87;
            v55 = v191;
            v88 = 0;
          }

          else
          {
            v88 = 1;
            v89 = v185;
          }

          v20 = v199;
          sub_22BB336D0(v89, v88, 1, v25);
          (v205)(v188, v55);
          sub_22BBCD82C(v89, v86, &qword_27D8E27C0, &qword_22BDBCDF0);
          if (sub_22BB3AA28(v86, 1, v25) == 1)
          {
            v63 = v193;
            v90 = v192;
            (*v195)(v193, v192);
            v19 = v90;
            sub_22BB58728(v86, &qword_27D8E27C0, &qword_22BDBCDF0);
            v56 = v189;
            v32 = v194;
            v64 = v86;
          }

          else
          {
            v91 = v186;
            (*v174)(v186, v86, v25);
            if (*(v183 + 16) && (sub_22BBDAE68(), v91 = v186, (v93 & 1) != 0))
            {
              v94 = v145;
              v95 = v144;
              v96 = v165;
              (*(v145 + 16))(v144, *(v183 + 56) + *(v145 + 72) * v92, v165);
              v97 = *(v94 + 32);
              v98 = v164;
              v97(v164, v95, v96);
              sub_22BCB3AC0();
              v19 = v192;
              if (!v99)
              {
                (*v141)(v98, v96);
                v80(v186, v25);
                v63 = v193;
                (*v195)(v193, v19);
                v55 = v191;
                v56 = v189;
                v24 = v198;
                v32 = v194;
                v64 = v190;
                goto LABEL_32;
              }

              v100 = v99;
              v101 = v156;
              sub_22BDB8174();
              v102 = v138;
              v78((v101 + *(v138 + 20)), v186, v25);
              *(v101 + *(v102 + 24)) = v100;
              sub_22BCD3F9C(v101, v157);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v64 = v190;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_22BD90B38();
                v166 = v107;
              }

              v104 = *(v166 + 16);
              v32 = v194;
              if (v104 >= *(v166 + 24) >> 1)
              {
                sub_22BD90B38();
                v166 = v108;
              }

              sub_22BCD3FF4(v156, _s13ValueExecutedVMa);
              (*v141)(v164, v165);
              v80(v186, v25);
              v105 = v193;
              (*v195)(v193, v19);
              v106 = v166;
              *(v166 + 16) = v104 + 1;
              v63 = v105;
              sub_22BCD404C(v157, v106 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v104);
              v55 = v191;
              v56 = v189;
            }

            else
            {
              v80(v91, v25);
              v63 = v193;
              v19 = v192;
              (*v195)(v193, v192);
              v56 = v189;
              v32 = v194;
              v64 = v190;
            }
          }
        }

        else
        {
          (*v195)(v65, v19);
          v20 = v199;
          v63 = v65;
        }

        v24 = v198;
LABEL_32:
        ++v62;
        v61 = v202;
        if (v62 == v203)
        {

          v57 = v173;
          goto LABEL_64;
        }
      }
    }

LABEL_64:
    (*v167)(v176, v177);
LABEL_68:
    v58 = v184;
    v54 = v187;
  }

  while (v187);
LABEL_71:

LABEL_72:

  return v166;
}

uint64_t sub_22BBBB918(uint64_t a1)
{
  v2 = sub_22BDBA594();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  v61 = sub_22BDB4C34();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v70 = v13 - v12;
  v14 = sub_22BBE6DE0(&qword_27D8E3F20, &qword_22BDC1508);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v53 - v15;
  v17 = _s12ValueFetcherV14ValueStatementVMa(0);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v69 = v19 - v18;
  v20 = sub_22BDB9B54();
  sub_22BB30444();
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  v71 = v24 - v23;
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F98];
  }

  v27 = *(v22 + 16);
  v26 = v22 + 16;
  v28 = v10;
  v29 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v66 = *(v26 + 56);
  v64 = (v28 + 16);
  v60 = (v4 + 16);
  v53[1] = v4 + 32;
  v54 = v28;
  v56 = (v28 + 8);
  v67 = (v26 - 8);
  v68 = v27;
  v53[0] = v4 + 40;
  v30 = MEMORY[0x277D84F98];
  v58 = v2;
  v59 = v4;
  v55 = v16;
  v63 = v17;
  v57 = v20;
  v65 = v26;
  while (1)
  {
    v31 = v71;
    v68(v71, v29, v20);
    sub_22BBBBEBC(v16);
    if (sub_22BB3AA28(v16, 1, v17) == 1)
    {
      (*v67)(v31, v20);
      sub_22BB58780(v16, &qword_27D8E3F20, &qword_22BDC1508);
      goto LABEL_15;
    }

    v20 = v8;
    v32 = v69;
    sub_22BCBBA90(v16, v69);
    v33 = v61;
    v62 = *v64;
    v62(v70, v32);
    (*v60)(v20, v32 + *(v17 + 20), v2);
    swift_isUniquelyReferenced_nonNull_native();
    v72 = v30;
    sub_22BBDAE68();
    if (__OFADD__(*(v30 + 16), (v35 & 1) == 0))
    {
      break;
    }

    v36 = v34;
    v37 = v35;
    sub_22BBE6DE0(&qword_27D8E3F28, &qword_22BDC1510);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      v8 = v20;
      v40 = v33;
      v17 = v63;
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v36 = v38;
    }

    else
    {
      v8 = v20;
      v40 = v33;
      v17 = v63;
    }

    v30 = v72;
    if (v37)
    {
      v41 = sub_22BB32BFC();
      v2 = v58;
      (*(v37 + 40))(v41, v8, v58);
      (*v56)(v70, v40);
      sub_22BCBBAF4(v69);
      v42 = sub_22BB33D40();
      v43(v42);
    }

    else
    {
      *(v72 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v44 = v54;
      v45 = v70;
      (v62)(*(v30 + 48) + *(v54 + 72) * v36, v70, v40);
      v46 = sub_22BB32BFC();
      v2 = v58;
      (*(v37 + 32))(v46, v8, v58);
      (*(v44 + 8))(v45, v40);
      sub_22BCBBAF4(v69);
      v47 = sub_22BB33D40();
      v48(v47);
      v49 = *(v30 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_20;
      }

      *(v30 + 16) = v51;
      v17 = v63;
    }

    v16 = v55;
LABEL_15:
    v29 += v66;
    if (!--v25)
    {
      return v30;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t _s12ValueFetcherV14ValueStatementVMa(uint64_t a1)
{
  result = qword_28142D020;
  if (!qword_28142D020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBBBEBC@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v1 = sub_22BDB5404();
  v106 = *(v1 - 8);
  v107 = v1;
  MEMORY[0x28223BE20](v1);
  v105 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BDB90B4();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = &v88 - v6;
  v7 = sub_22BDB87F4();
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDBA634();
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDBA594();
  v109 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v91 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v88 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v90 = &v88 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v98 = (&v88 - v19);
  MEMORY[0x28223BE20](v18);
  v100 = &v88 - v20;
  v21 = sub_22BBE6DE0(&qword_27D8E3F30, qword_22BDC1518);
  MEMORY[0x28223BE20](v21 - 8);
  v108 = &v88 - v22;
  v23 = sub_22BDB86E4();
  v102 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v88 - v27;
  v28 = sub_22BDB8304();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22BDB9B14();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v36 = (*(v33 + 88))(v35, v32);
  if (v36 != *MEMORY[0x277D1E708])
  {
    if (v36 != *MEMORY[0x277D1E798])
    {
      v70 = _s12ValueFetcherV14ValueStatementVMa(0);
      sub_22BB336D0(v103, 1, 1, v70);
      return (*(v33 + 8))(v35, v32);
    }

    (*(v33 + 96))(v35, v32);
    v43 = v96;
    v42 = v97;
    v44 = v93;
    (*(v96 + 32))(v93, v35, v97);
    v45 = v92;
    sub_22BDB87E4();
    v46 = v105;
    sub_22BDB9094();
    (*(v94 + 8))(v45, v95);
    v47 = v104;
    sub_22BCB5AAC(v104);
    (*(v106 + 8))(v46, v107);
    v48 = sub_22BB3AA28(v47, 1, v11);
    v49 = v103;
    if (v48 == 1)
    {
      (*(v43 + 8))(v44, v42);
      sub_22BB58780(v47, &qword_27D8E2668, &unk_22BDBCCD0);
      v40 = _s12ValueFetcherV14ValueStatementVMa(0);
      v41 = v49;
      goto LABEL_7;
    }

    v72 = *(v109 + 32);
    v73 = v91;
    v72(v91, v47, v11);
    sub_22BDB8794();
    (*(v43 + 8))(v44, v42);
    v74 = _s12ValueFetcherV14ValueStatementVMa(0);
    v72((v49 + *(v74 + 20)), v73, v11);
    v41 = v49;
LABEL_21:
    v50 = 0;
    v40 = v74;
    return sub_22BB336D0(v41, v50, 1, v40);
  }

  (*(v33 + 96))(v35, v32);
  (*(v29 + 32))(v31, v35, v28);
  v37 = sub_22BDB82F4();
  v38 = v108;
  sub_22BC74158(v37, v108);

  v39 = v31;
  if (sub_22BB3AA28(v38, 1, v23) != 1)
  {
    v51 = v23;
    v96 = v29;
    v97 = v28;
    v52 = v101;
    (*(v102 + 32))(v101, v38, v23);
    v53 = *(sub_22BDB82F4() + 16);

    v54 = v103;
    v88 = v39;
    if (v53 < 2)
    {
      v75 = v98;
      sub_22BDB86D4();
      v56 = v109;
    }

    else
    {
      v55 = v90;
      sub_22BDB86D4();
      sub_22BDBA524();
      v56 = v109;
      (*(v109 + 8))(v55, v11);
      v57 = sub_22BDB82F4();
      v58 = *(v57 + 16);
      if (v58)
      {
        v108 = v51;
        v110 = MEMORY[0x277D84F90];
        sub_22BD27A40(0, v58, 0);
        v59 = v110;
        v60 = *(v102 + 16);
        v61 = *(v102 + 80);
        v95 = v57;
        v62 = v57 + ((v61 + 32) & ~v61);
        v105 = *(v102 + 72);
        v106 = v60;
        v107 = v102 + 16;
        v63 = (v102 + 8);
        v104 = v56 + 32;
        v64 = v89;
        do
        {
          v65 = v11;
          v66 = v108;
          (v106)(v26, v62, v108);
          sub_22BDB86D4();
          (*v63)(v26, v66);
          v110 = v59;
          v68 = *(v59 + 16);
          v67 = *(v59 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_22BD27A40(v67 > 1, v68 + 1, 1);
            v59 = v110;
          }

          *(v59 + 16) = v68 + 1;
          v69 = v59 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v68;
          v11 = v65;
          (*(v109 + 32))(v69, v64, v65);
          v62 += v105;
          --v58;
        }

        while (v58);

        v54 = v103;
        v51 = v108;
        v56 = v109;
      }

      else
      {
      }

      v76 = sub_22BDBA3A4();
      v84 = swift_allocBox(v76, v77, v78, v79, v80, v81, v82, v83, v88, v89, v90);
      sub_22BDBA374();
      v75 = v98;
      *v98 = v84;
      (*(v56 + 104))(v75, *MEMORY[0x277D729E0], v11);
      v52 = v101;
    }

    v85 = *(v56 + 32);
    v86 = v100;
    v85(v100, v75, v11);
    v87 = v88;
    sub_22BDB8174();
    (*(v102 + 8))(v52, v51);
    (*(v96 + 8))(v87, v97);
    v74 = _s12ValueFetcherV14ValueStatementVMa(0);
    v85((v54 + *(v74 + 20)), v86, v11);
    v41 = v54;
    goto LABEL_21;
  }

  (*(v29 + 8))(v31, v28);
  sub_22BB58780(v38, &qword_27D8E3F30, qword_22BDC1518);
  v40 = _s12ValueFetcherV14ValueStatementVMa(0);
  v41 = v103;
LABEL_7:
  v50 = 1;
  return sub_22BB336D0(v41, v50, 1, v40);
}

uint64_t sub_22BBBC9C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BDB4C34();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22BDBA594();
    v10 = a1 + *(a4 + 20);
  }

  return sub_22BB336D0(v10, a2, a2, v9);
}

uint64_t sub_22BBBCA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB4C34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22BDBA594();
    v8 = a1 + *(a3 + 20);
  }

  return sub_22BB3AA28(v8, a2, v7);
}

void sub_22BBBCB1C()
{
  sub_22BB30F94();
  sub_22BB97D98();
  sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BC548EC();
  if (v2)
  {
    v3 = *(v0 + 40);
    sub_22BB3A594();
    v6 = sub_22BB8E56C(v4, v5);
    sub_22BC54250(v6);
    sub_22BB512D4();
    do
    {
      sub_22BB3E46C();
      if (!v7)
      {
        break;
      }

      v8 = sub_22BBC96AC();
      v9(v8);
      sub_22BB3A594();
      v11 = sub_22BB8E56C(&qword_28142DD10, v10);
      sub_22BC5421C(v11);
      v12 = sub_22BC541FC();
      v13(v12);
    }

    while ((v3 & 1) == 0);
  }

  sub_22BB314EC();
}

uint64_t sub_22BBBCF40()
{
  sub_22BBBCF98();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBBCF98()
{

  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation;
  v2 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22BBBD044()
{
  sub_22BBBE088();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBBD288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB664();
}

uint64_t sub_22BBBD2AC(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

void sub_22BBBD2C4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void sub_22BBBD410()
{
  sub_22BB30F94();
  v26 = v0;
  v1 = sub_22BDB7764();
  sub_22BB30444();
  v25 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v6 = v5 - v4;
  v27 = sub_22BDB7734();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BDB7754();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  sub_22BDB6114();
  v20 = sub_22BDB7744();
  sub_22BDB7774();
  v24 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    if ((*(v25 + 88))(v6, v1) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v6, v1);
      v21 = "";
    }

    v22 = sub_22BB37F30();
    *v22 = 0;
    v23 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v20, v24, v23, v26, v21, v22, 2u);
    sub_22BB3A3D8();
  }

  (*(v8 + 8))(v12, v27);
  (*(v15 + 8))(v19, v13);
  sub_22BB314EC();
}

uint64_t sub_22BBBD7B0(uint64_t a1)
{
  sub_22BB72224(a1);
  sub_22BB72FA8(v2, v1);
  v9 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  sub_22BB31814(v1, 1, v9);
  if (v10)
  {
    sub_22BB3A8A8();
    v11 = sub_22BB31F54();
    v12(v11);
    v13 = sub_22BDB77C4();
    v14 = sub_22BDBB114();
    v15 = sub_22BB3805C(v14);
    v16 = v3[37];
    v17 = v3[35];
    if (v15)
    {
      v496 = sub_22BB315E4();
      v562 = sub_22BB314C8();
      v694 = v562;
      sub_22BB70C1C(v562, 4.8149e-34);
      sub_22BB3AFA0();
      sub_22BB8C540(v18, 255, v19, MEMORY[0x277D1E878]);
      v20 = sub_22BDBB684();
      v6 += 8;
      v21 = sub_22BB2F0E0();
      v22(v21);
      v23 = sub_22BB37364();
      v24(v23, v17);
      v25 = sub_22BB3CB04();
      sub_22BB32EE0(v25, v26, v27);
      sub_22BB3935C();

      *(v496 + 4) = v20;
      sub_22BB3FE04(&dword_22BB2C000, v28, v29, "unhandled event payload: %s", v30, v31, v32, v33, v330, v363, v396, v429, v462, v496, v529);
      sub_22BB32FA4(v562);
      sub_22BB30AF0();
      sub_22BB35600();

      (*(v595 + 8))();
    }

    else
    {

      v38 = sub_22BB37364();
      v39(v38, v17);
      v40 = sub_22BB2F3F0();
      v41(v40);
    }

    v42 = v3[38];
    v43 = v3[35];
    v44 = v3[30];
    sub_22BBC788C();
    sub_22BB33E40();
    v47 = sub_22BB8C540(v45, 255, v46, &unk_22BDCDE18);
    v48 = sub_22BB37F10(v47);
    sub_22BB3961C(v48, v49, v50, v51, v52, v53, v54, v55, v330);
    v56 = sub_22BB331D4();
    v16(v56);
LABEL_9:
    sub_22BB58728(v44, &qword_27D8E6320, &qword_22BDCDD00);
    v57 = v3[46];
    v58 = v3[45];
    v60 = v3[41];
    v59 = v3[42];
    sub_22BB35C30();
    sub_22BBBD410();

    v57, v61, v62, v63, v64, v65, v66, v67, v330, v363, v396, v429, v462, v495, v529, v562, v595, v628, v661, v694, v727, v760, v793, v826, v859;
    v58, v68, v69, v70, v71, v72, v73, v74, v331, v364, v397, v430, v463, v497, v530, v563, v596, v629, v662, v695, v728, v761, v794, v827, v860;
    v59, v75, v76, v77, v78, v79, v80, v81, v332, v365, v398, v431, v464, v498, v531, v564, v597, v630, v663, v696, v729, v762, v795, v828, v861;
    v60, v82, v83, v84, v85, v86, v87, v88, v333, v366, v399, v432, v465, v499, v532, v565, v598, v631, v664, v697, v730, v763, v796, v829, v862;
    v42, v89, v90, v91, v92, v93, v94, v95, v334, v367, v400, v433, v466, v500, v533, v566, v599, v632, v665, v698, v731, v764, v797, v830, v863;
    v43, v96, v97, v98, v99, v100, v101, v102, v335, v368, v401, v434, v467, v501, v534, v567, v600, v633, v666, v699, v732, v765, v798, v831, v864;
    v6, v103, v104, v105, v106, v107, v108, v109, v336, v369, v402, v435, v468, v502, v535, v568, v601, v634, v667, v700, v733, v766, v799, v832, v865;
    v16, v110, v111, v112, v113, v114, v115, v116, v337, v370, v403, v436, v469, v503, v536, v569, v602, v635, v668, v701, v734, v767, v800, v833, v866;
    v371, v117, v118, v119, v120, v121, v122, v123, v338, v371, v404, v437, v470, v504, v537, v570, v603, v636, v669, v702, v735, v768, v801, v834, v867;
    v405, v124, v125, v126, v127, v128, v129, v130, v339, v372, v405, v438, v471, v505, v538, v571, v604, v637, v670, v703, v736, v769, v802, v835, v868;
    v439, v131, v132, v133, v134, v135, v136, v137, v340, v373, v406, v439, v472, v506, v539, v572, v605, v638, v671, v704, v737, v770, v803, v836, v869;
    v473, v138, v139, v140, v141, v142, v143, v144, v341, v374, v407, v440, v473, v507, v540, v573, v606, v639, v672, v705, v738, v771, v804, v837, v870;
    v508, v145, v146, v147, v148, v149, v150, v151, v342, v375, v408, v441, v474, v508, v541, v574, v607, v640, v673, v706, v739, v772, v805, v838, v871;
    v542, v152, v153, v154, v155, v156, v157, v158, v343, v376, v409, v442, v475, v509, v542, v575, v608, v641, v674, v707, v740, v773, v806, v839, v872;
    v576, v159, v160, v161, v162, v163, v164, v165, v344, v377, v410, v443, v476, v510, v543, v576, v609, v642, v675, v708, v741, v774, v807, v840, v873;
    v610, v166, v167, v168, v169, v170, v171, v172, v345, v378, v411, v444, v477, v511, v544, v577, v610, v643, v676, v709, v742, v775, v808, v841, v874;
    v644, v173, v174, v175, v176, v177, v178, v179, v346, v379, v412, v445, v478, v512, v545, v578, v611, v644, v677, v710, v743, v776, v809, v842, v875;
    sub_22BB31044();
    sub_22BB374A0();

    __asm { BRAA            X1, X16 }
  }

  v34 = v3[29];
  sub_22BC5E5C4();
  sub_22BB31F54();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v187 = v3[36];
      v595 = v3[35];
      v628 = v3[38];
      v44 = v3[30];
      v188 = v3[23];
      v6 = v3[24];
      v189 = v3[21];
      v16 = v3[22];
      v191 = v3[19];
      v190 = v3[20];
      (*(v188 + 32))(v6, v3[29], v16);
      sub_22BDB9784();
      sub_22BDB9794();
      v192 = sub_22BDB4B84();
      v193 = *(v190 + 8);
      v43 = v190 + 8;
      v193(v189, v191);
      v661 = v192;
      swift_willThrow();
      v42 = v188 + 8;
      v194 = sub_22BB35464();
      v195(v194);
      (*(v187 + 8))(v628, v595);
      goto LABEL_9;
    case 2:
      v182 = sub_22BB6BE80();
      v34 = v3[30];
      (*(v183 + 8))(v182);
      goto LABEL_20;
    case 3:
    case 5:
      sub_22BB58728(v3[30], &qword_27D8E6320, &qword_22BDCDD00);
      swift_task_alloc();
      sub_22BB30B34();
      v3[50] = v36;
      *v36 = v37;
      sub_22BB2F26C(v36);
      goto LABEL_27;
    case 4:
      v325 = swift_task_alloc();
      v3[53] = v325;
      *v325 = v3;
      sub_22BB692F8(v325);
      sub_22BB374A0();

      return sub_22BD3B850();
    case 6:
      swift_task_alloc();
      sub_22BB30B34();
      v3[59] = v327;
      *v327 = v328;
      sub_22BB34128(v327);
LABEL_27:
      sub_22BB374A0();

      result = sub_22BD3DE98();
      break;
    case 7:
      sub_22BDB63D4();
      v9 = sub_22BDB77C4();
      v196 = sub_22BDBB0F4();
      if (sub_22BB333C0(v196))
      {
        v197 = sub_22BB37F30();
        sub_22BB360F0(v197);
        sub_22BB2F0A8(&dword_22BB2C000, v198, v199, "Received STOP request. Not doing work");
        sub_22BB35600();
      }

      sub_22BD42530();
      v7 += 8;
      v200 = sub_22BB32E04();
      v201(v200);
      v202 = sub_22BB2F0E0();
      v203(v202);
LABEL_20:
      sub_22BB58728(v34, &qword_27D8E6320, &qword_22BDCDD00);
      sub_22BB391D4();
      sub_22BBBD410();

      v7, v204, v205, v206, v207, v208, v209, v210, v330, v363, v396, v429, v462, v495, v529, v562, v595, v628, v661, v694, v727, v760, v793, v826, v859;
      v8, v211, v212, v213, v214, v215, v216, v217, v347, v380, v413, v446, v479, v513, v546, v579, v612, v645, v678, v711, v744, v777, v810, v843, v876;
      v9, v218, v219, v220, v221, v222, v223, v224, v348, v381, v414, v447, v480, v514, v547, v580, v613, v646, v679, v712, v745, v778, v811, v844, v877;
      v34, v225, v226, v227, v228, v229, v230, v231, v349, v382, v415, v448, v481, v515, v548, v581, v614, v647, v680, v713, v746, v779, v812, v845, v878;
      v2, v232, v233, v234, v235, v236, v237, v238, v350, v383, v416, v449, v482, v516, v549, v582, v615, v648, v681, v714, v747, v780, v813, v846, v879;
      v4, v239, v240, v241, v242, v243, v244, v245, v351, v384, v417, v450, v483, v517, v550, v583, v616, v649, v682, v715, v748, v781, v814, v847, v880;
      v5, v246, v247, v248, v249, v250, v251, v252, v352, v385, v418, v451, v484, v518, v551, v584, v617, v650, v683, v716, v749, v782, v815, v848, v881;
      v6, v253, v254, v255, v256, v257, v258, v259, v353, v386, v419, v452, v485, v519, v552, v585, v618, v651, v684, v717, v750, v783, v816, v849, v882;
      v420, v260, v261, v262, v263, v264, v265, v266, v354, v387, v420, v453, v486, v520, v553, v586, v619, v652, v685, v718, v751, v784, v817, v850, v883;
      v454, v267, v268, v269, v270, v271, v272, v273, v355, v388, v421, v454, v487, v521, v554, v587, v620, v653, v686, v719, v752, v785, v818, v851, v884;
      v488, v274, v275, v276, v277, v278, v279, v280, v356, v389, v422, v455, v488, v522, v555, v588, v621, v654, v687, v720, v753, v786, v819, v852, v885;
      v523, v281, v282, v283, v284, v285, v286, v287, v357, v390, v423, v456, v489, v523, v556, v589, v622, v655, v688, v721, v754, v787, v820, v853, v886;
      v557, v288, v289, v290, v291, v292, v293, v294, v358, v391, v424, v457, v490, v524, v557, v590, v623, v656, v689, v722, v755, v788, v821, v854, v887;
      v591, v295, v296, v297, v298, v299, v300, v301, v359, v392, v425, v458, v491, v525, v558, v591, v624, v657, v690, v723, v756, v789, v822, v855, v888;
      v625, v302, v303, v304, v305, v306, v307, v308, v360, v393, v426, v459, v492, v526, v559, v592, v625, v658, v691, v724, v757, v790, v823, v856, v889;
      v659, v309, v310, v311, v312, v313, v314, v315, v361, v394, v427, v460, v493, v527, v560, v593, v626, v659, v692, v725, v758, v791, v824, v857, v890;
      v693, v316, v317, v318, v319, v320, v321, v322, v362, v395, v428, v461, v494, v528, v561, v594, v627, v660, v693, v726, v759, v792, v825, v858, v891;
      sub_22BB39738();
      sub_22BB374A0();

      __asm { BRAA            X2, X16 }

      return result;
    default:
      sub_22BB898C8();
      v184 = swift_task_alloc();
      v3[56] = v184;
      *v184 = v3;
      sub_22BB3B3E0(v184);
      sub_22BB374A0();

      result = sub_22BD3BC4C();
      break;
  }

  return result;
}

uint64_t sub_22BBBDEB0(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBDED8()
{
  sub_22BB36BC0();
  sub_22BB35458();
  sub_22BDB6104();
  v2 = sub_22BDB7744();
  sub_22BD64580(v2);
  v3 = sub_22BDBB1C4();
  if (sub_22BD646BC(v3))
  {
    v4 = *(v1 + 864);

    sub_22BDB77B4();

    v5 = sub_22BB331D4();
    if (v6(v5) == v4)
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 376) + 8))(*(v1 + 392), *(v1 + 368));
      v7 = "Accept End";
    }

    v8 = sub_22BB37F30();
    *v8 = 0;
    sub_22BDB7714();
    sub_22BD6424C();
    _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v7, v8, 2u);
    sub_22BB30458();
  }

  v14 = *(v1 + 760);
  v15 = *(v1 + 736);

  v16 = sub_22BB32E04();
  v14(v16);
  v17 = sub_22BB2F0E0();
  v15(v17);
  sub_22BBBEB48();
  sub_22BB34648();
  sub_22BD6484C();
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 728) = v18;
  *v18 = v19;
  sub_22BB6BBD8(v18);
  sub_22BB33430();

  return MEMORY[0x2822003E8](v20);
}

uint64_t sub_22BBBE088()
{
  v1 = v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_signpostIntervalState;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_signpostIntervalState));
  sub_22BD78AF0((v1 + 8));
  os_unfair_lock_unlock(v1);
  sub_22BBBE964(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_sessionId, MEMORY[0x277D1D2C8]);
  sub_22BBBE964(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata, type metadata accessor for SpanMetadata);
  v2 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_commandContinuation;
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BB2F330();
  (*(v3 + 8))(v0 + v2);

  return v0;
}

uint64_t sub_22BBBE290@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 3664);
  *(a1 + 16) = v1;
  *(*(v3 - 216) + 16) = 1;
  return result;
}

uint64_t sub_22BBBE2AC()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

uint64_t sub_22BBBE304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 88);
  v7 = *(v4 + 64);

  return type metadata accessor for EntitySearchableItemCandidateGenerator(0, v7, v6, a4);
}

uint64_t sub_22BBBE494()
{
  v2 = v0[40];
  v3 = v0[29];
  v5 = v0[27];
  v4 = v0[28];
  v6 = sub_22BBDB920();
  sub_22BB69338();
  v7 = swift_allocObject();
  sub_22BB53E14(v7);
  v8 = *v6;
  sub_22BD790CC(v2, sub_22BB9614C, v1);

  v9 = sub_22BB324FC();
  sub_22BB58728(v9, &qword_27D8E6518, &unk_22BDCE420);
  (*(v3 + 8))(v6, v1);
  sub_22BB32FA4(v0 + 2);
  v6, v10, v11, v12, v13, v14, v15, v16, v103, v116, v129, v142, v155, v168, v181, v194, v207, v220, v233, v246, v259, v272, v285, v0, v310;
  &qword_27D8E6518, v17, v18, v19, v20, v21, v22, v23, v104, v117, v130, v143, v156, v169, v182, v195, v208, v221, v234, v247, v260, v273, v286, v298, v311;
  &unk_22BDCE420, v24, v25, v26, v27, v28, v29, v30, v105, v118, v131, v144, v157, v170, v183, v196, v209, v222, v235, v248, v261, v274, v287, v299, v312;
  v8, v31, v32, v33, v34, v35, v36, v37, v106, v119, v132, v145, v158, v171, v184, v197, v210, v223, v236, v249, v262, v275, v288, v300, v313;
  v4, v38, v39, v40, v41, v42, v43, v44, v107, v120, v133, v146, v159, v172, v185, v198, v211, v224, v237, v250, v263, v276, v289, v301, v314;
  v5, v45, v46, v47, v48, v49, v50, v51, v108, v121, v134, v147, v160, v173, v186, v199, v212, v225, v238, v251, v264, v277, v290, v302, v315;
  v2, v52, v53, v54, v55, v56, v57, v58, v109, v122, v135, v148, v161, v174, v187, v200, v213, v226, v239, v252, v265, v278, v291, v303, v316;
  v123, v59, v60, v61, v62, v63, v64, v65, v110, v123, v136, v149, v162, v175, v188, v201, v214, v227, v240, v253, v266, v279, v292, v304, v317;
  v137, v66, v67, v68, v69, v70, v71, v72, v111, v124, v137, v150, v163, v176, v189, v202, v215, v228, v241, v254, v267, v280, v293, v305, v318;
  v151, v73, v74, v75, v76, v77, v78, v79, v112, v125, v138, v151, v164, v177, v190, v203, v216, v229, v242, v255, v268, v281, v294, v306, v319;
  v165, v80, v81, v82, v83, v84, v85, v86, v113, v126, v139, v152, v165, v178, v191, v204, v217, v230, v243, v256, v269, v282, v295, v307, v320;
  v179, v87, v88, v89, v90, v91, v92, v93, v114, v127, v140, v153, v166, v179, v192, v205, v218, v231, v244, v257, v270, v283, v296, v308, v321;
  v193, v94, v95, v96, v97, v98, v99, v100, v115, v128, v141, v154, v167, v180, v193, v206, v219, v232, v245, v258, v271, v284, v297, v309, v322;
  sub_22BB2F09C();

  return v101();
}

uint64_t sub_22BBBE62C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB2F330();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_22BBBE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB664();
}

void sub_22BBBE6F4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_log_type_t a17)
{

  _os_log_impl(a1, v17, a17, a4, v18, 0x16u);
}

uint64_t sub_22BBBE764()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BBBE7C0(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBE7DC()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BBBE80C(uint64_t a1, uint64_t a2)
{

  return sub_22BDB9584();
}

uint64_t sub_22BBBE860(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBE888(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBE8A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BBBE904(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BBBE964(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BBBE9BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_22BBE6DE0(a1, a2);
  sub_22BB30434(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = a3(0);
  if (!sub_22BB3AA28(v3 + v7, 1, v8))
  {
    sub_22BB30474();
    (*(v9 + 8))(v3 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v3);
}

uint64_t sub_22BBBEAA0()
{

  return sub_22BB67984((v0 + 1368), v0 + 2352, v0 + 2344, v0 + 2312);
}

uint64_t sub_22BBBEAD0()
{
  v2 = v0[526];
  v3 = v0[521];
  *(v1 - 160) = v0[312];
  *(v1 - 152) = v3;
  return v2;
}

uint64_t sub_22BBBEB28(uint64_t result)
{
  *(result + 16) = sub_22BB89FA0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBEB8C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BBBEBD8()
{

  return sub_22BDB5D54();
}

uint64_t sub_22BBBEC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D1D2C8];
  sub_22BBBE904(a1, v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_sessionId, MEMORY[0x277D1D2C8]);
  sub_22BBBE904(a2, v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata, type metadata accessor for SpanMetadata);
  v10 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_commandContinuation;
  v11 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a3, v11);
  (*(v12 + 8))(a3, v11);
  sub_22BBBE964(a2, type metadata accessor for SpanMetadata);
  sub_22BBBE964(a1, v9);
  v13 = v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_signpostIntervalState;
  *v13 = 0;
  *(v13 + 8) = a4;
  return v4;
}

uint64_t sub_22BBBED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_22BBBEC38(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_22BBBEDFC()
{
  *v0 = *(v1 - 160);

  return sub_22BDBB564();
}

uint64_t sub_22BBBEE2C()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBBEE60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8();
  v5 = sub_22BB31F54();
  v6(v5);
  return v4;
}

uint64_t sub_22BBBEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v13 = sub_22BBE6DE0(&qword_27D8E6740, &qword_22BDCE878);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - v17;
  v19 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v26 - v20;
  sub_22BDB4334();
  v22 = sub_22BDB4354();
  sub_22BB336D0(v21, 0, 1, v22);
  sub_22BDB7474();
  sub_22BDB7604();
  v23 = sub_22BDB7614();
  sub_22BB336D0(v18, 0, 1, v23);
  sub_22BDB7484();
  v24 = sub_22BDB7564();
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = v26;
  v34 = v27;
  sub_22BDB76D4();
  sub_22BB336D0(v15, 0, 1, v24);
  return sub_22BDB74C4();
}

uint64_t sub_22BBBF120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a6;
  v21 = a8;
  v26 = a7;
  v19[0] = a2;
  v19[1] = a4;
  v10 = sub_22BBE6DE0(&qword_27D8E6748, &qword_22BDCE880);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v19 - v11);
  v13 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v19 - v14;
  v16 = sub_22BDB7674();
  v24 = a2;
  v25 = a3;
  sub_22BDB76D4();
  sub_22BB336D0(v15, 0, 1, v16);
  sub_22BDB74D4();

  sub_22BBBF494(v12);
  v17 = sub_22BDB74E4();
  sub_22BB336D0(v12, 0, 1, v17);
  sub_22BDB7544();
  sub_22BDB7504();
  v22 = v19[0];
  v23 = v20;
  sub_22BDB76D4();
  sub_22BB336D0(v15, 0, 1, v16);
  sub_22BDB7554();

  sub_22BBBF494(v12);
  sub_22BB336D0(v12, 0, 1, v17);
  sub_22BDB7524();
  return sub_22BDB74F4();
}

uint64_t sub_22BBBF3A8()
{
  v0 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v0);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v1);
  sub_22BB3627C();
  sub_22BDB6734();
  sub_22BDB43E4();
  sub_22BB331C8();
  sub_22BB336D0(v2, v3, v4, v5);
  return sub_22BDB7654();
}

uint64_t sub_22BBBF494@<X0>(uint64_t *a3@<X8>)
{
  sub_22BDB83A4();
  sub_22BB3DF20();
  v4 = sub_22BDBABD4();

  if (v4)
  {

    v5 = 1;
  }

  else
  {
    sub_22BDB8404();
    v6 = sub_22BDBABD4();

    if (v6)
    {

      v5 = 2;
    }

    else
    {
      sub_22BDB8434();
      v11 = sub_22BDBABD4();

      if (v11)
      {

        v7 = MEMORY[0x277D1FAA0];
        goto LABEL_7;
      }

      sub_22BDB8424();
      v12 = sub_22BDBABD4();

      if (v12)
      {

        v5 = 3;
      }

      else
      {
        sub_22BDB83E4();
        v13 = sub_22BDBABD4();

        if (v13)
        {

          v5 = 4;
        }

        else
        {
          sub_22BDB83C4();
          v14 = sub_22BDBABD4();

          if (v14)
          {

            v5 = 5;
          }

          else
          {
            sub_22BDB83D4();
            v15 = sub_22BDBABD4();

            if (v15)
            {

              v7 = MEMORY[0x277D1FA88];
              goto LABEL_7;
            }

            sub_22BDB83F4();
            v16 = sub_22BDBABD4();

            if (v16)
            {

              v7 = MEMORY[0x277D1FA90];
              goto LABEL_7;
            }

            sub_22BDB8414();
            v17 = sub_22BDBABD4();

            if (v17)
            {

              v5 = 6;
            }

            else
            {
              sub_22BDB83B4();
              v18 = sub_22BDBABD4();

              if ((v18 & 1) == 0)
              {
                *a3 = 0;
                goto LABEL_6;
              }

              v5 = 7;
            }
          }
        }
      }
    }
  }

  *a3 = v5;
LABEL_6:
  v7 = MEMORY[0x277D1FA98];
LABEL_7:
  v8 = *v7;
  v9 = sub_22BDB74E4();
  return (*(*(v9 - 8) + 104))(a3, v8, v9);
}

uint64_t IFRequestTelemetryFilterOnlyPRToExecutorAndRG.shouldAllowEvent(_:)(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6738, &qword_22BDCE870);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v6 = sub_22BBE6DE0(&qword_27D8E6740, &qword_22BDCE878);
  v7 = sub_22BB2F0C8(v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = sub_22BBE6DE0(&qword_27D8E6748, &qword_22BDCE880);
  v14 = sub_22BB2F0C8(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB30560();
  v42 = v15;
  sub_22BB30B70();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  sub_22BDB74B4();
  v25 = sub_22BDB7564();
  if (sub_22BB3AA28(v12, 1, v25) == 1)
  {
    sub_22BB58728(v12, &qword_27D8E6740, &qword_22BDCE878);
    v26 = sub_22BDB74E4();
    sub_22BB336D0(v24, 1, 1, v26);
  }

  else
  {
    sub_22BDB7514();
    (*(*(v25 - 8) + 8))(v12, v25);
  }

  v27 = a1;
  sub_22BDB74B4();
  if (sub_22BB3AA28(v10, 1, v25) == 1)
  {
    sub_22BB58728(v10, &qword_27D8E6740, &qword_22BDCE878);
    v28 = sub_22BDB74E4();
    sub_22BB336D0(v22, 1, 1, v28);
  }

  else
  {
    v27 = v10;
    sub_22BDB7534();
    (*(*(v25 - 8) + 8))(v10, v25);
  }

  v29 = *(v2 + 48);
  sub_22BBBFD88(v24, v5);
  sub_22BBBFD88(v22, &v5[v29]);
  sub_22BDB74E4();
  v30 = sub_22BB371E4();
  if (sub_22BB3AA28(v30, 1, v27) == 1)
  {
    goto LABEL_17;
  }

  sub_22BC7E3C4(v5, v19, &qword_27D8E6748, &qword_22BDCE880);
  v31 = *(*(v27 - 8) + 88);
  v32 = sub_22BB3627C();
  if (v31(v32) != *MEMORY[0x277D1FA88])
  {
    goto LABEL_16;
  }

  if (sub_22BB3AA28(&v5[v29], 1, v27) != 1)
  {
    sub_22BC7E3C4(&v5[v29], v42, &qword_27D8E6748, &qword_22BDCE880);
    v33 = sub_22BB3627C();
    v34 = v31(v33);
    if (v34 == *MEMORY[0x277D1FA90] || v34 == *MEMORY[0x277D1FAA0])
    {
      sub_22BB58728(&v5[v29], &qword_27D8E6748, &qword_22BDCE880);
      v36 = sub_22BB31F54();
      sub_22BB58728(v36, v37, &qword_22BDCE880);
      return 1;
    }

LABEL_16:
    v39 = sub_22BB3627C();
    v40(v39);
  }

LABEL_17:
  sub_22BB58728(v5, &qword_27D8E6738, &qword_22BDCE870);
  return 0;
}

uint64_t sub_22BBBFCA0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_22BB69FEC(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

BOOL sub_22BBBFD28(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_22BBBFD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6748, &qword_22BDCE880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *sub_22BBBFDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_22BDB96E4();
  sub_22BB2F330();
  (*(v16 + 32))(a8, a1);
  result = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + result[6]) = a4;
  v19 = (a8 + result[7]);
  *v19 = a5;
  v19[1] = a6;
  *(a8 + result[8]) = a7;
  return result;
}

uint64_t sub_22BBBFEB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22BBBFED0()
{

  return sub_22BDBB334();
}

void sub_22BBBFEF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void sub_22BBBFF10(_WORD *a1@<X8>)
{
  *a1 = 770;
  *(v1 + 2400) = a1 + 1;
  *(v1 + 1528) = sub_22BB89C08;
}

uint64_t sub_22BBBFF34()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBBFF50()
{

  return swift_unknownObjectRelease();
}

unint64_t sub_22BBBFFC8()
{
  v1 = v0[1];
  v16 = *v0;
  v17 = v1;
  v18 = *(v0 + 4);
  result = sub_22BBC00B4();
  v3 = *(v16 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 5);
    v5 = v16 + 16 * result;
    v6 = *(v5 + 40);
    v10 = *(v5 + 32);
    v11 = v6;

    (*(&v16 + 1))(&v13, &v10);

    v7 = v13;
    v8 = v14;
    v9 = v15;
    v10 = v13;
    v11 = v14;
    v12 = v15;
    v4(&v13, &v10);
    sub_22BB50CF4(v7, v8, v9);
    return v13;
  }

  return result;
}

uint64_t sub_22BBC00B4()
{
  v1 = 0;
  v11 = v0[1];
  v2 = v0[3];
  v3 = *(*v0 + 16);
  v4 = (*v0 + 40);
  while (v3 != v1)
  {
    v5 = *v4;
    v12 = *(v4 - 1);
    v13 = v5;

    v11(v15, &v12);

    v12 = v15[0];
    v13 = v15[1];
    v6 = v16;
    v14 = v16;
    v7 = v2(&v12);
    v8 = sub_22BB331D4();
    sub_22BB50CF4(v8, v9, v6);
    if (v7)
    {
      return v1;
    }

    ++v1;
    v4 += 2;
  }

  return v3;
}

uint64_t sub_22BBC01B4()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBC0200(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_22BBC021C(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  return *(v3 - 224);
}

uint64_t sub_22BBC0228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_22BBF684C(a1, a2, v20, v21, a19, x8_0);
}

void sub_22BBC02B0()
{
  v5 = *(v4 - 200);
  v3[587] = *(v4 - 208);
  v3[586] = v5;
  v3[585] = v2;
  v3[584] = v0;
  v3[583] = v1;
  v3[582] = *(v4 - 152);
  v3[588] = *(v3[312] + v3[564]);
}

uint64_t sub_22BBC02FC(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BBC0340(uint64_t a1, uint64_t a2)
{

  return sub_22BB336D0(a1, a2, 1, v2);
}

uint64_t sub_22BBC0358(uint64_t a1)
{

  return sub_22BD44210(a1);
}

uint64_t sub_22BBC0380()
{

  return sub_22BDB63F4();
}

uint64_t sub_22BBC03CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22BBC047C();
  sub_22BDBAD04();
  sub_22BDBAD04();
  if (v9 == v7 && v10 == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22BDBB6D4();
  }

  return v5 & 1;
}

unint64_t sub_22BBC047C()
{
  result = qword_281428A88;
  if (!qword_281428A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A88);
  }

  return result;
}

void sub_22BBC04E8()
{
}

void sub_22BBC052C()
{
  v1[19] = v2;
  v1[20] = sub_22BB89C7C;
  v1[21] = v0;
  v1[22] = sub_22BB89C08;
}

uint64_t sub_22BBC0580(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB554();
}

uint64_t sub_22BBC05FC()
{
}

uint64_t sub_22BBC0614(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBC07F4()
{
  sub_22BBE6DE0(&qword_27D8E6358, &qword_22BDCDD68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22BDBD160;
  *(v0 + 32) = sub_22BDB83E4();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22BDB83C4();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_22BDB83D4();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_22BDB83F4();
  *(v0 + 88) = v4;
  return v0;
}

uint64_t sub_22BBC0888(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBC08A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  a4[3] = sub_22BBC0194;
  a4[4] = 0;
  a4[5] = sub_22BD5E9D4;
  a4[6] = 0;
}

void sub_22BBC0934()
{
  *(v1 - 240) = v0[402];
  *(v1 - 224) = v0[401];
  *(v1 - 168) = v0[400];
}

void *sub_22BBC0978(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      sub_22BB3A974();
      a2 = sub_22BCD3D9C(v12, v13, v14, v15, a4);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      return a2;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_22BBC0B54(0, v8, v16 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_22BB3A974();
  v9 = a3();
  if (!v4)
  {
    return v9;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_22BBC0AE4()
{
  *(v1 - 160) = v0;
}

uint64_t sub_22BBC0AFC()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

uint64_t sub_22BBC0B54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22BDCCD50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22BBC0BB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BBC0C10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = a4;
  v44[0] = a2;
  v46 = a1;
  v56 = sub_22BBE6DE0(&qword_27D8E42F0, &unk_22BDC2CE8);
  MEMORY[0x28223BE20](v56);
  v6 = v44 - v5;
  v7 = sub_22BDB9564();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB43E4();
  v12 = MEMORY[0x28223BE20](v11);
  v61 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = v44 - v15;
  v49 = 0;
  v18 = 0;
  v19 = *(a3 + 64);
  v45 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v66 = v16 + 16;
  v54 = v16;
  v55 = v8;
  v64 = (v16 + 8);
  v65 = v6;
  v50 = (v8 + 8);
  v51 = v8 + 16;
  v52 = v23;
  v53 = v44 - v15;
  v58 = a3;
  v47 = v10;
  v48 = v7;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v60 = (v22 - 1) & v22;
LABEL_12:
    v27 = v24 | (v18 << 6);
    v28 = *(a3 + 48);
    v63 = *(v54 + 72);
    v29 = *(v54 + 16);
    v29(v17, v28 + v63 * v27, v11);
    v30 = *(a3 + 56);
    v31 = *(v55 + 72);
    v59 = v27;
    v32 = v30 + v31 * v27;
    v33 = *(v55 + 16);
    v33(v10, v32, v7);
    v34 = v33;
    v35 = v65;
    v62 = v29;
    v29(v65, v17, v11);
    v34(v35 + *(v56 + 48), v10, v7);
    v36 = *v57;
    if (*(*v57 + 16))
    {
      sub_22BCD3F54(&qword_28142DD50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

      v37 = sub_22BDBABA4();
      v38 = ~(-1 << *(v36 + 32));
      do
      {
        v39 = v37 & v38;
        if (((*(v36 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
        {

          a3 = v58;
          v35 = v65;
          v10 = v47;
          v7 = v48;
          goto LABEL_21;
        }

        v40 = v61;
        v62(v61, *(v36 + 48) + v39 * v63, v11);
        sub_22BCD3F54(&unk_28142DD40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v41 = sub_22BDBABD4();
        v42 = *v64;
        (*v64)(v40, v11);
        v37 = v39 + 1;
      }

      while ((v41 & 1) == 0);

      sub_22BB58728(v65, &qword_27D8E42F0, &unk_22BDC2CE8);
      v10 = v47;
      v7 = v48;
      (*v50)(v47, v48);
      v17 = v53;
      result = v42(v53);
      a3 = v58;
      *(v46 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v43 = __OFADD__(v49++, 1);
      v23 = v52;
      v22 = v60;
      if (v43)
      {
        goto LABEL_24;
      }
    }

    else
    {
      a3 = v58;
LABEL_21:
      sub_22BB58728(v35, &qword_27D8E42F0, &unk_22BDC2CE8);
      (*v50)(v10, v7);
      v17 = v53;
      result = (*v64)(v53);
      v23 = v52;
      v22 = v60;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      return sub_22BBC11CC(v46, v44[0], v49, a3);
    }

    v26 = *(v45 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v60 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22BBC11B4(uint64_t a1)
{

  return sub_22BDBAF34();
}

uint64_t sub_22BBC11CC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = sub_22BDB9564();
  v54 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v44 - v10;
  v11 = sub_22BDB43E4();
  v53 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_22BBE6DE0(&qword_27D8E4310, &unk_22BDC2D10);
  result = sub_22BDBB524();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_22BCD3F54(&qword_28142DD50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_22BDBABA4();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_25:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BBC1668(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = a4;
  v44[0] = a2;
  v46 = a1;
  v56 = sub_22BBE6DE0(&qword_27D8E42E8, &qword_22BDC2CE0);
  MEMORY[0x28223BE20](v56);
  v6 = v44 - v5;
  v7 = sub_22BDB81A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB4C34();
  v12 = MEMORY[0x28223BE20](v11);
  v61 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = v44 - v15;
  v49 = 0;
  v18 = 0;
  v19 = *(a3 + 64);
  v45 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v66 = v16 + 16;
  v54 = v16;
  v55 = v8;
  v64 = (v16 + 8);
  v65 = v6;
  v50 = (v8 + 8);
  v51 = v8 + 16;
  v52 = v23;
  v53 = v44 - v15;
  v58 = a3;
  v47 = v10;
  v48 = v7;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v60 = (v22 - 1) & v22;
LABEL_12:
    v27 = v24 | (v18 << 6);
    v28 = *(a3 + 48);
    v63 = *(v54 + 72);
    v29 = *(v54 + 16);
    v29(v17, v28 + v63 * v27, v11);
    v30 = *(a3 + 56);
    v31 = *(v55 + 72);
    v59 = v27;
    v32 = v30 + v31 * v27;
    v33 = *(v55 + 16);
    v33(v10, v32, v7);
    v34 = v33;
    v35 = v65;
    v62 = v29;
    v29(v65, v17, v11);
    v34(v35 + *(v56 + 48), v10, v7);
    v36 = *v57;
    if (*(*v57 + 16))
    {
      sub_22BCD3F54(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);

      v37 = sub_22BDBABA4();
      v38 = ~(-1 << *(v36 + 32));
      do
      {
        v39 = v37 & v38;
        if (((*(v36 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
        {

          a3 = v58;
          v35 = v65;
          v10 = v47;
          v7 = v48;
          goto LABEL_21;
        }

        v40 = v61;
        v62(v61, *(v36 + 48) + v39 * v63, v11);
        sub_22BCD3F54(&qword_28142DD10, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v41 = sub_22BDBABD4();
        v42 = *v64;
        (*v64)(v40, v11);
        v37 = v39 + 1;
      }

      while ((v41 & 1) == 0);

      sub_22BB58728(v65, &qword_27D8E42E8, &qword_22BDC2CE0);
      v10 = v47;
      v7 = v48;
      (*v50)(v47, v48);
      v17 = v53;
      result = v42(v53);
      a3 = v58;
      *(v46 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v43 = __OFADD__(v49++, 1);
      v23 = v52;
      v22 = v60;
      if (v43)
      {
        goto LABEL_24;
      }
    }

    else
    {
      a3 = v58;
LABEL_21:
      sub_22BB58728(v35, &qword_27D8E42E8, &qword_22BDC2CE0);
      (*v50)(v10, v7);
      v17 = v53;
      result = (*v64)(v53);
      v23 = v52;
      v22 = v60;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      return sub_22BBC1C0C(v46, v44[0], v49, a3);
    }

    v26 = *(v45 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v60 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22BBC1C0C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = sub_22BDB81A4();
  v54 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v44 - v10;
  v11 = sub_22BDB4C34();
  v53 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_22BBE6DE0(&qword_27D8E4308, &qword_22BDC2D08);
  result = sub_22BDBB524();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_22BCD3F54(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    result = sub_22BDBABA4();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_25:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BBC20BC(unint64_t a1)
{
  v3 = sub_22BBC20A8(a1);
  v4 = sub_22BBC20A8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_22BBC2168(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22BBC2208(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22BBC2168(uint64_t a1, char a2)
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

  sub_22BDBB4F4();
LABEL_9:
  result = sub_22BDBB384();
  *v2 = result;
  return result;
}

uint64_t sub_22BBC2208(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22BDBB4F4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22BBC20A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        _s13ActionCreatedCMa(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22BBB5F9C(&qword_27D8E6708, &qword_27D8E6700, &qword_22BDCE7D8, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_22BBE6DE0(&qword_27D8E6700, &qword_22BDCE7D8);
          v9 = sub_22BCACBB4(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBC23B0()
{
  *(v1 - 176) = v0;
}

uint64_t sub_22BBC23C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v15[0] = a2;
  v15[3] = &_s24StatementResultRetrievalVN;
  v15[4] = &off_283F76800;
  a3(0);
  v7 = swift_allocObject();
  v8 = sub_22BB8D7AC(v15, &_s24StatementResultRetrievalVN);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = a5(a1, *v10, v7);
  sub_22BB32FA4(v15);
  return v12;
}

uint64_t sub_22BBC2544(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB664();
}

uint64_t sub_22BBC2588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB8DB4();
  v157 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22BDB8634();
  v158 = *(v153 - 8);
  v9 = MEMORY[0x28223BE20](v153);
  v11 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v139 = v106 - v12;
  v152 = sub_22BDB8624();
  v13 = *(v152 - 8);
  v14 = MEMORY[0x28223BE20](v152);
  v113 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v148 = v106 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v112 = v106 - v19;
  MEMORY[0x28223BE20](v18);
  v147 = v106 - v20;
  v137 = sub_22BDB9624();
  v155 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v138 = v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = _s19SystemResponseEventVMa(0);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v130 = v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22BDB5264();
  v154 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = _s9PlanEventVMa(0);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v146 = v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22BDB9954();
  v142 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22BDB9B14();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22BDB9B54();
  MEMORY[0x28223BE20](v156);
  v165 = v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168[3] = &_s24StatementResultRetrievalVN;
  v168[4] = &off_283F76800;
  v168[0] = a2;
  v32 = *(a1 + 16);
  if (!v32)
  {

    v92 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v111 = v11;
  v114 = v8;
  v115 = v6;
  v107 = a3;
  v34 = *(v30 + 16);
  v33 = v30 + 16;
  v164 = v34;
  v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
  v106[1] = a1;
  v36 = a1 + v35;
  v37 = *(v33 + 56);
  v162 = (v27 + 88);
  v163 = v37;
  v161 = *MEMORY[0x277D1E858];
  v143 = *MEMORY[0x277D1E6F8];
  v125 = *MEMORY[0x277D1E820];
  v119 = *MEMORY[0x277D1E7C8];
  v160 = (v33 - 8);
  v110 = (v27 + 8);
  v159 = (v27 + 96);
  v109 = (v157 + 32);
  v151 = (v158 + 88);
  v150 = *MEMORY[0x277D1DD78];
  v108 = (v157 + 8);
  v134 = (v158 + 8);
  v133 = (v158 + 96);
  v149 = (v13 + 32);
  v132 = (v13 + 16);
  v136 = v13;
  v131 = v13 + 8;
  v118 = (v154 + 32);
  v117 = (v154 + 16);
  v116 = (v154 + 8);
  v124 = v142 + 4;
  v123 = v142 + 2;
  v122 = (v142 + 1);
  v142 = (v155 + 32);
  v141 = (v155 + 8);
  v140 = MEMORY[0x277D84F90];
  v157 = MEMORY[0x277D84F90];
  v158 = MEMORY[0x277D84F90];
  v38 = v139;
  v39 = v137;
  v40 = v138;
  v154 = v26;
  v41 = v156;
  v135 = v29;
  v155 = v33;
  do
  {
    v164(v165, v36, v41);
    sub_22BDB9B24();
    v42 = (*v162)(v29, v26);
    if (v42 == v161)
    {
      (*v159)(v29, v26);
      (*v142)(v40, v29, v39);
      sub_22BDB8DA4();
      v43 = v153;
      v44 = (*v151)(v38, v153);
      if (v44 == v150)
      {
        (*v133)(v38, v43);
        v45 = *v149;
        v46 = v147;
        v47 = v152;
        (*v149)(v147, v38, v152);
        (*v132)(v148, v46, v47);
        v48 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD90428();
          v48 = v84;
        }

        v49 = *(v48 + 16);
        v50 = v136;
        if (v49 >= *(v48 + 24) >> 1)
        {
          sub_22BD90428();
          v50 = v136;
          v158 = v85;
        }

        else
        {
          v158 = v48;
        }

        v51 = v152;
        (*(v50 + 8))(v147, v152);
        v52 = v138;
        v53 = v137;
        (*v141)(v138, v137);
        v41 = v156;
        (*v160)(v165, v156);
        v54 = v158;
        *(v158 + 16) = v49 + 1;
        v55 = v52;
        v39 = v53;
        v40 = v55;
        v45((v54 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49), v148, v51);
        v38 = v139;
        v26 = v154;
        v29 = v135;
      }

      else
      {
        (*v141)(v40, v39);
        (*v160)(v165, v41);
        (*v134)(v38, v43);
      }

      goto LABEL_24;
    }

    if (v42 == v143)
    {
      (*v159)(v29, v26);
      v56 = v144;
      v57 = v145;
      (*v124)(v144, v29, v145);
      v58 = v146;
      sub_22BDB8F24();
      (*v123)(&v58[*(v127 + 20)], v56, v57);
      v59 = v157;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD905B8();
        v59 = v86;
      }

      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      v157 = v59;
      v26 = v154;
      v41 = v156;
      if (v61 >= v60 >> 1)
      {
        sub_22BD905B8();
        v157 = v87;
      }

      (*v122)(v144, v145);
      (*v160)(v165, v41);
      *(v157 + 16) = v61 + 1;
LABEL_23:
      sub_22BD17DA4();
      goto LABEL_24;
    }

    if (v42 == v125)
    {
      (*v159)(v29, v26);
      v62 = v128;
      v63 = v129;
      (*v118)(v128, v29, v129);
      v64 = v130;
      sub_22BDB8F24();
      (*v117)(&v64[*(v121 + 20)], v62, v63);
      v65 = v140;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD904F0();
        v65 = v88;
      }

      v140 = v65;
      v66 = *(v65 + 16);
      v26 = v154;
      v41 = v156;
      if (v66 >= *(v65 + 24) >> 1)
      {
        sub_22BD904F0();
        v140 = v89;
      }

      (*v116)(v128, v129);
      (*v160)(v165, v41);
      *(v140 + 16) = v66 + 1;
      goto LABEL_23;
    }

    if (v42 == v119)
    {
      (*v159)(v29, v26);
      v67 = v114;
      v68 = v115;
      (*v109)(v114, v29, v115);
      v69 = v111;
      sub_22BDB8DA4();
      v70 = v153;
      v71 = (*v151)(v69, v153);
      if (v71 == v150)
      {
        (*v133)(v69, v70);
        v72 = *v149;
        v73 = v112;
        v74 = v152;
        (*v149)(v112, v69, v152);
        (*v132)(v113, v73, v74);
        v75 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD90428();
          v75 = v90;
        }

        v38 = v139;
        v76 = *(v75 + 16);
        v77 = v136;
        if (v76 >= *(v75 + 24) >> 1)
        {
          sub_22BD90428();
          v77 = v136;
          v158 = v91;
        }

        else
        {
          v158 = v75;
        }

        v78 = v152;
        v79 = v77;
        (*(v77 + 8))(v112, v152);
        (*v108)(v114, v115);
        v80 = v156;
        (*v160)(v165, v156);
        v81 = v158;
        *(v158 + 16) = v76 + 1;
        v82 = v81 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
        v83 = *(v79 + 72);
        v41 = v80;
        v72((v82 + v83 * v76), v113, v78);
        v39 = v137;
        v29 = v135;
      }

      else
      {
        (*v108)(v67, v68);
        (*v160)(v165, v41);
        (*v134)(v69, v70);
        v38 = v139;
      }

      v40 = v138;
    }

    else
    {
      (*v160)(v165, v41);
      (*v110)(v29, v26);
    }

LABEL_24:
    v36 += v163;
    --v32;
  }

  while (v32);

  a3 = v107;
  v93 = v157;
  v92 = v158;
  v94 = v140;
LABEL_39:
  sub_22BB69088(v168, a3 + 16);
  sub_22BB69088(v168, &v166);
  v95 = sub_22BB8D7AC(&v166, v167);
  MEMORY[0x28223BE20](v95);
  v97 = (v106 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v98 + 16))(v97);
  v99 = sub_22BBC3980(v94, *v97, v92);
  sub_22BB32FA4(&v166);
  *(a3 + 56) = v99;
  sub_22BB69088(v168, &v166);
  v100 = sub_22BB8D7AC(&v166, v167);
  MEMORY[0x28223BE20](v100);
  v102 = (v106 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v103 + 16))(v102);
  v104 = sub_22BBC23C8(v93, *v102, _s30PlannerPromptResponseRetrieverCMa, 24, sub_22BBC7EB8);
  sub_22BB32FA4(v168);
  sub_22BB32FA4(&v166);
  *(a3 + 64) = v104;
  return a3;
}

uint64_t sub_22BBC3980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = &_s24StatementResultRetrievalVN;
  v13[4] = &off_283F76800;
  v13[0] = a2;
  _s29SystemPromptResponseRetrieverCMa();
  v5 = swift_allocObject();
  v6 = sub_22BB8D7AC(v13, &_s24StatementResultRetrievalVN);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_22BBC4DD8(a1, *v8, a3, v5);
  sub_22BB32FA4(v13);
  return v10;
}

uint64_t sub_22BBC3AD8()
{
  *(v0 - 104) = *(*(v0 - 96) + 1256);

  return swift_slowAlloc();
}

uint64_t sub_22BBC3B18(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB664();
}

uint64_t sub_22BBC3B90()
{
}

uint64_t sub_22BBC3BB8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

void *sub_22BBC3C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_encoder;
  sub_22BDB4164();
  swift_allocObject();
  *(v7 + v16) = sub_22BDB4154();
  v17 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_decoder;
  sub_22BDB4134();
  swift_allocObject();
  *(v7 + v17) = sub_22BDB4124();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v18 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation;
  v19 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  (*(*(v19 - 8) + 32))(v8 + v18, a6, v19);
  *(v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_fastCheckInjectionEnabledState) = a7;
  return v8;
}

uint64_t sub_22BBC3D3C()
{
  sub_22BB2F35C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  v3[1] = sub_22BBF90EC;
  v5 = sub_22BB37834();

  return sub_22BBC3DD8(v5, v6, v7, v1);
}

uint64_t sub_22BBC3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  v4[25] = v6;
  v7 = *(v6 - 8);
  v4[26] = v7;
  v4[27] = *(v7 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0);
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBC3F80, a3, 0);
}

uint64_t sub_22BBC442C()
{
  type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  sub_22BB3A75C();
  v2 = *(v1 + 80);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v0 + 32));
  sub_22BDB96E4();
  sub_22BB31F70();
  (*(v3 + 8))(v0 + ((v2 + 72) & ~v2));

  v4 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v4);
}

uint64_t sub_22BBC4514()
{
  sub_22BB5431C();
  if (v1 && (sub_22BB4FC1C(v0), (v2 & 1) != 0))
  {
    type metadata accessor for SpanMetadata(0);
    sub_22BB2F330();
    sub_22BB67A00();
    v3 = sub_22BB36764();
  }

  else
  {
    type metadata accessor for SpanMetadata(0);
    v3 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BBC45B4(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

void (*sub_22BBC463C(uint64_t **a1, uint64_t a2))(void **a1)
{
  v4 = sub_22BD7EA64(0x28uLL);
  *a1 = v4;
  v4[4] = sub_22BBC46A0(v4, a2);
  return sub_22BBC49D8;
}

void (*sub_22BBC46A0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = sub_22BD7EA64(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_22BBC4980(v4);
  v4[9] = sub_22BBC4730(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_22BBC4C10;
}

void (*sub_22BBC4730(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v7 = sub_22BD7EA64(0x60uLL);
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v8 = type metadata accessor for SpanMetadata(0);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  v7[4] = sub_22BD7EA64(v10);
  v7[5] = sub_22BD7EA64(v10);
  v7[6] = sub_22BD7EA64(v10);
  v11 = *(*(sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0) - 8) + 64);
  v7[7] = sub_22BD7EA64(v11);
  v7[8] = sub_22BD7EA64(v11);
  v12 = sub_22BD7EA64(v11);
  v7[9] = v12;
  v13 = *v4;
  v14 = sub_22BB4FC1C(a2);
  *(v7 + 88) = v15 & 1;
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  sub_22BBE6DE0(&qword_27D8E67F8, &qword_22BDCF4C0);
  if (sub_22BDBB4A4())
  {
    v18 = sub_22BB4FC1C(a2);
    if ((v17 & 1) == (v19 & 1))
    {
      v16 = v18;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[10] = v16;
  if (v17)
  {
    sub_22BB38958();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_22BB336D0(v12, v20, 1, v8);
  return sub_22BBC4A20;
}

uint64_t (*sub_22BBC4980(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22BBC4C6C;
}

uint64_t sub_22BBC49A8()
{

  return sub_22BDB77A4();
}

void sub_22BBC49D8(void **a1)
{
  v1 = *a1;
  v2 = sub_22BC541D0();
  v3(v2);

  free(v1);
}

void sub_22BBC4A20(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_22BC5E5C4();
    sub_22BB8ACC0();
    v6 = sub_22BB3AA28(v3, v4, v5);
    v7 = *(v2 + 88);
    v8 = *(v2 + 56);
    if (v6 != 1)
    {
      sub_22BB312A4();
      sub_22BB38958();
      if ((v7 & 1) == 0)
      {
LABEL_4:
        sub_22BB312A4();
        sub_22BB38958();
        sub_22BB4FEA0();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_22BC5E5C4();
    sub_22BB8ACC0();
    v12 = sub_22BB3AA28(v9, v10, v11);
    v7 = *(v2 + 88);
    v8 = *(v2 + 64);
    if (v12 != 1)
    {
      sub_22BB312A4();
      sub_22BB38958();
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_22BB312A4();
      sub_22BB38958();
      goto LABEL_10;
    }
  }

  sub_22BB58728(v8, &qword_27D8E64E8, &qword_22BDCE3F0);
  if (v7)
  {
    sub_22BB6B7B8();
    sub_22BDBB4C4();
  }

LABEL_10:
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  v16 = *(v2 + 48);
  v15 = *(v2 + 56);
  v18 = *(v2 + 32);
  v17 = *(v2 + 40);
  sub_22BB58728(v14, &qword_27D8E64E8, &qword_22BDCE3F0);
  free(v14);
  free(v13);
  free(v15);
  free(v16);
  free(v17);
  free(v18);

  free(v2);
}

void sub_22BBC4C10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_22BC541D0();
  v2(v3);

  free(v1);
}

uint64_t sub_22BBC4C80()
{

  return sub_22BB67984((v0 + 1496), v0 + 1648, v0 + 1656, v0 + 1664);
}

uint64_t sub_22BBC4CA0()
{
  sub_22BB2F0D4();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v1[1] = sub_22BB3C48C;

  return sub_22BBC4D30();
}

uint64_t sub_22BBC4D30()
{
  sub_22BB2F0D4();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = sub_22BB37580(v4);
  *v5 = v6;
  v5[1] = sub_22BB68FA4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200460](v3, v1, v7);
}

uint64_t sub_22BBC4DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = &_s24StatementResultRetrievalVN;
  v10[4] = &off_283F76800;
  v10[0] = a2;
  v7 = sub_22BB69FEC(v10, &_s24StatementResultRetrievalVN);
  v8 = sub_22BBC4E68(a1, *v7, a3);

  sub_22BB32FA4(v10);
  *(a4 + 16) = v8;
  return a4;
}

char *sub_22BBC4E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v123 = _s19ValueStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v123);
  v122 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = _s24ActionConfirmationResultVMa(0);
  MEMORY[0x28223BE20](v121);
  v120 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = _s20ActionStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v119);
  v118 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = _s29ParameterDisambiguationResultVMa(0);
  MEMORY[0x28223BE20](v106);
  v105 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = _s27ParameterConfirmationResultVMa(0);
  MEMORY[0x28223BE20](v104);
  v103 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  found = _s33ParameterCandidatesNotFoundResultVMa(0);
  MEMORY[0x28223BE20](found);
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = _s25ParameterNotAllowedResultVMa(0);
  MEMORY[0x28223BE20](v100);
  v99 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = _s25ParameterNeedsValueResultVMa(0);
  MEMORY[0x28223BE20](v98);
  v97 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = _s19ParameterStepResultOMa(0);
  MEMORY[0x28223BE20](v117);
  v126 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = _s23ParameterStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v116);
  v125 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = _s24ToolDisambiguationResultVMa(0);
  MEMORY[0x28223BE20](v115);
  v114 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s14ToolStepResultOMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = _s18ToolStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v112);
  v111 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22BDB43E4();
  v19 = *(v138 - 8);
  v20 = MEMORY[0x28223BE20](v138);
  v137 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v133 = &v97 - v22;
  v23 = _s23StatementStepEvaluationOMa(0);
  v24 = *(v23 - 8);
  v128 = v23;
  v129 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v134 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v135 = &v97 - v28;
  MEMORY[0x28223BE20](v27);
  v130 = &v97 - v29;
  v109 = sub_22BDB77D4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s19SystemResponseEventVMa(0) - 8;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v37 = &v97 - v36;
  v140[3] = &_s24StatementResultRetrievalVN;
  v140[4] = &off_283F76800;
  v140[0] = a2;
  v38 = *(a1 + 16);
  v131 = v19;
  if (v38)
  {
    v39 = a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v40 = *(v35 + 72);
    v132 = (v19 + 16);
    v127 = (v19 + 8);

    v41 = MEMORY[0x277D84F98];
    v124 = v37;
    while (1)
    {
      v136 = v38;
      sub_22BD17DF8();
      v42 = *v132;
      (*v132)(v137, v37, v138);
      v43 = v34;
      sub_22BD17DF8();
      swift_isUniquelyReferenced_nonNull_native();
      v139 = v41;
      sub_22BD84660();
      if (__OFADD__(*(v41 + 16), (v45 & 1) == 0))
      {
        break;
      }

      v46 = v44;
      v47 = v45;
      sub_22BBE6DE0(&qword_27D8E5C80, qword_22BDCBCE8);
      if (sub_22BDBB4A4())
      {
        sub_22BD84660();
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_48;
        }

        v46 = v48;
      }

      v41 = v139;
      if (v47)
      {
        v34 = v43;
        sub_22BD176F4();
        (*v127)(v137, v138);
        v50 = sub_22BD17E4C(v37, _s19SystemResponseEventVMa);
      }

      else
      {
        v139[(v46 >> 6) + 8] |= 1 << v46;
        v51 = v131;
        v53 = v137;
        v52 = v138;
        v42((*(v41 + 48) + *(v131 + 72) * v46), v137, v138);
        v34 = v43;
        sub_22BD17DA4();
        v54 = v53;
        v37 = v124;
        (*(v51 + 8))(v54, v52);
        v50 = sub_22BD17E4C(v37, _s19SystemResponseEventVMa);
        v55 = *(v41 + 16);
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_46;
        }

        *(v41 + 16) = v57;
      }

      v39 += v40;
      v38 = v136 - 1;
      if (v136 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    sub_22BDBB744();
    __break(1u);
    JUMPOUT(0x22BBC6118);
  }

  v41 = MEMORY[0x277D84F98];
LABEL_14:
  MEMORY[0x28223BE20](v50);
  *(&v97 - 2) = v41;
  *(&v97 - 1) = v140;
  sub_22BBC7C84();
  v59 = v58;

  v60 = v107;
  sub_22BDB6404();

  v61 = sub_22BDB77C4();
  v62 = sub_22BDBB0F4();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v139 = v64;
    *v63 = 136315138;
    v65 = MEMORY[0x2318A4D50](v59, v128);
    v67 = sub_22BB32EE0(v65, v66, &v139);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_22BB2C000, v61, v62, "Generated statement steps for system prompt resolutions: %s", v63, 0xCu);
    sub_22BB32FA4(v64);
    MEMORY[0x2318A6080](v64, -1, -1);
    MEMORY[0x2318A6080](v63, -1, -1);
  }

  (*(v108 + 8))(v60, v109);
  v68 = v133;
  v137 = *(v59 + 16);
  if (v137)
  {
    v69 = 0;
    v136 = v59 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v70 = (v131 + 16);
    v132 = (v131 + 32);
    v71 = MEMORY[0x277D84F98];
    v72 = (v131 + 8);
    while (2)
    {
      if (v69 < *(v59 + 16))
      {
        sub_22BD17DF8();
        ++v69;
        sub_22BD17DF8();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_22BD17DA4();
            sub_22BD17DF8();
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
                v82 = v99;
                sub_22BD17DA4();
                (*v70)(v68, v82 + *(v100 + 20), v138);
                v83 = _s25ParameterNotAllowedResultVMa;
                break;
              case 2u:
                v82 = v101;
                sub_22BD17DA4();
                (*v70)(v68, v82 + *(found + 20), v138);
                v83 = _s33ParameterCandidatesNotFoundResultVMa;
                break;
              case 3u:
                v82 = v103;
                sub_22BD17DA4();
                (*v70)(v68, v82 + *(v104 + 24), v138);
                v83 = _s27ParameterConfirmationResultVMa;
                break;
              case 4u:
                v82 = v105;
                sub_22BD17DA4();
                (*v70)(v68, v82 + *(v106 + 24), v138);
                v83 = _s29ParameterDisambiguationResultVMa;
                break;
              default:
                v82 = v97;
                sub_22BD17DA4();
                (*v70)(v68, v82 + *(v98 + 20), v138);
                v83 = _s25ParameterNeedsValueResultVMa;
                break;
            }

            sub_22BD17E4C(v82, v83);
            v75 = _s23ParameterStepEvaluationVMa;
            v76 = v125;
            goto LABEL_30;
          case 2u:
            v77 = v118;
            sub_22BD17DA4();
            v78 = v120;
            sub_22BD17DF8();
            sub_22BD17E4C(v77, _s20ActionStepEvaluationVMa);
            (*v132)(v68, &v78[*(v121 + 20)], v138);
            goto LABEL_31;
          case 3u:
            v79 = v122;
            sub_22BD17DA4();
            v80 = &v79[*(v123 + 24)];
            v81 = _s25ValueDisambiguationResultVMa(0);
            (*v70)(v68, &v80[*(v81 + 24)], v138);
            v75 = _s19ValueStepEvaluationVMa;
            v76 = v79;
            goto LABEL_30;
          default:
            v73 = v111;
            sub_22BD17DA4();
            sub_22BD17DF8();
            sub_22BD17E4C(v73, _s18ToolStepEvaluationVMa);
            v74 = v114;
            sub_22BD17DA4();
            (*v70)(v68, &v74[*(v115 + 24)], v138);
            v75 = _s24ToolDisambiguationResultVMa;
            v76 = v74;
LABEL_30:
            sub_22BD17E4C(v76, v75);
LABEL_31:
            sub_22BD17DF8();
            swift_isUniquelyReferenced_nonNull_native();
            v139 = v71;
            sub_22BD84660();
            if (__OFADD__(*(v71 + 16), (v85 & 1) == 0))
            {
              goto LABEL_45;
            }

            v86 = v84;
            v87 = v85;
            sub_22BBE6DE0(&qword_27D8E5C78, &qword_22BDCBCE0);
            if ((sub_22BDBB4A4() & 1) == 0)
            {
              goto LABEL_35;
            }

            sub_22BD84660();
            if ((v87 & 1) != (v89 & 1))
            {
              goto LABEL_48;
            }

            v86 = v88;
LABEL_35:
            v71 = v139;
            if (v87)
            {
              sub_22BD176F4();
              v68 = v133;
              (*v72)(v133, v138);
              sub_22BD17E4C(v130, _s23StatementStepEvaluationOMa);
            }

            else
            {
              v139[(v86 >> 6) + 8] |= 1 << v86;
              v90 = v131;
              v91 = v133;
              v92 = v138;
              (*(v131 + 16))(*(v71 + 48) + *(v131 + 72) * v86, v133, v138);
              sub_22BD17DA4();
              v93 = *(v90 + 8);
              v68 = v91;
              v93(v91, v92);
              sub_22BD17E4C(v130, _s23StatementStepEvaluationOMa);
              v94 = *(v71 + 16);
              v56 = __OFADD__(v94, 1);
              v95 = v94 + 1;
              if (v56)
              {
                goto LABEL_47;
              }

              *(v71 + 16) = v95;
            }

            if (v137 == v69)
            {
              goto LABEL_42;
            }

            continue;
        }
      }

      goto LABEL_44;
    }
  }

  v71 = MEMORY[0x277D84F98];
LABEL_42:

  sub_22BB32FA4(v140);
  return v71;
}

uint64_t sub_22BBC619C()
{
  sub_22BB30F5C();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = sub_22BB31BAC(v9);
  *v10 = v11;
  v10[1] = sub_22BBF90EC;

  return sub_22BBC6298(v4, v2, v5, v6, v8, v7);
}

uint64_t sub_22BBC6298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[179] = a6;
  v6[178] = a5;
  v6[177] = a4;
  v6[176] = a3;
  v6[175] = a2;
  v6[180] = *(sub_22BDB52C4() - 8);
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v7 = sub_22BDB5894();
  v6[183] = v7;
  v8 = *(v7 - 8);
  v6[184] = v8;
  v6[185] = *(v8 + 64);
  v6[186] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v6[187] = swift_task_alloc();
  v6[188] = swift_task_alloc();
  v6[189] = swift_task_alloc();
  v6[190] = swift_task_alloc();
  v6[191] = swift_task_alloc();
  v6[192] = swift_task_alloc();
  v6[193] = swift_task_alloc();
  v6[194] = swift_task_alloc();
  v6[195] = swift_task_alloc();
  v9 = sub_22BDB5154();
  v6[196] = v9;
  v6[197] = *(v9 - 8);
  v6[198] = swift_task_alloc();
  if (qword_28142A928 != -1)
  {
    swift_once();
  }

  v6[199] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  v6[200] = sub_22BB3CC60(&unk_28142A918, type metadata accessor for SessionControlActor, &unk_22BDCEAB4);

  v11 = sub_22BDBAE44();
  v6[201] = v11;
  v6[202] = v10;

  return MEMORY[0x2822009F8](sub_22BBC6594, v11, v10);
}

void sub_22BBC6594()
{
  v5 = *(v0 + 1408);
  v252 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  if (*(v5 + *(v252 + 28)) == 1 && (v6 = *(v0 + 1584), v7 = *(v0 + 1576), sub_22BDB5874(), v8 = sub_22BB30AE4(), v10 = v9(v8), v11 = *MEMORY[0x277D1C758], v12 = v7 + 8, v13 = sub_22BB30AE4(), v14(v13), v10 == v11))
  {
    sub_22BB40108();
    if (v15)
    {
      v16 = *(v0 + 1472);
      v17 = *(v0 + 1424);
      sub_22BB31B88();
      swift_beginAccess();
      v18 = *(v17 + 24) + 64;
      sub_22BB75520();
      v21 = v20 & v19;
      v23 = (63 - v22) >> 6;
      v375 = v16;

      v24 = 0;
      while (v21)
      {
LABEL_10:
        v26 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v27 = sub_22BB70C60(v26 | (v24 << 6));
        *(v0 + 232) = v28;
        *(v0 + 216) = v29;
        *(v0 + 200) = v30;
        *(v0 + 184) = v27;
        if (*(v0 + 216))
        {
          v31 = *(v0 + 1488);
          v389 = v31;
          v32 = *(v0 + 1464);
          v33 = *(v0 + 1416);
          v34 = sub_22BDBAEF4();
          sub_22BB30B28();
          sub_22BB336D0(v35, v36, v37, v34);
          (*(v375 + 16))(v31, v33, v32);
          v38 = (*(v375 + 80) + 88) & ~*(v375 + 80);
          v39 = swift_allocObject();
          *(v39 + 16) = 0;
          v426 = (v39 + 16);
          *(v39 + 24) = 0;
          v40 = *(v0 + 200);
          *(v39 + 32) = *(v0 + 184);
          *(v39 + 48) = v40;
          *(v39 + 64) = *(v0 + 216);
          *(v39 + 80) = *(v0 + 232);
          (*(v375 + 32))(v39 + v38, v389, v32);
          sub_22BC5E5C4();
          v41 = sub_22BB3A190();
          v43 = sub_22BB3AA28(v41, v42, v34);
          v44 = *(v0 + 1552);
          if (v43 == 1)
          {
            sub_22BB92898(v0 + 184, v0 + 912);
            sub_22BB92898(v0 + 184, v0 + 968);
            sub_22BB58728(v44, &qword_27D8E2978, &qword_22BDBD020);
          }

          else
          {
            sub_22BB92898(v0 + 184, v0 + 1024);
            sub_22BB92898(v0 + 184, v0 + 72);
            sub_22BDBAEE4();
            (*(*(v34 - 8) + 8))(v44, v34);
          }

          if (*v426)
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v45 = sub_22BDBAE44();
            v47 = v46;
            swift_unknownObjectRelease();
          }

          else
          {
            v45 = 0;
            v47 = 0;
          }

          v48 = **(v0 + 1400);

          if (v47 | v45)
          {
            v49 = v0 + 1176;
            *(v0 + 1176) = 0;
            *(v0 + 1184) = 0;
            *(v0 + 1192) = v45;
            *(v0 + 1200) = v47;
          }

          else
          {
            v49 = 0;
          }

          v50 = *(v0 + 1560);
          *(v0 + 1352) = 1;
          *(v0 + 1360) = v49;
          *(v0 + 1368) = v48;
          swift_task_create();

          sub_22BBCC320(v0 + 184);
          sub_22BB58728(v50, &qword_27D8E2978, &qword_22BDBD020);
        }
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v23)
        {
          v152 = *(v0 + 1600);

          v153 = qword_28142F3F0;
          *(v0 + 1624) = qword_28142F3F0;
          sub_22BB3CE3C(dword_22BDCF528);
          v154 = swift_task_alloc();
          *(v0 + 1632) = v154;
          *v154 = v0;
          v155 = sub_22BD7BB90;
          goto LABEL_71;
        }

        v21 = *(v18 + 8 * v25);
        ++v24;
        if (v21)
        {
          v24 = v25;
          goto LABEL_10;
        }
      }

LABEL_79:
      __break(1u);
    }

    else
    {

      sub_22BBB7088();
      v427 = swift_allocError();
      *v156 = 3;
      v157 = v427;
      swift_willThrow();
      sub_22BB2F610();
      v158 = *(v0 + 1496);
      v159, v160, v161, v162, v163, v164, v165, v166, v252, v265, v278, v292, v307, v321, v334, v348, v361, v374, *(v0 + 1488), *(v0 + 1456), *(v0 + 1448), v427, v440, v453, v466;
      v6, v167, v168, v169, v170, v171, v172, v173, v253, v266, v280, v295, v309, v322, v336, v349, v362, v377, v390, v402, v414, v428, v441, v454, v467;
      v157, v174, v175, v176, v177, v178, v179, v180, v254, v267, v281, v296, v310, v323, v337, v350, v363, v378, v391, v403, v415, v429, v442, v455, v468;
      v12, v181, v182, v183, v184, v185, v186, v187, v255, v268, v282, v297, v311, v324, v338, v351, v364, v379, v392, v404, v416, v430, v443, v456, v469;
      v11, v188, v189, v190, v191, v192, v193, v194, v256, v269, v283, v298, v312, v325, v339, v352, v365, v380, v393, v405, v417, v431, v444, v457, v470;
      v1, v195, v196, v197, v198, v199, v200, v201, v257, v270, v284, v299, v313, v326, v340, v353, v366, v381, v394, v406, v418, v432, v445, v458, v471;
      v2, v202, v203, v204, v205, v206, v207, v208, v258, v271, v285, v300, v314, v327, v341, v354, v367, v382, v395, v407, v419, v433, v446, v459, v472;
      v3, v209, v210, v211, v212, v213, v214, v215, v259, v272, v286, v301, v315, v328, v342, v355, v368, v383, v396, v408, v420, v434, v447, v460, v473;
      v4, v216, v217, v218, v219, v220, v221, v222, v260, v273, v287, v302, v316, v329, v343, v356, v369, v384, v397, v409, v421, v435, v448, v461, v474;
      v158, v223, v224, v225, v226, v227, v228, v229, v261, v274, v288, v303, v317, v330, v344, v357, v370, v385, v398, v410, v422, v436, v449, v462, v475;
      v399, v230, v231, v232, v233, v234, v235, v236, v262, v275, v289, v304, v318, v331, v345, v358, v371, v386, v399, v411, v423, v437, v450, v463, v476;
      v412, v237, v238, v239, v240, v241, v242, v243, v263, v276, v290, v305, v319, v332, v346, v359, v372, v387, v400, v412, v424, v438, v451, v464, v477;
      v425, v244, v245, v246, v247, v248, v249, v250, v264, v277, v291, v306, v320, v333, v347, v360, v373, v388, v401, v413, v425, v439, v452, v465, v478;
      sub_22BB2F09C();

      v251();
    }
  }

  else
  {
    v51 = *(v0 + 1544);
    v52 = *(v0 + 1488);
    v53 = *(v0 + 1472);
    v54 = *(v0 + 1464);
    v55 = *(v0 + 1432);
    v56 = *(v0 + 1416);
    sub_22BDBAEF4();
    sub_22BB30B28();
    v426 = v57;
    sub_22BB336D0(v58, v59, v60, v57);
    v376 = *(v53 + 16);
    v376(v52, v56, v54);
    v61 = (*(v53 + 80) + 88) & ~*(v53 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v63 = *v55;
    v64 = *(v55 + 16);
    v65 = *(v55 + 32);
    *(v62 + 80) = *(v55 + 48);
    *(v62 + 48) = v64;
    *(v62 + 64) = v65;
    *(v62 + 32) = v63;
    v335 = *(v53 + 32);
    v335(v62 + v61, v52, v54);
    sub_22BB92898(v55, v0 + 240);
    sub_22BBC7634(v51, &unk_22BDCF510, v62);
    sub_22BB58728(v51, &qword_27D8E2978, &qword_22BDBD020);
    v66 = *(*(v55 + 40) + 16);
    if (v66)
    {
      v67 = *(v0 + 1424);
      sub_22BB92300();
      v69 = *(v68 + 72);
      v293 = v69;
      v308 = v67;
      do
      {
        sub_22BB32564();
        sub_22BB33618();
        sub_22BB89970();
        swift_beginAccess();
        v70 = *(v67 + 24);
        if (*(v70 + 16) && (sub_22BB3CB98(), (v71 & 1) != 0))
        {
          v72 = *(v0 + 1488);
          v73 = *(v0 + 1464);
          v74 = *(v0 + 1416);
          sub_22BB3711C();
          v77 = v75[1];
          v76 = v75[2];
          v78 = *v75;
          *(v0 + 64) = *(v75 + 6);
          *(v0 + 32) = v77;
          *(v0 + 48) = v76;
          *(v0 + 16) = v78;
          swift_endAccess();
          sub_22BB92898(v0 + 16, v0 + 744);
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB30B28();
          sub_22BB336D0(v79, v80, v81, v426);
          v376(v72, v74, v73);
          sub_22BB3AFC4();
          v82 = swift_allocObject();
          *(v82 + 16) = 0;
          *(v82 + 24) = 0;
          v83 = *(v0 + 32);
          *(v82 + 32) = *(v0 + 16);
          *(v82 + 48) = v83;
          *(v82 + 64) = *(v0 + 48);
          *(v82 + 80) = *(v0 + 64);
          v335(v82 + v70, v72, v73);
          sub_22BC5E5C4();
          v84 = sub_22BB3A190();
          v86 = sub_22BB3AA28(v84, v85, v426);
          v87 = *(v0 + 1528);
          if (v86 == 1)
          {
            sub_22BB92898(v0 + 16, v0 + 800);
            sub_22BB58728(v87, &qword_27D8E2978, &qword_22BDBD020);
          }

          else
          {
            sub_22BB92898(v0 + 16, v0 + 856);
            sub_22BDBAEE4();
            (*(*(v426 - 1) + 8))(v87, v426);
          }

          if (*(v82 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v88 = sub_22BDBAE44();
            v90 = v89;
            swift_unknownObjectRelease();
          }

          else
          {
            v88 = 0;
            v90 = 0;
          }

          v91 = **(v0 + 1400);

          if (v90 | v88)
          {
            v92 = v0 + 1144;
            *(v0 + 1144) = 0;
            *(v0 + 1152) = 0;
            *(v0 + 1160) = v88;
            *(v0 + 1168) = v90;
          }

          else
          {
            v92 = 0;
          }

          v93 = *(v0 + 1536);
          *(v0 + 1304) = 1;
          *(v0 + 1312) = v92;
          *(v0 + 1320) = v91;
          swift_task_create();

          sub_22BBCC320(v0 + 16);
          sub_22BB58728(v93, &qword_27D8E2978, &qword_22BDBD020);
          v69 = v293;
          v67 = v308;
        }

        else
        {
          swift_endAccess();
          sub_22BB35D94();
          sub_22BB34698();
        }

        v51 += v69;
        --v66;
      }

      while (v66);
    }

    v94 = *(*(*(v0 + 1408) + *(v252 + 24)) + 16);
    if (v94)
    {
      v95 = *(v0 + 1424);
      sub_22BB92300();
      v97 = *(v96 + 72);
      v279 = v97;
      v294 = v95;
      do
      {
        sub_22BB32564();
        sub_22BB33618();
        sub_22BB89970();
        swift_beginAccess();
        v98 = *(v95 + 24);
        if (*(v98 + 16) && (sub_22BB3CB98(), (v99 & 1) != 0))
        {
          v100 = *(v0 + 1488);
          v101 = *(v0 + 1464);
          v102 = *(v0 + 1416);
          sub_22BB3711C();
          sub_22BB37A5C(v103);
          swift_endAccess();
          sub_22BB92898(v0 + 632, v0 + 520);
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB30B28();
          sub_22BB336D0(v104, v105, v106, v426);
          v376(v100, v102, v101);
          sub_22BB3AFC4();
          v107 = swift_allocObject();
          *(v107 + 16) = 0;
          *(v107 + 24) = 0;
          v108 = *(v0 + 648);
          *(v107 + 32) = *(v0 + 632);
          *(v107 + 48) = v108;
          *(v107 + 64) = *(v0 + 664);
          *(v107 + 80) = *(v0 + 680);
          v335(v107 + v98, v100, v101);
          sub_22BC5E5C4();
          v109 = sub_22BB3A190();
          v111 = sub_22BB3AA28(v109, v110, v426);
          v112 = *(v0 + 1512);
          if (v111 == 1)
          {
            sub_22BB92898(v0 + 632, v0 + 576);
            sub_22BB58728(v112, &qword_27D8E2978, &qword_22BDBD020);
          }

          else
          {
            sub_22BB92898(v0 + 632, v0 + 688);
            sub_22BDBAEE4();
            (*(*(v426 - 1) + 8))(v112, v426);
          }

          if (*(v107 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v113 = sub_22BDBAE44();
            v115 = v114;
            swift_unknownObjectRelease();
          }

          else
          {
            v113 = 0;
            v115 = 0;
          }

          v116 = **(v0 + 1400);

          if (v115 | v113)
          {
            v117 = v0 + 1112;
            *(v0 + 1112) = 0;
            *(v0 + 1120) = 0;
            *(v0 + 1128) = v113;
            *(v0 + 1136) = v115;
          }

          else
          {
            v117 = 0;
          }

          v97 = v279;
          v118 = *(v0 + 1520);
          *(v0 + 1280) = 1;
          *(v0 + 1288) = v117;
          *(v0 + 1296) = v116;
          swift_task_create();

          sub_22BBCC320(v0 + 632);
          sub_22BB58728(v118, &qword_27D8E2978, &qword_22BDBD020);
          v95 = v294;
        }

        else
        {
          swift_endAccess();
          sub_22BB35D94();
          sub_22BB34698();
        }

        v51 += v97;
        --v94;
      }

      while (v94);
    }

    v119 = *(v0 + 1424);
    sub_22BB31B88();
    swift_beginAccess();
    v120 = *(v119 + 24) + 64;
    sub_22BB75520();
    v123 = v122 & v121;
    v125 = (63 - v124) >> 6;
    v126 = 0;

    while (v123)
    {
LABEL_59:
      v128 = __clz(__rbit64(v123));
      v123 &= v123 - 1;
      v129 = sub_22BB70C60(v128 | (v126 << 6));
      *(v0 + 176) = v130;
      *(v0 + 144) = v131;
      *(v0 + 160) = v132;
      *(v0 + 128) = v129;
      if (*(v0 + 160))
      {
        v133 = *(v0 + 1488);
        v134 = *(v0 + 1464);
        v135 = *(v0 + 1416);
        sub_22BB30B28();
        sub_22BB336D0(v136, v137, v138, v426);
        v376(v133, v135, v134);
        sub_22BB3AFC4();
        v139 = swift_allocObject();
        *(v139 + 16) = 0;
        *(v139 + 24) = 0;
        v140 = *(v0 + 144);
        *(v139 + 32) = *(v0 + 128);
        *(v139 + 48) = v140;
        *(v139 + 64) = *(v0 + 160);
        *(v139 + 80) = *(v0 + 176);
        v335(v139 + v119, v133, v134);
        sub_22BC5E5C4();
        v141 = sub_22BB3A190();
        v143 = sub_22BB3AA28(v141, v142, v426);
        v144 = *(v0 + 1496);
        if (v143 == 1)
        {
          sub_22BB92898(v0 + 128, v0 + 296);
          sub_22BB92898(v0 + 128, v0 + 352);
          sub_22BB58728(v144, &qword_27D8E2978, &qword_22BDBD020);
        }

        else
        {
          sub_22BB92898(v0 + 128, v0 + 408);
          sub_22BB92898(v0 + 128, v0 + 464);
          sub_22BDBAEE4();
          v145 = sub_22BB345A8();
          v146(v145);
        }

        if (*(v139 + 16))
        {
          swift_getObjectType();
          sub_22BB32EA4();
          swift_unknownObjectRetain();
          v147 = sub_22BDBAE44();
          v149 = v148;
          swift_unknownObjectRelease();
        }

        else
        {
          v147 = 0;
          v149 = 0;
        }

        v150 = **(v0 + 1400);

        if (v149 | v147)
        {
          v151 = v0 + 1080;
          *(v0 + 1080) = 0;
          *(v0 + 1088) = 0;
          *(v0 + 1096) = v147;
          *(v0 + 1104) = v149;
        }

        else
        {
          v151 = 0;
        }

        v119 = *(v0 + 1504);
        *(v0 + 1376) = 1;
        *(v0 + 1384) = v151;
        *(v0 + 1392) = v150;
        swift_task_create();

        sub_22BBCC320(v0 + 128);
        sub_22BB58728(v119, &qword_27D8E2978, &qword_22BDBD020);
      }
    }

    while (1)
    {
      v127 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v127 >= v125)
      {
        break;
      }

      v123 = *(v120 + 8 * v127);
      ++v126;
      if (v123)
      {
        v126 = v127;
        goto LABEL_59;
      }
    }

    v152 = *(v0 + 1600);

    v153 = qword_28142F3F0;
    *(v0 + 1648) = qword_28142F3F0;
    sub_22BB3CE3C(dword_22BDCF528);
    v154 = swift_task_alloc();
    *(v0 + 1656) = v154;
    *v154 = v0;
    v155 = sub_22BBCBE68;
LABEL_71:
    v154[1] = v155;

    v426(v153, v152);
  }
}

uint64_t sub_22BBC7634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_22BB32E04();
  v8 = sub_22BBE6DE0(v6, v7);
  sub_22BB2F0C8(v8);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  sub_22BC5E5C4();
  v12 = sub_22BDBAEF4();
  v13 = sub_22BB3A190();
  if (sub_22BB3AA28(v13, v14, v12) == 1)
  {
    sub_22BB58728(v11, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    v15 = sub_22BB345A8();
    v16(v15);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_22BDBAE44();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = *v4;
  v21 = (v19 | v17);
  if (v19 | v17)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v17;
    v24[3] = v19;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v20;
  swift_task_create();
}

void sub_22BBC7868()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BBC78D0()
{
  sub_22BB2F0D4();
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if (sub_22BDBB034())
  {
    sub_22BB2F09C();

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
    sub_22BB95BC8();
    *v3 = v4;
    v5 = sub_22BB38268();

    return MEMORY[0x2822004D0](v5);
  }
}

uint64_t sub_22BBC79F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_22BDBAE44();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_22BBC78D0, v4, v6);
}

uint64_t sub_22BBC7AD0()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  sub_22BB3A9FC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB38EF4(v2);

  return sub_22BBC7E74(v4, v5, v6, v7, v8);
}

uint64_t sub_22BBC7BB0()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4, &unk_22BDCEAB4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22BBC7C84()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  _s23StatementStepEvaluationOMa(v7);
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30790(v9, v32);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BB32BC8(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  while (v4 != v3)
  {
    v19 = sub_22BDB8624();
    sub_22BB30434(v19);
    v21 = sub_22BB37CD8(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v22 = sub_22BB37720();
    if (v24)
    {
      v25 = sub_22BB33410();
      sub_22BB58728(v25, v26, &qword_22BDC1258);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v22, v23, _s23StatementStepEvaluationOMa);
      sub_22BB39134();
      v27 = sub_22BB39750();
      if ((v27 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90360();
      }

      sub_22BB36568();
      if (v28)
      {
        sub_22BB342A8();
        sub_22BD90360();
        sub_22BB69254(v31);
      }

      v29 = sub_22BB35AD4();
      sub_22BB52E3C(v29, v30);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

uint64_t sub_22BBC7E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BBC7BB0, 0, 0);
}

uint64_t sub_22BBC7EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &_s24StatementResultRetrievalVN;
  v8[4] = &off_283F76800;
  v8[0] = a2;
  v5 = sub_22BB69FEC(v8, &_s24StatementResultRetrievalVN);
  v6 = sub_22BBC8064(a1, *v5);

  sub_22BB32FA4(v8);
  *(a3 + 16) = v6;
  return a3;
}

uint64_t sub_22BBC7F9C(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB554();
}

uint64_t sub_22BBC7FC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB69FEC((v2 + 96), a2);

  return sub_22BB69088(v3, v2 + 376);
}

uint64_t sub_22BBC8004()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void *sub_22BBC8064(uint64_t a1, uint64_t a2)
{
  v121 = _s19ValueStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v121);
  v120 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = _s24ActionConfirmationResultVMa(0);
  MEMORY[0x28223BE20](v119);
  v118 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = _s20ActionStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v117);
  v116 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = _s29ParameterDisambiguationResultVMa(0);
  MEMORY[0x28223BE20](v105);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = _s27ParameterConfirmationResultVMa(0);
  MEMORY[0x28223BE20](v103);
  v102 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  found = _s33ParameterCandidatesNotFoundResultVMa(0);
  MEMORY[0x28223BE20](found);
  v100 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = _s25ParameterNotAllowedResultVMa(0);
  MEMORY[0x28223BE20](v99);
  v98 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = _s25ParameterNeedsValueResultVMa(0);
  MEMORY[0x28223BE20](v97);
  v96 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = _s19ParameterStepResultOMa(0);
  MEMORY[0x28223BE20](v115);
  v123 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = _s23ParameterStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v114);
  v122 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = _s24ToolDisambiguationResultVMa(0);
  MEMORY[0x28223BE20](v113);
  v112 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s14ToolStepResultOMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v111 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = _s18ToolStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v110);
  v109 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22BDB43E4();
  v124 = *(v129 - 8);
  v18 = MEMORY[0x28223BE20](v129);
  v108 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v136 = &v95 - v22;
  v23 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v95 - v24;
  v131 = _s23StatementStepEvaluationOMa(0);
  v130 = *(v131 - 8);
  v26 = MEMORY[0x28223BE20](v131);
  v132 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v134 = &v95 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v135 = &v95 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v95 - v33;
  MEMORY[0x28223BE20](v32);
  v106 = &v95 - v35;
  v127 = sub_22BDB77D4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = (&v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = _s9PlanEventVMa(0) - 8;
  MEMORY[0x28223BE20](v37);
  v39 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142[3] = &_s24StatementResultRetrievalVN;
  v142[4] = &off_283F76800;
  v142[0] = a2;
  sub_22BB69088(v142, v141);
  v40 = sub_22BB8D7AC(v141, v141[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v42;
  v139 = &_s24StatementResultRetrievalVN;
  v140 = &off_283F76800;
  v138 = v44;
  _s22PlannerPromptEvaluatorCMa();
  inited = swift_initStackObject();
  v46 = sub_22BB8D7AC(&v138, v139);
  MEMORY[0x28223BE20](v46);
  v48 = (&v95 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  inited[2] = *v48;
  v107 = inited + 2;
  inited[5] = &_s24StatementResultRetrievalVN;
  inited[6] = &off_283F76800;

  sub_22BB32FA4(&v138);
  sub_22BB32FA4(v141);
  v50 = *(a1 + 16);
  v133 = inited;

  v51 = 0;
  v52 = MEMORY[0x277D84F90];
LABEL_2:
  v53 = v131;
  while (v50 != v51)
  {
    sub_22BD17DF8();
    sub_22BCBBBE4(v39, v25);
    sub_22BD17E4C(v39, _s9PlanEventVMa);
    if (sub_22BB3AA28(v25, 1, v53) != 1)
    {
      sub_22BD17DA4();
      sub_22BD17DA4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD90360();
        v52 = v55;
      }

      v54 = *(v52 + 16);
      if (v54 >= *(v52 + 24) >> 1)
      {
        sub_22BD90360();
        v52 = v56;
      }

      ++v51;
      *(v52 + 16) = v54 + 1;
      sub_22BD17DA4();
      goto LABEL_2;
    }

    sub_22BB58728(v25, &qword_27D8E3E10, &qword_22BDC1258);
    ++v51;
  }

  v57 = v125;
  sub_22BDB6404();

  v58 = sub_22BDB77C4();
  v59 = sub_22BDBB0F4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v137 = v61;
    *v60 = 136315138;
    v62 = MEMORY[0x2318A4D50](v52, v53);
    v64 = sub_22BB32EE0(v62, v63, &v137);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_22BB2C000, v58, v59, "Generated statement steps for planner prompt resolutions: %s", v60, 0xCu);
    sub_22BB32FA4(v61);
    MEMORY[0x2318A6080](v61, -1, -1);
    MEMORY[0x2318A6080](v60, -1, -1);
  }

  (*(v126 + 8))(v57, v127);
  v65 = v129;
  v66 = v128;
  v127 = *(v52 + 16);
  if (v127)
  {
    v67 = 0;
    v126 = v52 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v132 = (v124 + 16);
    v68 = (v124 + 32);
    v69 = MEMORY[0x277D84F98];
    v125 = (v124 + 8);
    while (2)
    {
      if (v67 < *(v52 + 16))
      {
        sub_22BD17DF8();
        ++v67;
        sub_22BD17DF8();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_22BD17DA4();
            sub_22BD17DF8();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v80 = v108;
            switch(EnumCaseMultiPayload)
            {
              case 1:
                v81 = v98;
                sub_22BD17DA4();
                (*v132)(v80, v81 + *(v99 + 20), v65);
                v82 = _s25ParameterNotAllowedResultVMa;
                break;
              case 2:
                v81 = v100;
                sub_22BD17DA4();
                (*v132)(v80, v81 + *(found + 20), v65);
                v82 = _s33ParameterCandidatesNotFoundResultVMa;
                break;
              case 3:
                v81 = v102;
                sub_22BD17DA4();
                (*v132)(v80, v81 + *(v103 + 24), v65);
                v82 = _s27ParameterConfirmationResultVMa;
                break;
              case 4:
                v81 = v104;
                sub_22BD17DA4();
                (*v132)(v80, v81 + *(v105 + 24), v65);
                v82 = _s29ParameterDisambiguationResultVMa;
                break;
              default:
                v81 = v96;
                sub_22BD17DA4();
                (*v132)(v80, v81 + *(v97 + 20), v65);
                v82 = _s25ParameterNeedsValueResultVMa;
                break;
            }

            sub_22BD17E4C(v81, v82);
            (*v68)(v66, v80, v65);
            v72 = _s23ParameterStepEvaluationVMa;
            v73 = v122;
            goto LABEL_27;
          case 2u:
            v74 = v116;
            sub_22BD17DA4();
            v75 = v118;
            sub_22BD17DF8();
            sub_22BD17E4C(v74, _s20ActionStepEvaluationVMa);
            (*v68)(v66, &v75[*(v119 + 20)], v65);
            goto LABEL_28;
          case 3u:
            v76 = v120;
            sub_22BD17DA4();
            v77 = &v76[*(v121 + 24)];
            v78 = _s25ValueDisambiguationResultVMa(0);
            (*v132)(v66, &v77[*(v78 + 24)], v65);
            v72 = _s19ValueStepEvaluationVMa;
            v73 = v76;
            goto LABEL_27;
          default:
            v70 = v109;
            sub_22BD17DA4();
            sub_22BD17DF8();
            sub_22BD17E4C(v70, _s18ToolStepEvaluationVMa);
            v71 = v112;
            sub_22BD17DA4();
            (*v132)(v66, &v71[*(v113 + 24)], v65);
            v72 = _s24ToolDisambiguationResultVMa;
            v73 = v71;
LABEL_27:
            sub_22BD17E4C(v73, v72);
LABEL_28:
            (*v68)(v136, v66, v65);
            sub_22BD17DF8();
            swift_isUniquelyReferenced_nonNull_native();
            v137 = v69;
            sub_22BD84660();
            if (__OFADD__(*(v69 + 16), (v84 & 1) == 0))
            {
              goto LABEL_42;
            }

            v85 = v83;
            v86 = v84;
            sub_22BBE6DE0(&qword_27D8E5C78, &qword_22BDCBCE0);
            if (sub_22BDBB4A4())
            {
              sub_22BD84660();
              v65 = v129;
              if ((v86 & 1) != (v88 & 1))
              {
                goto LABEL_44;
              }

              v85 = v87;
            }

            else
            {
              v65 = v129;
            }

            v69 = v137;
            if (v86)
            {
              sub_22BD176F4();
              (*v125)(v136, v65);
              sub_22BD17E4C(v34, _s23StatementStepEvaluationOMa);
            }

            else
            {
              v137[(v85 >> 6) + 8] |= 1 << v85;
              v89 = v124;
              v90 = v136;
              (*(v124 + 16))(*(v69 + 48) + *(v124 + 72) * v85, v136, v65);
              sub_22BD17DA4();
              (*(v89 + 8))(v90, v65);
              sub_22BD17E4C(v34, _s23StatementStepEvaluationOMa);
              v91 = *(v69 + 16);
              v92 = __OFADD__(v91, 1);
              v93 = v91 + 1;
              if (v92)
              {
                goto LABEL_43;
              }

              *(v69 + 16) = v93;
            }

            v66 = v128;
            if (v127 == v67)
            {
              goto LABEL_40;
            }

            continue;
        }
      }

      break;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    sub_22BDBB744();
    __break(1u);
    JUMPOUT(0x22BBC95ACLL);
  }

  v69 = MEMORY[0x277D84F98];
LABEL_40:

  swift_setDeallocating();
  sub_22BB32FA4(v107);
  sub_22BB32FA4(v142);
  return v69;
}

void sub_22BBC95F0()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v1 = swift_task_alloc();
    v2 = sub_22BB72038(v1);
    *v2 = v3;
    v4 = sub_22BB53E38(v2);

    v5(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BBC968C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22BBBEE60(a1, a2, a3, a4);
}

uint64_t sub_22BBC96CC()
{
  v3 = *v0;
  *(v1 - 192) = v0[1];
  *(v1 - 176) = v3;
}

__n128 *sub_22BBC96FC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_22BB89C08;
  return result;
}

uint64_t sub_22BBC975C(uint64_t a1)
{
  v385 = sub_22BBE6DE0(&qword_27D8E3F70, &unk_22BDC1770);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v2);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v3);
  sub_22BB2F39C();
  v5 = sub_22BB30B8C(v4);
  v382 = type metadata accessor for FeedbackLearning.CandidateDefinition(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BB30B8C(v7);
  v401 = sub_22BDB7B44();
  sub_22BB30444();
  v363 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  sub_22BB30B8C(v10);
  v400 = sub_22BDBA014();
  sub_22BB30444();
  v362 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  sub_22BB2F14C(v13);
  v14 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v15 = sub_22BB2F0C8(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  v418 = v17;
  v394 = sub_22BBE6DE0(&qword_27D8E3F78, &qword_22BDC1780);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F39C();
  sub_22BB2F14C(v20);
  v397 = sub_22BBE6DE0(&qword_27D8E3F80, &qword_22BDC1788);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v21);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  sub_22BB30B8C(v23);
  v413 = sub_22BDB8674();
  sub_22BB30444();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v27);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v28);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v29);
  sub_22BB2F39C();
  sub_22BB30B8C(v30);
  v412 = sub_22BDB8F04();
  sub_22BB30444();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v34);
  sub_22BB2F384();
  v415 = v35;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v36);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v37);
  sub_22BB2F39C();
  sub_22BB30B8C(v38);
  v373 = sub_22BDB81A4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v39);
  sub_22BB305A8();
  v41 = sub_22BB30B8C(v40);
  v375 = type metadata accessor for FeedbackLearning.ActionValue(v41);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v42);
  sub_22BB305A8();
  sub_22BB30B8C(v43);
  v424 = sub_22BDB4C34();
  sub_22BB30444();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  sub_22BB30560();
  v421 = v47;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v48);
  sub_22BB2F384();
  v414 = v49;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v50);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v51);
  sub_22BB2F384();
  v417 = v52;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v53);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v54);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v55);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v56);
  sub_22BB2F39C();
  sub_22BB30B8C(v57);
  v390 = sub_22BDB9564();
  sub_22BB30444();
  MEMORY[0x28223BE20](v58);
  sub_22BB305A8();
  sub_22BB30B8C(v59);
  v377 = sub_22BDB9954();
  sub_22BB30444();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  sub_22BB30560();
  v419 = v63;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v64);
  sub_22BB2F39C();
  *&v410 = v65;
  v409 = sub_22BDB9B14();
  sub_22BB30444();
  v67 = v66;
  MEMORY[0x28223BE20](v68);
  sub_22BB30574();
  v71 = v70 - v69;
  v72 = *(a1 + 16);
  v411 = v32;
  v420 = v25;
  v423 = v45;
  v361 = a1;
  if (v72)
  {
    v73 = *(sub_22BDB9B54() - 8);
    v74 = a1 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v408 = v67 + 88;
    v404 = v67 + 96;
    v376 = v45 + 8;
    LODWORD(v407) = *MEMORY[0x277D1E6F8];
    LODWORD(v387) = *MEMORY[0x277D1E710];
    v406 = v61 + 32;
    v379 = v61 + 16;
    v378 = v61 + 8;
    v405 = *(v73 + 72);
    v403 = MEMORY[0x277D84F90];
    v75 = MEMORY[0x277D84F98];
    v76 = MEMORY[0x277D84F98];
    v416 = MEMORY[0x277D84F98];
    v77 = v377;
    v388 = v61;
    v78 = v409;
    while (1)
    {
      sub_22BDB9B24();
      (*v408)(v71, v78);
      sub_22BB33FE8();
      if (v87)
      {
        v79 = sub_22BB32338();
        v80(v79);
        v81 = *v406;
        v82 = v410;
        (*v406)(v410, v71, v77);
        sub_22BB30F88();
        v83(v419, v82, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD90680();
          v403 = v191;
        }

        v84 = *(v403 + 16);
        if (v84 >= *(v403 + 24) >> 1)
        {
          sub_22BD90680();
          v403 = v192;
        }

        (*(v61 + 8))(v410, v77);
        *(v403 + 16) = v84 + 1;
        sub_22BB2F390();
        v81(v86 + v85 + *(v61 + 72) * v84, v419, v77);
        goto LABEL_47;
      }

      sub_22BB33FE8();
      if (v87)
      {
        v88 = sub_22BB32338();
        v89(v88);
        sub_22BB30F88();
        v90 = v389;
        v91 = v390;
        v92(v389, v71, v390);
        sub_22BB3A950();
        sub_22BDB8174();
        sub_22BB30F88();
        v93(v374, v90, v91);
        swift_storeEnumTagMultiPayload();
        _s13ActionCreatedCMa(0);
        v94 = swift_allocObject();
        *(v94 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
        sub_22BB3A670();
        sub_22BCC7414();
        swift_isUniquelyReferenced_nonNull_native();
        v425 = v75;
        sub_22BBDAE68();
        sub_22BB35700();
        if (__OFADD__(v97, v98))
        {
          goto LABEL_173;
        }

        v99 = v95;
        v100 = v96;
        sub_22BBE6DE0(&qword_27D8E3FC0, &qword_22BDC17C8);
        sub_22BB37D08();
        if (sub_22BDBB4A4())
        {
          sub_22BBDAE68();
          if ((v100 & 1) != (v102 & 1))
          {
            goto LABEL_181;
          }

          v99 = v101;
        }

        v75 = v425;
        if (v100)
        {
          *(v425[7] + 8 * v99) = v94;

          sub_22BB30F88();
          v103 = sub_22BB58844();
          v104(v103);
          sub_22BB30F88();
          v106 = v389;
          v107 = &v419;
          goto LABEL_26;
        }

        sub_22BB37698(&v425[v99 >> 6]);
        sub_22BB38738();
        sub_22BB36D54();
        v139();
        v140 = sub_22BB36864();
        v141(v140);
        sub_22BB30F88();
        v142(v389, v390);
        v143 = *(v75 + 16);
        v144 = __OFADD__(v143, 1);
        v145 = v143 + 1;
        if (v144)
        {
          goto LABEL_175;
        }

LABEL_45:
        *(v75 + 16) = v145;
        goto LABEL_46;
      }

      sub_22BB33FE8();
      if (v108)
      {
        break;
      }

      sub_22BB33FE8();
      if (v125)
      {
        v422 = v75;
        v126 = sub_22BB32338();
        v127(v126);
        v128 = sub_22BB3A238();
        v364 = v129;
        v129(v128);
        sub_22BB3A950();
        sub_22BDB8174();
        sub_22BB30F88();
        sub_22BB69260();
        v130();
        swift_isUniquelyReferenced_nonNull_native();
        v425 = v76;
        v131 = v76;
        sub_22BBDAE68();
        sub_22BB38090();
        if (__OFADD__(v134, v135))
        {
          goto LABEL_176;
        }

        v136 = v132;
        v137 = v133;
        sub_22BBE6DE0(&qword_27D8E3FB8, &qword_22BDC17C0);
        sub_22BB37D08();
        if (sub_22BDBB4A4())
        {
          v131 = v425;
          sub_22BBDAE68();
          sub_22BB3A228();
          v61 = v388;
          if (!v87)
          {
            goto LABEL_181;
          }

          v136 = v138;
        }

        else
        {
          v61 = v388;
        }

        v76 = v425;
        if (v137)
        {
          v166 = sub_22BB6BCEC();
          (*(v137 + 40))(v166, v370, v131);
          sub_22BB30F88();
          v167 = sub_22BB58844();
          v168(v167);
          v169 = sub_22BB94E14();
          goto LABEL_58;
        }

        sub_22BB37698(&v425[v136 >> 6]);
        v173 = v423;
        v172 = v424;
        (*(v423 + 16))(v76[6] + *(v423 + 72) * v136, v371, v424);
        v174 = sub_22BB6BCEC();
        v364(v174, v370, v131);
        (*(v173 + 8))(v371, v172);
        v175 = sub_22BB94E14();
        v176(v175);
        v177 = v76[2];
        v144 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v144)
        {
          goto LABEL_179;
        }

        v76[2] = v178;
LABEL_61:
        v75 = v422;
        goto LABEL_46;
      }

      sub_22BB33FE8();
      if (v146)
      {
        v422 = v75;
        v147 = sub_22BB32338();
        v148(v147);
        v149 = sub_22BB3A238();
        v365 = v150;
        (v150)(v149);
        sub_22BB3A950();
        sub_22BDB8654();
        sub_22BB30F88();
        sub_22BB69260();
        v151();
        v152 = v416;
        swift_isUniquelyReferenced_nonNull_native();
        v425 = v152;
        sub_22BBDAE68();
        sub_22BB35700();
        if (__OFADD__(v155, v156))
        {
          goto LABEL_178;
        }

        v157 = v153;
        v158 = v154;
        sub_22BBE6DE0(&qword_27D8E3FB0, &qword_22BDC17B8);
        sub_22BB37D08();
        if (sub_22BDBB4A4())
        {
          sub_22BBDAE68();
          sub_22BB3A228();
          v61 = v388;
          if (!v87)
          {
            goto LABEL_181;
          }

          v157 = v159;
        }

        else
        {
          v61 = v388;
        }

        v179 = v425;
        v416 = v425;
        if ((v158 & 1) == 0)
        {
          sub_22BB37698(&v425[v157 >> 6]);
          v185 = v423;
          v184 = v424;
          sub_22BB36D54();
          v186();
          v187 = sub_22BB2F204();
          v188 = v413;
          v365(v187, v368, v413);
          (*(v185 + 8))(v369, v184);
          (*(v158 + 8))(v367, v188);
          v189 = v179[2];
          v144 = __OFADD__(v189, 1);
          v190 = v189 + 1;
          if (v144)
          {
            goto LABEL_180;
          }

          v179[2] = v190;
          goto LABEL_61;
        }

        v180 = sub_22BB2F204();
        v181 = v413;
        (*(v158 + 40))(v180, v368, v413);
        sub_22BB30F88();
        v182 = sub_22BB58844();
        v183(v182);
        v171 = *(v158 + 8);
        v169 = v367;
        v170 = v181;
LABEL_58:
        v171(v169, v170);
        v75 = v422;
LABEL_47:
        v78 = v409;
        goto LABEL_48;
      }

      sub_22BB30F88();
      v165(v71, v78);
LABEL_48:
      v74 += v405;
      if (!--v72)
      {
        goto LABEL_63;
      }
    }

    v109 = sub_22BB32338();
    v110(v109);
    sub_22BB30F88();
    v111 = sub_22BB3A238();
    v112(v111);
    sub_22BDB8174();
    sub_22BB30F88();
    sub_22BB69260();
    v113();
    swift_storeEnumTagMultiPayload();
    _s13ActionCreatedCMa(0);
    v114 = swift_allocObject();
    *(v114 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
    sub_22BB3A670();
    sub_22BCC7414();
    swift_isUniquelyReferenced_nonNull_native();
    v425 = v75;
    sub_22BBDAE68();
    sub_22BB35700();
    if (__OFADD__(v117, v118))
    {
      goto LABEL_174;
    }

    v119 = v115;
    v120 = v116;
    sub_22BBE6DE0(&qword_27D8E3FC0, &qword_22BDC17C8);
    sub_22BB37D08();
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v120 & 1) != (v122 & 1))
      {
        goto LABEL_181;
      }

      v119 = v121;
    }

    v75 = v425;
    if ((v120 & 1) == 0)
    {
      sub_22BB37698(&v425[v119 >> 6]);
      sub_22BB38738();
      sub_22BB36D54();
      v160();
      v161 = sub_22BB36864();
      v162(v161);
      sub_22BB30F88();
      v163(v372, v373);
      v164 = *(v75 + 16);
      v144 = __OFADD__(v164, 1);
      v145 = v164 + 1;
      if (v144)
      {
        goto LABEL_177;
      }

      goto LABEL_45;
    }

    *(v425[7] + 8 * v119) = v114;

    sub_22BB30F88();
    v123 = sub_22BB58844();
    v124(v123);
    sub_22BB30F88();
    v106 = v372;
    v107 = &v403;
LABEL_26:
    v105(v106, *(v107 - 32));
LABEL_46:
    v77 = v377;
    v61 = v388;
    goto LABEL_47;
  }

  v76 = MEMORY[0x277D84F98];
  v403 = MEMORY[0x277D84F90];
  v416 = MEMORY[0x277D84F98];
  v75 = MEMORY[0x277D84F98];
LABEL_63:
  v193 = *(v75 + 16);
  v194 = MEMORY[0x277D84F90];
  v195 = v423;
  v422 = v75;
  v391 = v76;
  if (v193)
  {
    v425 = MEMORY[0x277D84F90];
    sub_22BDBB414();
    v197 = sub_22BDB1D48();
    v199 = v198;
    v200 = 0;
    v201 = v75 + 64;
    v408 = v195 + 32;
    v409 = v195 + 16;
    v407 = v198;
    v406 = v75 + 72;
    v202 = v395;
    while ((v197 & 0x8000000000000000) == 0 && v197 < 1 << *(v75 + 32))
    {
      v203 = v197 >> 6;
      if ((*(v201 + 8 * (v197 >> 6)) & (1 << v197)) == 0)
      {
        goto LABEL_154;
      }

      if (*(v75 + 36) != v199)
      {
        goto LABEL_155;
      }

      v419 = v200;
      LODWORD(v410) = v196;
      v205 = v423;
      v204 = v424;
      (*(v423 + 16))(v202, *(v75 + 48) + *(v423 + 72) * v197, v424);
      v206 = *(*(v75 + 56) + 8 * v197);
      v207 = *(v205 + 32);
      v208 = v396;
      v207(v396, v202, v204);
      *(v208 + *(v397 + 48)) = v206;
      swift_retain_n();
      sub_22BB58728(v208, &qword_27D8E3F80, &qword_22BDC1788);
      sub_22BDBB3F4();
      sub_22BDBB424();
      v75 = v422;
      sub_22BDBB434();
      sub_22BDBB404();
      v209 = 1 << *(v75 + 32);
      if (v197 >= v209)
      {
        goto LABEL_156;
      }

      v210 = *(v201 + 8 * v203);
      if ((v210 & (1 << v197)) == 0)
      {
        goto LABEL_157;
      }

      if (*(v75 + 36) != v199)
      {
        goto LABEL_158;
      }

      v211 = v210 & (-2 << (v197 & 0x3F));
      if (v211)
      {
        v209 = __clz(__rbit64(v211)) | v197 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v212 = v203 << 6;
        v213 = v203 + 1;
        v214 = (v406 + 8 * v203);
        while (v213 < (v209 + 63) >> 6)
        {
          v216 = *v214++;
          v215 = v216;
          v212 += 64;
          ++v213;
          if (v216)
          {
            sub_22BBBFEB0(v197, v199, v410 & 1);
            v209 = __clz(__rbit64(v215)) + v212;
            goto LABEL_79;
          }
        }

        sub_22BBBFEB0(v197, v199, v410 & 1);
      }

LABEL_79:
      v196 = 0;
      v200 = (v419 + 1);
      v197 = v209;
      v199 = v407;
      if ((v419 + 1) == v193)
      {
        v194 = v425;
        v195 = v423;
        goto LABEL_81;
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
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

LABEL_81:
  v378 = v194;
  v217 = v416;
  v218 = v416[2];
  v219 = MEMORY[0x277D84F90];
  v220 = v366;
  if (v218)
  {
    v425 = MEMORY[0x277D84F90];
    sub_22BD28010(0, v218, 0);
    v221 = v425;
    v222 = sub_22BDB1D48();
    v225 = v222;
    *&v410 = v217 + 8;
    v396 = v195 + 16;
    v226 = v420;
    v395 = v420 + 2;
    v390 = v195 + 32;
    v389 = (v420 + 4);
    v387 = v223;
    v379 = (v217 + 9);
    v388 = v218;
    v416 = v217;
    while ((v225 & 0x8000000000000000) == 0 && v225 < 1 << *(v217 + 32))
    {
      if ((*(v410 + 8 * (v225 >> 6)) & (1 << v225)) == 0)
      {
        goto LABEL_160;
      }

      if (*(v217 + 9) != v223)
      {
        goto LABEL_161;
      }

      sub_22BB38DA0(v222, v223, v224);
      v227 = v394;
      v419 = v221;
      v228 = *(v394 + 48);
      v229 = v392;
      v75 = v220;
      sub_22BBDB8C8();
      v230();
      v231 = v217[7];
      v408 = v226[9];
      v409 = v225;
      v232 = v231 + v408 * v225;
      v233 = v226[2];
      v234 = v413;
      v233(&v229[v228], v232, v413);
      v235 = v393;
      (*(v423 + 32))(v393, v229, v220);
      v236 = *(v227 + 48);
      v237 = v226[4];
      v238 = &v229[v228];
      v221 = v419;
      v195 = v389;
      v237(v235 + v236, v238, v234);
      v233(v75, v235 + v236, v234);
      sub_22BB58728(v235, &qword_27D8E3F78, &qword_22BDC1780);
      v425 = v221;
      v240 = v221[2];
      v239 = v221[3];
      if (v240 >= v239 >> 1)
      {
        sub_22BD28010(v239 > 1, v240 + 1, 1);
        v234 = v413;
        v221 = v425;
      }

      v221[2] = v240 + 1;
      sub_22BB2F390();
      v237(v221 + v241 + v240 * v408, v75, v234);
      v217 = v416;
      v242 = 1 << *(v416 + 32);
      if (v409 >= v242)
      {
        goto LABEL_162;
      }

      if ((*(v410 + 8 * v407) & v406) == 0)
      {
        goto LABEL_163;
      }

      if (*(v416 + 9) != v405)
      {
        goto LABEL_164;
      }

      v220 = v75;
      sub_22BB354A4();
      if (v87)
      {
        v247 = v245 << 6;
        v248 = v245 + 1;
        v249 = (v379 + 8 * v245);
        v75 = v422;
        v195 = v423;
        v246 = v388;
        while (v248 < (v242 + 63) >> 6)
        {
          v251 = *v249++;
          v250 = v251;
          v247 += 64;
          ++v248;
          if (v251)
          {
            sub_22BBBFEB0(v243, v244, v397 & 1);
            v242 = __clz(__rbit64(v250)) + v247;
            goto LABEL_99;
          }
        }

        sub_22BBBFEB0(v243, v244, v397 & 1);
LABEL_99:
        v217 = v416;
      }

      else
      {
        sub_22BB3AD30();
        v246 = v388;
      }

      sub_22BB334C0();
      v225 = v242;
      v223 = v387;
      v226 = v420;
      if (v252 == v246)
      {
        v219 = MEMORY[0x277D84F90];
        goto LABEL_103;
      }
    }

LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v221 = MEMORY[0x277D84F90];
LABEL_103:
  v253 = v391;
  v254 = v391[2];
  v419 = v221;
  if (!v254)
  {
    v286 = v195;

    v409 = MEMORY[0x277D84F90];
    v288 = v413;
LABEL_125:
    MEMORY[0x28223BE20](v287);
    sub_22BB53D08();
    v395 = sub_22BBCCA88(v378, sub_22BCC73A8, v289);
    v290 = 0;
    v407 = (v420 + 2);
    v408 = v221[2];
    v406 = v362 + 8;
    v404 = v363 + 32;
    v397 = v363 + 16;
    v396 = v363 + 8;
    v422 = (v286 + 16);
    v416 = (v286 + 8);
    v291 = MEMORY[0x277D84F98];
    v405 = v420 + 1;
    v292 = v402;
    v410 = xmmword_22BDBCBD0;
    while (v408 != v290)
    {
      sub_22BB2F390();
      (*(v294 + 16))(v292, v221 + v293 + *(v294 + 72) * v290, v288);
      v295 = v399;
      sub_22BDB8664();
      v296 = v418;
      sub_22BDBA004();
      sub_22BB30F88();
      v297(v295, v400);
      v298 = v401;
      sub_22BB336D0(v296, 0, 1, v401);
      sub_22BB37008();
      sub_22BB3CD70(v299, v300, &qword_27D8E3E60, &qword_22BDC23E0);
      if (sub_22BB3AA28(v295, 1, v298) == 1)
      {
        v301 = 0;
      }

      else
      {
        sub_22BB30F88();
        v302 = v380;
        v303(v380, v295, v298);
        sub_22BBE6DE0(&qword_27D8E3FA8, &qword_22BDC17B0);
        _s27StatementParameterCandidateVMa(0);
        sub_22BB34094();
        v301 = sub_22BB6BAC0();
        *(v301 + 16) = v410;
        v304 = v301 + v295;
        v295 = v381;
        sub_22BDB8664();
        swift_storeEnumTagMultiPayload();
        (*v397)(v304 + *(v75 + 28), v302, v298);
        sub_22BCC7414();
        sub_22BB30F88();
        v305(v302, v298);
      }

      sub_22BB58728(v418, &qword_27D8E3E60, &qword_22BDC23E0);
      v306 = v417;
      sub_22BDB8654();
      sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
      sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
      sub_22BB34094();
      v307 = sub_22BB6BAC0();
      *(v307 + 16) = v410;
      v308 = v307 + v295;
      v309 = *(v75 + 56);
      type metadata accessor for FeedbackLearning.CandidateParameter(0);
      swift_storeEnumTagMultiPayload();
      *(v308 + v309) = v301;
      sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
      sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
      v310 = sub_22BDBAB14();
      v311 = *v422;
      v312 = v398;
      (*v422)(v398, v306, v424);
      swift_isUniquelyReferenced_nonNull_native();
      v425 = v291;
      sub_22BBDAE68();
      sub_22BB38090();
      if (__OFADD__(v315, v316))
      {
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v317 = v313;
      v75 = v314;
      v318 = sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
      if (sub_22BB5295C(v318))
      {
        sub_22BBDAE68();
        if ((v75 & 1) != (v320 & 1))
        {
          goto LABEL_181;
        }

        v317 = v319;
      }

      v291 = v425;
      if (v75)
      {
        *(v425[7] + 8 * v317) = v310;
      }

      else
      {
        sub_22BB37698(&v425[v317 >> 6]);
        v311(v291[6] + *(v423 + 72) * v317, v312, v424);
        *(v291[7] + 8 * v317) = v310;
        v321 = v291[2];
        v144 = __OFADD__(v321, 1);
        v322 = v321 + 1;
        if (v144)
        {
          goto LABEL_171;
        }

        v291[2] = v322;
      }

      v323 = *v416;
      v324 = v424;
      (*v416)(v312, v424);
      v323(v417, v324);
      sub_22BB30F88();
      v292 = v402;
      v288 = v413;
      v325(v402, v413);
      ++v290;
      v221 = v419;
    }

    MEMORY[0x28223BE20](v326);
    sub_22BB53D08();
    v327 = v409;
    v329 = sub_22BBCCDB4(v409, sub_22BCC73B0, v328);
    v330 = sub_22BBCD168(v291, v395);
    v331 = sub_22BBCD168(v329, v330);
    v417 = 0;
    v418 = v331;
    v332 = sub_22BBBB918(v361);
    v413 = sub_22BBCD890(v403, v332);

    *&v410 = sub_22BBCD974(v378);

    v333 = 0;
    v334 = *(v327 + 16);
    v335 = v412;
    v419 = (v411 + 16);
    v420 = v334;
    v336 = MEMORY[0x277D84F98];
    v337 = (v411 + 8);
    while (v420 != v333)
    {
      sub_22BB2F390();
      v340 = v415;
      (*(v339 + 16))(v415, v327 + v338 + *(v339 + 72) * v333, v335);
      v341 = v414;
      sub_22BDB8174();
      v342 = sub_22BCC29AC(v340);
      v343 = *v422;
      (*v422)(v421, v341, v424);
      swift_isUniquelyReferenced_nonNull_native();
      v425 = v336;
      sub_22BBDAE68();
      sub_22BB38090();
      if (__OFADD__(v346, v347))
      {
        goto LABEL_152;
      }

      v348 = v344;
      v349 = v345;
      v350 = sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
      if (sub_22BB5295C(v350))
      {
        sub_22BBDAE68();
        if ((v349 & 1) != (v352 & 1))
        {
          goto LABEL_181;
        }

        v348 = v351;
      }

      v336 = v425;
      if (v349)
      {
        *(v425[7] + 8 * v348) = v342;
      }

      else
      {
        sub_22BB37698(&v425[v348 >> 6]);
        v343(v336[6] + *(v423 + 72) * v348, v421, v424);
        *(v336[7] + 8 * v348) = v342;
        v353 = v336[2];
        v144 = __OFADD__(v353, 1);
        v354 = v353 + 1;
        if (v144)
        {
          goto LABEL_172;
        }

        v336[2] = v354;
      }

      v355 = *v416;
      v356 = v424;
      (*v416)(v421, v424);
      v355(v414, v356);
      v335 = v412;
      (*v337)(v415, v412);
      v333 = (v333 + 1);
    }

    v357 = sub_22BBCD168(v336, v410);
    v358 = sub_22BBCDEA4(v413, v357);
    v359 = sub_22BBCDEA4(v418, v358);

    return v359;
  }

  v425 = v219;

  sub_22BD27FC8();
  v255 = v425;
  v256 = sub_22BDB1D48();
  v259 = v253 + 16;
  v396 = v195 + 16;
  v395 = (v411 + 16);
  v394 = v195 + 32;
  v389 = v257;
  v388 = (v253 + 18);
  v390 = v254;
  v392 = v253 + 16;
  v393 = v411 + 32;
  while ((v256 & 0x8000000000000000) == 0 && v256 < 1 << *(v253 + 32))
  {
    if ((v259[v256 >> 6] & (1 << v256)) == 0)
    {
      goto LABEL_166;
    }

    if (v253[9] != v257)
    {
      goto LABEL_167;
    }

    sub_22BB38DA0(v256, v257, v258);
    v409 = v255;
    v260 = v385;
    v261 = *(v385 + 48);
    v262 = v383;
    v264 = v263;
    sub_22BBDB8C8();
    v265();
    v266 = *(v253 + 7);
    v267 = v411;
    v268 = v412;
    v269 = *(v411 + 72);
    *&v410 = v264;
    v408 = v269;
    v270 = *(v411 + 16);
    v270(v262 + v261, v266 + v269 * v264, v412);
    v271 = *(v195 + 32);
    v195 = v384;
    v271(v384, v262, v254);
    v272 = *(v260 + 48);
    v255 = v409;
    v273 = *(v267 + 32);
    (v273)(v195 + v272, v262 + v261, v268);
    v270(v386, v195 + v272, v268);
    sub_22BB58728(v195, &qword_27D8E3F70, &unk_22BDC1770);
    v425 = v255;
    v274 = *(v255 + 16);
    v75 = v274 + 1;
    if (v274 >= *(v255 + 24) >> 1)
    {
      sub_22BD27FC8();
      v255 = v425;
    }

    *(v255 + 16) = v75;
    sub_22BB2F390();
    sub_22BB69260();
    v273();
    v253 = v391;
    v275 = 1 << *(v391 + 32);
    if (v410 >= v275)
    {
      goto LABEL_168;
    }

    v259 = v392;
    if ((v392[v407] & v406) == 0)
    {
      goto LABEL_169;
    }

    if (*(v391 + 9) != v405)
    {
      goto LABEL_170;
    }

    sub_22BB354A4();
    if (v87)
    {
      v279 = v278 << 6;
      v280 = v278 + 1;
      v281 = (v388 + 8 * v278);
      v75 = v422;
      v282 = v423;
      while (v280 < (v275 + 63) >> 6)
      {
        v284 = *v281++;
        v283 = v284;
        v279 += 64;
        ++v280;
        if (v284)
        {
          sub_22BBBFEB0(v276, v277, v397 & 1);
          v275 = __clz(__rbit64(v283)) + v279;
          goto LABEL_121;
        }
      }

      sub_22BBBFEB0(v276, v277, v397 & 1);
LABEL_121:
      v195 = v282;
    }

    else
    {
      sub_22BB3AD30();
    }

    sub_22BB334C0();
    v256 = v275;
    v257 = v389;
    v254 = v390;
    if (v285 == v390)
    {
      v409 = v255;
      v286 = v195;

      v287 = swift_bridgeObjectRelease_n();
      v288 = v413;
      v221 = v419;
      goto LABEL_125;
    }
  }

LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
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
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCBD70()
{
  sub_22BB2F35C();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_22BDBB034())
    {
      if (v1)
      {
        swift_willThrow();
      }

      sub_22BB2F09C();

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
  sub_22BB95BC8();
  *v4 = v5;
  v6 = sub_22BB38268();

  return MEMORY[0x2822004D0](v6);
}

void sub_22BBCC0D0()
{
  v3 = *(v0 + 744);
  *(v2 - 128) = *(v0 + 752);
  *(v2 - 120) = v3;
  *(v2 - 104) = v1;
}

uint64_t sub_22BBCC100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB5D4();
}

uint64_t sub_22BBCC134()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22BBCC16C()
{
}

uint64_t sub_22BBCCA6C()
{

  return swift_allocObject();
}

void *sub_22BBCCA88(uint64_t a1, uint64_t (*a2)(char *, uint64_t *), uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = sub_22BBC20A8(a1);
  v12 = 0;
  v37 = a1 & 0xC000000000000001;
  v38 = v11;
  v35 = a1 & 0xFFFFFFFFFFFFFF8;
  v36 = a1;
  v39 = (v5 + 16);
  v13 = MEMORY[0x277D84F98];
  v31 = v5;
  v32 = (v5 + 8);
  while (1)
  {
    if (v38 == v12)
    {
      return v13;
    }

    if (v37)
    {
      v14 = MEMORY[0x2318A5340](v12, v36);
    }

    else
    {
      if (v12 >= *(v35 + 16))
      {
        goto LABEL_19;
      }
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    v40 = v14;
    v41 = v12;
    v43 = v14;
    v15 = v33(v10, &v43);
    v16 = *v39;
    v17 = v10;
    (*v39)(v8, v10, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v42 = v13;
    v18 = v8;
    sub_22BBDAE68();
    if (__OFADD__(v13[2], (v20 & 1) == 0))
    {
      goto LABEL_20;
    }

    v21 = v19;
    v22 = v20;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_22;
      }

      v21 = v23;
    }

    v13 = v42;
    if (v22)
    {
      *(v42[7] + 8 * v21) = v15;

      v8 = v18;
    }

    else
    {
      v42[(v21 >> 6) + 8] |= 1 << v21;
      v8 = v18;
      v16((v13[6] + *(v31 + 72) * v21), v18, v4);
      *(v13[7] + 8 * v21) = v15;
      v25 = v13[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_21;
      }

      v13[2] = v27;
    }

    v28 = *v32;
    (*v32)(v8, v4);
    v10 = v17;
    v28(v17, v4);

    v12 = v41 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

void *sub_22BBCCDB4(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_22BDB8F04();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v43 = a1;
  v16 = *(a1 + 16);
  v41 = v17 + 16;
  v46 = v16;
  v47 = (v5 + 16);
  v36 = v5;
  v38 = (v5 + 8);
  v18 = MEMORY[0x277D84F98];
  v42 = v17;
  v37 = (v17 + 8);
  v39 = v14;
  v40 = v12;
  while (1)
  {
    if (v46 == v15)
    {
      return v18;
    }

    v19 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v20 = *(v42 + 72);
    v48 = v15;
    (*(v42 + 16))(v14, v19 + v20 * v15, v11);
    v21 = v44(v10, v14);
    v22 = *v47;
    v23 = v10;
    (*v47)(v8, v10, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v49 = v18;
    v24 = v8;
    sub_22BBDAE68();
    if (__OFADD__(v18[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_15;
      }

      v27 = v29;
    }

    v18 = v49;
    if (v28)
    {
      *(v49[7] + 8 * v27) = v21;

      v8 = v24;
    }

    else
    {
      v49[(v27 >> 6) + 8] |= 1 << v27;
      v8 = v24;
      v22((v18[6] + *(v36 + 72) * v27), v24, v4);
      *(v18[7] + 8 * v27) = v21;
      v31 = v18[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_14;
      }

      v18[2] = v33;
    }

    v34 = *v38;
    (*v38)(v8, v4);
    v10 = v23;
    v34(v23, v4);
    v14 = v39;
    v11 = v40;
    (*v37)(v39, v40);
    v15 = v48 + 1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCD168(uint64_t a1, uint64_t a2)
{
  sub_22BB6B66C(a1, a2);
  v3 = sub_22BB342D4();
  sub_22BBCD1B4(v3, v4, v5, v6, v7);
  if (v2)
  {
  }

  return v9;
}

uint64_t sub_22BBCD1B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  sub_22BB2F474();
  v43 = sub_22BDB4C34();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = (v13 - v12);
  v15 = sub_22BBE6DE0(&qword_27D8E3FF0, &qword_22BDC17F8);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_22BBCD4D4(v48, v6, v5, a3);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  v19 = (v10 + 32);
  v41 = (v10 + 8);
  v42 = v10;
  v40 = v6;

  v39 = a3;

  while (1)
  {
    sub_22BBCD4D8(v18);
    v20 = sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8);
    if (sub_22BB3AA28(v18, 1, v20) == 1)
    {
      sub_22BBCD888();
    }

    v21 = *(v20 + 48);
    v22 = *v19;
    (*v19)(v14, v18, v43);
    v23 = *&v18[v21];
    v24 = *v50;
    sub_22BBDAE68();
    v26 = v25;
    sub_22BB35700();
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v30 = v27;
    if (v24[3] >= v28 + v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
        sub_22BDBB4B4();
      }
    }

    else
    {
      sub_22BD5BEA8();
      sub_22BBDAE68();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_16;
      }

      v26 = v31;
    }

    v33 = *v50;
    if (v30)
    {
      v34 = *(v33[7] + 8 * v26);

      (*v41)(v14, v43);
      *(v33[7] + 8 * v26) = v34;

      a4 = 1;
    }

    else
    {
      sub_22BB37698(&v33[v26 >> 6]);
      v22(v33[6] + *(v42 + 72) * v26, v14, v43);
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_15;
      }

      v33[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCD4D8@<X0>(uint64_t a1@<X8>)
{
  v38 = sub_22BBE6DE0(&qword_27D8E3FC8, &qword_22BDC17D0);
  MEMORY[0x28223BE20](v38);
  v4 = &v32 - v3;
  v37 = sub_22BDB4C34();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E4000, &qword_22BDC1808);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v33 = v4;
  v39 = v17;
  if (v19)
  {
    v35 = v11;
    v36 = a1;
    v20 = v18;
LABEL_7:
    v34 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = v37;
    (*(v5 + 16))(v7, *(v15 + 48) + *(v5 + 72) * v21, v37);
    v23 = *(*(v15 + 56) + 8 * v21);
    v24 = *(v38 + 48);
    v25 = v7;
    v26 = v38;
    (*(v5 + 32))(v14, v25, v22);
    *&v14[v24] = v23;
    sub_22BB336D0(v14, 0, 1, v26);

    v27 = v34;
    v11 = v35;
    a1 = v36;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v39;
    v1[3] = v18;
    v1[4] = v27;
    v28 = v1[5];
    sub_22BB6BEE0(v14, v11, &qword_27D8E4000, &qword_22BDC1808);
    v29 = 1;
    if (sub_22BB3AA28(v11, 1, v26) != 1)
    {
      v30 = v33;
      sub_22BB6BEE0(v11, v33, &qword_27D8E3FC8, &qword_22BDC17D0);
      v28(v30);
      sub_22BB58728(v30, &qword_27D8E3FC8, &qword_22BDC17D0);
      v29 = 0;
    }

    v31 = sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8);
    return sub_22BB336D0(a1, v29, 1, v31);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v26 = v38;
        sub_22BB336D0(&v32 - v13, 1, 1, v38);
        v27 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v35 = v11;
        v36 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BBCD82C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BBE6DE0(a3, a4);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BBCD890(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v8 = MEMORY[0x277D84F98];
  v5 = *(a1 + 16);
  while (v5 != v4)
  {
    v6 = *(sub_22BDB9954() - 8);
    sub_22BCC14D4(&v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4++, a2);
  }

  return v8;
}

void *sub_22BBCD974(uint64_t a1)
{
  v46 = sub_22BDB81A4();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22BDB9564();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FeedbackLearning.ActionValue(0);
  MEMORY[0x28223BE20](v49);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB4C34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = sub_22BBC20A8(a1);
  v15 = 0;
  v52 = a1 & 0xC000000000000001;
  v53 = v14;
  v50 = a1 & 0xFFFFFFFFFFFFFF8;
  v51 = a1;
  v41 = (v4 + 8);
  v42 = (v4 + 32);
  v39 = (v2 + 8);
  v40 = (v2 + 32);
  v54 = (v9 + 16);
  v16 = MEMORY[0x277D84F98];
  v38 = v9;
  v47 = (v9 + 8);
  for (i = v7; ; v7 = i)
  {
    if (v53 == v15)
    {
      return v16;
    }

    if (v52)
    {
      MEMORY[0x2318A5340](v15, v51);
    }

    else
    {
      if (v15 >= *(v50 + 16))
      {
        goto LABEL_22;
      }
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_22BCC74B0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = v15;
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v45;
      v19 = v46;
      (*v40)(v45, v7, v46);
      sub_22BDB8174();
      v20 = v39;
    }

    else
    {
      v18 = v43;
      v19 = v44;
      (*v42)(v43, v7, v44);
      sub_22BDB8174();
      v20 = v41;
    }

    (*v20)(v18, v19);
    v21 = sub_22BCC20E8();
    v22 = *v54;
    v23 = v13;
    v24 = v13;
    v25 = v8;
    (*v54)(v56, v24, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v57 = v16;
    sub_22BBDAE68();
    if (__OFADD__(v16[2], (v27 & 1) == 0))
    {
      goto LABEL_23;
    }

    v28 = v26;
    v29 = v27;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_25;
      }

      v28 = v30;
    }

    v16 = v57;
    if (v29)
    {
      *(v57[7] + 8 * v28) = v21;

      v8 = v25;
    }

    else
    {
      v57[(v28 >> 6) + 8] |= 1 << v28;
      v8 = v25;
      v22((v16[6] + *(v38 + 72) * v28), v56, v25);
      *(v16[7] + 8 * v28) = v21;
      v32 = v16[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_24;
      }

      v16[2] = v34;
    }

    v35 = *v47;
    (*v47)(v56, v8);
    v13 = v23;
    v35(v23, v8);

    v15 = v55 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCDEA4(uint64_t a1, uint64_t a2)
{
  sub_22BB6B66C(a1, a2);
  v3 = sub_22BB342D4();
  sub_22BBCDEF0(v3, v4, v5, v6, v7);
  if (v2)
  {
  }

  return v9;
}

uint64_t sub_22BBCDEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v120 = a2;
  v9 = sub_22BBE6DE0(&qword_27D8E3FD8, &qword_22BDC17E0);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = sub_22BB30B8C(&v96 - v11);
  v97 = type metadata accessor for FeedbackLearning.CandidateParameter(v12);
  sub_22BB30444();
  v117 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  sub_22BB2F14C(v16);
  v17 = sub_22BBE6DE0(&qword_27D8E3FE0, &qword_22BDC17E8);
  v18 = sub_22BB2F0C8(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F39C();
  sub_22BB2F14C(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E3FE8, &qword_22BDC17F0);
  sub_22BB2F0C8(v21);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  v24 = &v96 - v23;
  v25 = sub_22BDB4C34();
  sub_22BB30444();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22BB30574();
  v31 = v30 - v29;
  v32 = sub_22BBE6DE0(&qword_27D8E3FF0, &qword_22BDC17F8);
  sub_22BB2F0C8(v32);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB2F14C(&v96 - v34);
  sub_22BBCD4D4(v126, a1, v120, a3);
  v122 = v126[0];
  v123 = v126[1];
  v124 = v126[2];
  v125 = v127;
  v109 = (v27 + 32);
  v105 = v27;
  v101 = v27 + 8;
  v35 = v31;
  v99 = a1;

  v98 = a3;

  v104 = a5;
  v118 = v24;
  v103 = v25;
  v102 = v31;
LABEL_2:
  while (2)
  {
    sub_22BB3A950();
    sub_22BBCD4D8(v36);
    v37 = sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8);
    if (sub_22BB3AA28(a3, 1, v37) != 1)
    {
      v38 = *(v37 + 48);
      v39 = *v109;
      (*v109)(v35, a3, v25);
      v110 = *(a3 + v38);
      v40 = *a5;
      sub_22BBDAE68();
      sub_22BB35700();
      if (__OFADD__(v42, v43))
      {
        goto LABEL_40;
      }

      a3 = v41;
      if (*(v40 + 24) >= v42 + v43)
      {
        if ((a4 & 1) == 0)
        {
          v94 = v44;
          sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
          sub_22BDBB4B4();
          v44 = v94;
        }
      }

      else
      {
        sub_22BD5BEA8();
        sub_22BBDAE68();
        sub_22BB3A228();
        if (!v46)
        {
          goto LABEL_42;
        }

        v44 = v45;
      }

      v47 = *a5;
      if ((a3 & 1) == 0)
      {
        v90 = v44;
        sub_22BB37698(&v47[v44 >> 6]);
        v39(v47[6] + *(v105 + 72) * v90, v35, v25);
        *(v47[7] + 8 * v90) = v110;
        v91 = v47[2];
        v88 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (!v88)
        {
          v47[2] = v92;
          a4 = 1;
          continue;
        }

        goto LABEL_41;
      }

      v107 = *a5;
      v48 = v47[7];
      v108 = v44;
      a3 = *(v48 + 8 * v44);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = a3;
      v50 = v110;
      sub_22BBCD4D4(v128, v110, sub_22BCC6CE0, 0);
      v112 = v133;
      v51 = v128[1];
      v113 = v128[0];
      v52 = v130;
      v53 = v131;
      v111 = v132;
      v106 = v129;
      v54 = (v129 + 64) >> 6;

LABEL_12:
      v55 = v53;
      v56 = v52;
      LODWORD(v120) = isUniquelyReferenced_nonNull_native;
      v115 = v52;
      v114 = v53;
      if (v53)
      {
LABEL_17:
        v119 = (v55 - 1) & v55;
        v58 = __clz(__rbit64(v55)) | (v56 << 6);
        v59 = v113;
        sub_22BB37008();
        sub_22BCC74B0();
        v60 = *(*(v59 + 56) + 8 * v58);
        v61 = *(v9 + 48);
        sub_22BB31CEC();
        sub_22BB37008();
        sub_22BCC7414();
        *(v50 + v61) = v60;
        sub_22BB336D0(v50, 0, 1, v9);

        v57 = v56;
        goto LABEL_18;
      }

      v57 = v52;
      v50 = v116;
      while (1)
      {
        v56 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        if (v56 >= v54)
        {
          sub_22BB336D0(v116, 1, 1, v9);
          v119 = 0;
LABEL_18:
          sub_22BB37008();
          sub_22BB6BEE0(v62, v63, &qword_27D8E3FE0, &qword_22BDC17E8);
          v64 = 1;
          if (sub_22BB3AA28(v50, 1, v9) != 1)
          {
            sub_22BB37008();
            sub_22BB6BEE0(v65, v66, &qword_27D8E3FD8, &qword_22BDC17E0);
            v111(v50);
            sub_22BB58728(v50, &qword_27D8E3FD8, &qword_22BDC17E0);
            v64 = 0;
          }

          v67 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
          v68 = v118;
          sub_22BB336D0(v118, v64, 1, v67);
          v69 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
          if (sub_22BB3AA28(v68, 1, v69) == 1)
          {
            sub_22BBCD888();

            sub_22BB30F88();
            v35 = v102;
            v25 = v103;
            v93(v102, v103);
            *(*(v107 + 56) + 8 * v108) = a3;

            a4 = 1;
            a5 = v104;
            goto LABEL_2;
          }

          v70 = *(v69 + 48);
          sub_22BB31CEC();
          v71 = v121;
          sub_22BCC7414();
          v50 = *(v68 + v70);
          v72 = sub_22BD84634(v71);
          sub_22BB38090();
          v82 = v80 + v81;
          if (__OFADD__(v80, v81))
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v83 = v73;
          if (*(a3 + 24) < v82)
          {
            sub_22BD5C114(v82, v120 & 1, v74, v75, v76, v77, v78, v79, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
            v84 = sub_22BD84634(v121);
            if ((v83 & 1) == (v85 & 1))
            {
              v72 = v84;
              goto LABEL_27;
            }

            while (1)
            {
LABEL_42:
              sub_22BDBB744();
              __break(1u);
            }
          }

          if ((v120 & 1) == 0)
          {
            sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
            sub_22BDBB4B4();
          }

LABEL_27:
          a3 = v134;
          if (v83)
          {
            v86 = *(*(v134 + 56) + 8 * v72);

            sub_22BCC73B8(v121);
            *(*(a3 + 56) + 8 * v72) = v86;

            goto LABEL_31;
          }

          sub_22BB37698(v134 + 8 * (v72 >> 6));
          sub_22BB31CEC();
          sub_22BCC7414();
          *(*(a3 + 56) + 8 * v72) = v50;
          v87 = *(a3 + 16);
          v88 = __OFADD__(v87, 1);
          v89 = v87 + 1;
          if (v88)
          {
            goto LABEL_39;
          }

          *(a3 + 16) = v89;
LABEL_31:
          isUniquelyReferenced_nonNull_native = 1;
          v52 = v57;
          v53 = v119;
          goto LABEL_12;
        }

        v55 = *(v51 + 8 * v56);
        ++v57;
        if (v55)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    break;
  }

  sub_22BBCD888();
}

uint64_t sub_22BBCE8A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5(v4);
  sub_22BB2F330();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22BBCE8FC()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB30ED8();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

uint64_t sub_22BBCE950(uint64_t a1, uint64_t a2, char *a3)
{
  v153 = a1;
  v140 = sub_22BDB8F04();
  sub_22BB30444();
  v156 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v155 = v6;
  v7 = sub_22BBE6DE0(&qword_27D8E4368, &qword_22BDC2FC8);
  sub_22BB2F0C8(v7);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = sub_22BB30B8C(&v139 - v9);
  v158 = _s18ToolStepEvaluationVMa(v10);
  sub_22BB30444();
  v143 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F39C();
  v142 = v14;
  v15 = sub_22BBE6DE0(&qword_27D8E4370, &qword_22BDC2FD0);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  v18 = &v139 - v17;
  v159 = _s23ParameterStepEvaluationVMa(0);
  sub_22BB30444();
  v144 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v21);
  sub_22BB2F39C();
  v23 = sub_22BB30B8C(v22);
  v147 = _s22ToolCandidateEvaluatorVMa(v23);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v24);
  sub_22BB305A8();
  v154 = v25;
  v26 = sub_22BBE6DE0(&qword_27D8E4378, &qword_22BDC2FD8);
  sub_22BB2F0C8(v26);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  v29 = &v139 - v28;
  v160 = _s19ValueStepEvaluationVMa(0);
  sub_22BB30444();
  v146 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v32);
  sub_22BB2F39C();
  v34 = sub_22BB30B8C(v33);
  v145 = _s23StatementStepEvaluationOMa(v34);
  sub_22BB30444();
  MEMORY[0x28223BE20](v35);
  sub_22BB30C74();
  v38 = v36 - v37;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v139 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = (&v139 - v43);
  v152 = sub_22BDB77D4();
  sub_22BB30444();
  v151 = v45;
  MEMORY[0x28223BE20](v46);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v47);
  v49 = &v139 - v48;
  v167 = _s19TranscriptRetrieverVMa(0);
  v168 = &off_283F7A608;
  sub_22BB8B8A0(&v166, v50, v51, v52, v53, v54, v55, v56);
  sub_22BBCE8FC();
  v161 = a3;
  v157 = sub_22BB69FEC(&a3[OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator], *&a3[OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator + 24]);
  v58 = v167;
  v57 = v168;
  v59 = sub_22BB69FEC(&v166, v167);
  v164 = v58;
  v60 = v57[1];
  v61 = v49;
  v165 = v60;
  v69 = sub_22BB8B8A0(v163, v62, v63, v64, v65, v66, v67, v68);
  (*(*(v58 - 8) + 16))(v69, v59, v58);
  v70 = *v157;
  v71 = sub_22BB69FEC(v163, v164);
  v72 = sub_22BBCF898(v153, v71, v70);
  sub_22BB32FA4(v163);
  sub_22BDB6404();

  v157 = v61;
  v73 = sub_22BDB77C4();
  LODWORD(v70) = sub_22BDBB0F4();

  LODWORD(v141) = v70;
  v74 = os_log_type_enabled(v73, v70);
  v75 = &loc_22BDBC000;
  if (v74)
  {
    sub_22BB354D0();
    v76 = swift_slowAlloc();
    sub_22BB2F440();
    v139 = swift_slowAlloc();
    v163[0] = v139;
    *v76 = 136315138;
    v77 = MEMORY[0x2318A4D50](v72, v145);
    v145 = v73;
    v79 = sub_22BB32EE0(v77, v78, v163);

    v80 = v76;
    *(v76 + 4) = v79;
    v81 = v145;
    v75 = v80;
    _os_log_impl(&dword_22BB2C000, v145, v141, "Generated parameter step evaluations: %s", v80, 0xCu);
    sub_22BB32FA4(v139);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {
  }

  v145 = *(v151 + 8);
  (v145)(v157, v152);
  v82 = *(v72 + 16);

  v83 = 0;
  v157 = MEMORY[0x277D84F90];
  while (v82 != v83)
  {
    if (v83 >= *(v72 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_22BB365FC();
    sub_22BBCE8FC();
    v75 = v161;
    sub_22BCD2384();
    sub_22BB372A8();
    sub_22BB344AC(v44, v84);
    if (sub_22BB3AA28(v29, 1, v160) == 1)
    {
      sub_22BB58728(v29, &qword_27D8E4378, &qword_22BDC2FD8);
      ++v83;
    }

    else
    {
      sub_22BB37D34();
      v141 = v85;
      sub_22BCE17CC();
      sub_22BCE17CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD90A70();
        v157 = v88;
      }

      v75 = v157[2];
      v86 = v157[3];
      v87 = v75 + 1;
      if (v75 >= v86 >> 1)
      {
        sub_22BB2F158(v86);
        v141 = v89;
        sub_22BD90A70();
        v87 = v141;
        v157 = v90;
      }

      ++v83;
      v157[2] = v87;
      sub_22BB2F390();
      sub_22BB37D34();
      sub_22BCE17CC();
    }
  }

  v75 = v161;

  v91 = 0;
  v160 = MEMORY[0x277D84F90];
  v44 = &qword_22BDC2FD0;
  while (v82 != v91)
  {
    if (v91 >= *(v72 + 16))
    {
      goto LABEL_48;
    }

    sub_22BB365FC();
    sub_22BBCE8FC();
    v75 = v161;
    sub_22BCD244C();
    sub_22BB372A8();
    sub_22BB344AC(v42, v92);
    if (sub_22BB3AA28(v18, 1, v159) == 1)
    {
      sub_22BB58728(v18, &qword_27D8E4370, &qword_22BDC2FD0);
      ++v91;
    }

    else
    {
      sub_22BB2F518();
      v150 = v93;
      sub_22BCE17CC();
      sub_22BCE17CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD909A8();
        v160 = v96;
      }

      v75 = *(v160 + 16);
      v94 = *(v160 + 24);
      v95 = v75 + 1;
      if (v75 >= v94 >> 1)
      {
        sub_22BB2F158(v94);
        v150 = v97;
        sub_22BD909A8();
        v95 = v150;
        v160 = v98;
      }

      ++v91;
      *(v160 + 16) = v95;
      sub_22BB2F390();
      sub_22BB2F518();
      sub_22BCE17CC();
    }
  }

  v99 = v161;

  v75 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_toolbox;
  sub_22BDB9C14();
  sub_22BB30ED8();
  (*(v100 + 16))(v154, &v75[v99]);

  v101 = 0;
  v102 = MEMORY[0x277D84F90];
  v18 = &qword_22BDC2FC8;
LABEL_25:
  v44 = v149;
  while (v82 != v101)
  {
    if (v101 >= *(v72 + 16))
    {
      goto LABEL_49;
    }

    sub_22BB365FC();
    sub_22BBCE8FC();
    v75 = v161;
    sub_22BCD22C0();
    sub_22BB372A8();
    sub_22BB344AC(v38, v103);
    if (sub_22BB3AA28(v44, 1, v158) != 1)
    {
      sub_22BCE17CC();
      sub_22BCE17CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD908E0();
        v102 = v106;
      }

      v105 = *(v102 + 16);
      v104 = *(v102 + 24);
      v75 = (v105 + 1);
      if (v105 >= v104 >> 1)
      {
        sub_22BB2F158(v104);
        sub_22BD908E0();
        v102 = v107;
      }

      ++v101;
      *(v102 + 16) = v75;
      sub_22BB2F390();
      sub_22BCE17CC();
      goto LABEL_25;
    }

    sub_22BB58728(v44, &qword_27D8E4368, &qword_22BDC2FC8);
    ++v101;
  }

  *(v154 + *(v147 + 20)) = v102;
  v108 = sub_22BBD05C4();
  v109 = v108[2];
  if (v109)
  {
    v163[0] = MEMORY[0x277D84F90];
    sub_22BD28118(0, v109, 0);
    v110 = 0;
    v111 = v163[0];
    sub_22BB2F390();
    v159 = v108 + v112;
    v158 = v113 + 16;
    v44 = (v113 + 8);
    v75 = v140;
    while (v110 < v108[2])
    {
      v114 = v155;
      (*(v156 + 16))(v155, v159 + *(v156 + 72) * v110, v75);
      sub_22BCD1744(v114, v157, v160, &v162);
      (*v44)(v114, v75);
      v18 = v162;
      v163[0] = v111;
      v116 = *(v111 + 16);
      v115 = *(v111 + 24);
      v117 = v111;
      if (v116 >= v115 >> 1)
      {
        v118 = sub_22BB2F158(v115);
        sub_22BD28118(v118, v116 + 1, 1);
        v75 = v140;
        v117 = v163[0];
      }

      ++v110;
      *(v117 + 16) = v116 + 1;
      *(v117 + 8 * v116 + 32) = v18;
      v111 = v117;
      if (v109 == v110)
      {

        goto LABEL_43;
      }
    }

LABEL_50:
    __break(1u);
    (*v44)(v18, v75);

    __break(1u);
    return result;
  }

  v111 = MEMORY[0x277D84F90];
LABEL_43:
  v119 = sub_22BBD4D00(v153);
  MEMORY[0x28223BE20](v119);
  sub_22BB36D34();
  *(v120 - 16) = v154;
  v122 = sub_22BBD544C(sub_22BCE1740, v121, v119);

  v123 = v148;
  sub_22BDB6404();

  v124 = sub_22BDB77C4();
  v125 = sub_22BDBB0F4();

  v126 = os_log_type_enabled(v124, v125);
  v127 = v152;
  if (v126)
  {
    sub_22BB354D0();
    v128 = swift_slowAlloc();
    sub_22BB2F440();
    v129 = swift_slowAlloc();
    v163[0] = v129;
    *v128 = 136315138;
    v130 = sub_22BBE6DE0(&qword_27D8E4380, &unk_22BDC2FE0);
    v131 = MEMORY[0x2318A4D50](v111, v130);
    v133 = sub_22BB32EE0(v131, v132, v163);

    *(v128 + 4) = v133;
    _os_log_impl(&dword_22BB2C000, v124, v125, "Generated candidate outcomes: %s", v128, 0xCu);
    sub_22BB32FA4(v129);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v134 = v148;
  }

  else
  {

    v134 = v123;
  }

  (v145)(v134, v127);
  v135 = sub_22BBD55A0(v111);

  v136 = sub_22BBD55A0(v122);

  v163[0] = v135;
  sub_22BBD5D38(v136);
  v137 = v163[0];
  sub_22BB344AC(v154, _s22ToolCandidateEvaluatorVMa);
  sub_22BB32FA4(&v166);
  return v137;
}

uint64_t _s22ToolCandidateEvaluatorVMa(uint64_t a1)
{
  result = qword_28142B9F0;
  if (!qword_28142B9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBCF898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v56 = sub_22BDB43E4();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22BDB87F4();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22BDB9B14();
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = _s20StatementResultEventVMa(0);
  v52 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22BDB9B54();
  v16 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[3] = _s19TranscriptRetrieverVMa(0);
  v67[4] = &off_283F7A5F8;
  sub_22BB8B8A0(v67, v19, v20, v21, v22, v23, v24, v25);
  v26 = sub_22BBCE8FC();
  v27 = *(a1 + 16);
  if (v27)
  {
    v29 = *(v16 + 16);
    v28 = v16 + 16;
    v30 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v60 = *(v28 + 56);
    v61 = v29;
    v59 = (v8 + 88);
    v58 = *MEMORY[0x277D1E798];
    v57 = (v28 - 8);
    v51 = (v8 + 8);
    v50 = (v8 + 96);
    v49 = (v6 + 32);
    v47 = (v4 + 32);
    v65 = MEMORY[0x277D84F90];
    v31 = v64;
    v62 = v28;
    v48 = v10;
    do
    {
      v61(v18, v30, v31);
      sub_22BDB9B24();
      v32 = (*v59)(v10, v66);
      if (v32 == v58)
      {
        (*v50)(v10, v66);
        v33 = *v49;
        v34 = v53;
        v35 = v10;
        v36 = v54;
        (*v49)(v53, v35, v54);
        v37 = v55;
        sub_22BDB8F24();
        (*v57)(v18, v64);
        (*v47)(v13, v37, v56);
        v38 = v34;
        v39 = v36;
        v10 = v48;
        v31 = v64;
        v33(&v13[*(v14 + 20)], v38, v39);
        sub_22BB336D0(v13, 0, 1, v14);
      }

      else
      {
        (*v57)(v18, v31);
        sub_22BB336D0(v13, 1, 1, v14);
        (*v51)(v10, v66);
      }

      if (sub_22BB3AA28(v13, 1, v14) == 1)
      {
        v26 = sub_22BB58728(v13, &qword_27D8E3DE8, &unk_22BDC1220);
      }

      else
      {
        sub_22BCE17CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD90298();
          v65 = v41;
        }

        v40 = *(v65 + 16);
        if (v40 >= *(v65 + 24) >> 1)
        {
          sub_22BD90298();
          v65 = v42;
        }

        *(v65 + 16) = v40 + 1;
        v26 = sub_22BCE17CC();
      }

      v30 += v60;
      --v27;
    }

    while (v27);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v26);
  *(&v46 - 2) = v46;
  *(&v46 - 1) = v67;
  sub_22BBD03D4();
  v44 = v43;

  sub_22BB32FA4(v67);
  return v44;
}

uint64_t sub_22BBCFFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = sub_22BB30F68();
  v12(v11);
  sub_22BB314BC();
  if (*(v14 + 84) == a3)
  {
    v15 = v13;
    v16 = v6;
  }

  else
  {
    v15 = a6(0);
    v16 = v6 + *(a4 + 20);
  }

  return sub_22BB336D0(v16, a2, a2, v15);
}

uint64_t sub_22BBD0068(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_22BDB43E4();
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = a1;
  }

  else
  {
    v11 = a5(0);
    v12 = a1 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBD011C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_22BB30F68();
  _s28StatementResolutionReferenceOMa(v10);
  sub_22BB314BC();
  if (*(v12 + 84) == a3)
  {
    v13 = v11;
    v14 = v5;
  }

  else
  {
    v13 = a5(0);
    v14 = v5 + *(a4 + 20);
  }

  return sub_22BB336D0(v14, a2, a2, v13);
}

uint64_t sub_22BBD01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = sub_22BB30F68();
  v10(v9);
  sub_22BB314BC();
  if (*(v12 + 84) == a2)
  {
    v13 = v11;
    v14 = v5;
  }

  else
  {
    v13 = a5(0);
    v14 = v5 + *(a3 + 20);
  }

  return sub_22BB3AA28(v14, a2, v13);
}

uint64_t sub_22BBD0294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_22BDB43E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = a4(0);
    v10 = a1 + *(a3 + 20);
  }

  return sub_22BB3AA28(v10, a2, v9);
}

uint64_t sub_22BBD0338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_22BB30F68();
  _s28StatementResolutionReferenceOMa(v8);
  sub_22BB314BC();
  if (*(v10 + 84) == a2)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = a4(0);
    v12 = v4 + *(a3 + 20);
  }

  return sub_22BB3AA28(v12, a2, v11);
}

void sub_22BBD03D4()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  _s23StatementStepEvaluationOMa(v7);
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30790(v9, v32);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BB32BC8(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  while (v4 != v3)
  {
    v19 = _s20StatementResultEventVMa(0);
    sub_22BB30434(v19);
    v21 = sub_22BB37CD8(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v22 = sub_22BB37720();
    if (v24)
    {
      v25 = sub_22BB33410();
      sub_22BB58728(v25, v26, &qword_22BDC1258);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v22, v23, _s23StatementStepEvaluationOMa);
      sub_22BB39134();
      v27 = sub_22BB39750();
      if ((v27 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90360();
      }

      sub_22BB36568();
      if (v28)
      {
        sub_22BB342A8();
        sub_22BD90360();
        sub_22BB69254(v31);
      }

      v29 = sub_22BB35AD4();
      sub_22BB52E3C(v29, v30);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void *sub_22BBD05C4()
{
  sub_22BB30F68();
  v69 = sub_22BDB4C34();
  sub_22BB30444();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v79 = v4;
  sub_22BB2F120();
  v5 = sub_22BDB9B14();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v11 = v10 - v9;
  v78 = sub_22BDB8F04();
  sub_22BB30444();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v57 - v18;
  v70 = sub_22BDB9B54();
  sub_22BB30444();
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  v71 = v22;
  v23 = *(v0 + 16);
  if (!v23)
  {
    v27 = MEMORY[0x277D84F98];
LABEL_18:
    v80 = sub_22BBD0BE0(v27);

    sub_22BBD0CFC(&v80);

    return v80;
  }

  v77 = *(v21 + 16);
  sub_22BB2F390();
  v25 = v0 + v24;
  v73 = *(v26 + 56);
  v76 = v7 + 88;
  v75 = *MEMORY[0x277D1E830];
  v74 = (v26 - 8);
  v67 = v7 + 96;
  v68 = v7 + 8;
  v72 = (v13 + 32);
  v66 = (v13 + 16);
  v57[2] = v2 + 16;
  v58 = v2;
  v62 = v13 + 8;
  v63 = (v2 + 8);
  v27 = MEMORY[0x277D84F98];
  v65 = v13;
  v57[1] = v13 + 40;
  v29 = v70;
  v28 = v71;
  v61 = v5;
  v60 = v11;
  v64 = v19;
  v59 = v26;
  while (1)
  {
    v77(v28, v25, v29);
    sub_22BDB9B24();
    v30 = sub_22BB6BAE8();
    v32 = v31(v30);
    if (v32 != v75)
    {
      (*v74)(v28, v29);
      v46 = sub_22BB6BAE8();
      v47(v46);
      goto LABEL_15;
    }

    v33 = sub_22BB6BAE8();
    v34(v33);
    v35 = *v72;
    v36 = v11;
    v37 = v78;
    (*v72)(v19, v36, v78);
    sub_22BDB8174();
    (*v66)(v17, v19, v37);
    swift_isUniquelyReferenced_nonNull_native();
    v80 = v27;
    sub_22BBDAE68();
    if (__OFADD__(v27[2], (v39 & 1) == 0))
    {
      break;
    }

    v40 = v38;
    v41 = v39;
    sub_22BBE6DE0(&qword_27D8E3FB8, &qword_22BDC17C0);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      sub_22BB3A228();
      if (!v43)
      {
        goto LABEL_21;
      }

      v40 = v42;
    }

    v27 = v80;
    if (v41)
    {
      v44 = v65;
      v45 = v78;
      (*(v65 + 40))(v80[7] + *(v65 + 72) * v40, v17, v78);
      (*v63)(v79, v69);
      v19 = v64;
      (*(v44 + 8))(v64, v45);
      v28 = v71;
      (*v74)(v71, v29);
    }

    else
    {
      sub_22BB37698(&v80[v40 >> 6]);
      v48 = v58;
      v49 = v79;
      v50 = v69;
      (*(v58 + 16))(v27[6] + *(v58 + 72) * v40, v79, v69);
      v29 = v17;
      v35(v27[7] + *(v65 + 72) * v40);
      (*(v48 + 8))(v49, v50);
      v19 = v64;
      v51 = sub_22BB362AC();
      v52(v51);
      v28 = v71;
      (*v74)(v71, v70);
      v53 = v27[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_20;
      }

      v27[2] = v55;
      v29 = v70;
    }

    v11 = v60;
LABEL_15:
    v25 += v73;
    if (!--v23)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_22BDBB744();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22BBD0C20(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  v7 = sub_22BB35760();
  v8 = a3(v7);
  sub_22BB2F0C8(v8);
  sub_22BB2F390();
  sub_22BDB13EC();
  v10 = v9;
  sub_22BBCD888();
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_22BBD0CFC(uint64_t *a1)
{
  v2 = *(sub_22BDB8F04() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BBD0DA4(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v10[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10[1] = v8;
  result = sub_22BBD4BD0(v10);
  *a1 = v3;
  return result;
}

uint64_t sub_22BBD0DBC()
{
  sub_22BB30F68();
  v2 = sub_22BDB52D4();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB31580();
  v6 = sub_22BDB5304();
  v7 = sub_22BDB52E4();
  sub_22BBE6DE0(&qword_27D8E6780, &qword_22BDCEDC8);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = v7 & 1;
  MEMORY[0x23189F300]();
  sub_22BDB5364();
  sub_22BB31F70();
  (*(v9 + 8))(v0);
  v10 = (*(v4 + 88))(v1, v2);
  if (v10 == *MEMORY[0x277D1CB58])
  {
    goto LABEL_2;
  }

  if (v10 == *MEMORY[0x277D1CB48])
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    if (v10 != *MEMORY[0x277D1CB50])
    {
      (*(v4 + 8))(v1, v2);
LABEL_2:
      v11 = 0;
      v12 = 0;
      goto LABEL_7;
    }

    v12 = 1;
    v11 = 256;
  }

LABEL_7:
  if (v6)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  return v11 | v12 | v13;
}

uint64_t sub_22BBD0F74()
{
  v135 = v0[66];
  v152 = v0[67];
  v1 = v0[57];
  sub_22BB6FAF4();
  v2 = v0[43];
  v3 = v0[41];
  v169 = v0[42];
  v186 = v0[44];
  v339 = v4;
  v356 = v0[40];
  v373 = v0[36];
  v203 = v0[33];
  v5 = v0[31];
  v6 = v0[28];
  v407 = v0[30];
  v424 = v0[27];
  v425 = v0[26];
  v390 = v0[23];
  v7 = v0[18];
  v426 = v0[20];
  v427 = v0[19];
  v220 = v0[12];
  v237 = v0[11];
  v254 = v0[17];
  v8 = v0[9];
  (*(v0[22] + 8))();
  v135(v5, v6);
  v9 = sub_22BB31B54();
  v10(v9);
  v11 = v186;
  (*(v2 + 8))(v186, v169);
  sub_22BD62A64();
  v12 = v203;
  sub_22BB34648();
  sub_22BBD1194(v1, v8);

  (*(v7 + 8))(v237, v254);
  sub_22BB3093C();
  sub_22BB34648();
  v271, v13, v14, v15, v16, v17, v18, v19, v135, v152, v169, v186, v203, v220, v237, v254, v271, v288, v305, v322, v339, v356, v373, v390, v407;
  v289, v20, v21, v22, v23, v24, v25, v26, v136, v153, v170, v187, v204, v221, v238, v255, v272, v289, v306, v323, v340, v357, v374, v391, v408;
  v307, v27, v28, v29, v30, v31, v32, v33, v137, v154, v171, v188, v205, v222, v239, v256, v273, v290, v307, v324, v341, v358, v375, v392, v409;
  v325, v34, v35, v36, v37, v38, v39, v40, v138, v155, v172, v189, v206, v223, v240, v257, v274, v291, v308, v325, v342, v359, v376, v393, v410;
  v343, v41, v42, v43, v44, v45, v46, v47, v139, v156, v173, v190, v207, v224, v241, v258, v275, v292, v309, v326, v343, v360, v377, v394, v411;
  v11, v48, v49, v50, v51, v52, v53, v54, v140, v157, v174, v191, v208, v225, v242, v259, v276, v293, v310, v327, v344, v361, v378, v395, v412;
  v3, v55, v56, v57, v58, v59, v60, v61, v141, v158, v175, v192, v209, v226, v243, v260, v277, v294, v311, v328, v345, v362, v379, v396, v413;
  v363, v62, v63, v64, v65, v66, v67, v68, v142, v159, v176, v193, v210, v227, v244, v261, v278, v295, v312, v329, v346, v363, v380, v397, v414;
  v381, v69, v70, v71, v72, v73, v74, v75, v143, v160, v177, v194, v211, v228, v245, v262, v279, v296, v313, v330, v347, v364, v381, v398, v415;
  v12, v76, v77, v78, v79, v80, v81, v82, v144, v161, v178, v195, v212, v229, v246, v263, v280, v297, v314, v331, v348, v365, v382, v399, v416;
  v5, v83, v84, v85, v86, v87, v88, v89, v145, v162, v179, v196, v213, v230, v247, v264, v281, v298, v315, v332, v349, v366, v383, v400, v417;
  v418, v90, v91, v92, v93, v94, v95, v96, v146, v163, v180, v197, v214, v231, v248, v265, v282, v299, v316, v333, v350, v367, v384, v401, v418;
  v424, v97, v98, v99, v100, v101, v102, v103, v147, v164, v181, v198, v215, v232, v249, v266, v283, v300, v317, v334, v351, v368, v385, v402, v419;
  v425, v104, v105, v106, v107, v108, v109, v110, v148, v165, v182, v199, v216, v233, v250, v267, v284, v301, v318, v335, v352, v369, v386, v403, v420;
  v404, v111, v112, v113, v114, v115, v116, v117, v149, v166, v183, v200, v217, v234, v251, v268, v285, v302, v319, v336, v353, v370, v387, v404, v421;
  v426, v118, v119, v120, v121, v122, v123, v124, v150, v167, v184, v201, v218, v235, v252, v269, v286, v303, v320, v337, v354, v371, v388, v405, v422;
  v427, v125, v126, v127, v128, v129, v130, v131, v151, v168, v185, v202, v219, v236, v253, v270, v287, v304, v321, v338, v355, v372, v389, v406, v423;
  sub_22BB39738();
  v133 = v0[16];

  return v132(v133);
}