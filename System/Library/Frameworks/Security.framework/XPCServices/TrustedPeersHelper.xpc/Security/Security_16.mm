void sub_1001BC758(_TtC18TrustedPeersHelper6Client *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, unsigned __int8 a10, void *a11, void (**a12)(void, void, void, void, void))
{
  v196 = a8;
  v198 = a3;
  v190 = a4;
  v192 = a6;
  v194 = a2;
  v14 = swift_allocObject();
  *v14->endpoint = a12;
  _Block_copy(a12);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v15 = sub_100216774();
  sub_100002648(v15, qword_10029DBB0);
  v16 = a1;
  v17 = sub_100216754();
  v18 = sub_100216C54();

  v201 = v14;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a7;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446210;
    v204 = a1;
    v22 = v16;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v23 = sub_100216994();
    v25 = v24;
    v26 = a1;
    v27 = sub_100005FB0(v23, v24, aBlock);
    v25, v28, v29, v30, v31, v32, v33, v34, v174, v177, v181, v184, v187, v190, v192, v194, v196, v198;
    *(v20 + 4) = v27;
    a1 = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Preflight Vouch With Bottle %{public}s", v20, 0xCu);
    sub_100006128(v21, v35, v36, v37, v38, v39, v40, v41);

    a7 = v19;
    v14 = v201;
  }

  if (a1)
  {
    v188 = a7;
    v42 = a11[3];
    v43 = v16;
    v44 = [(Client *)v43 cloudkitContainerName];
    v45 = sub_100216974();
    v47 = v46;

    v48 = [(Client *)v43 octagonContextID];
    v49 = sub_100216974();
    v51 = v50;

    __chkstk_darwin(v52, v53);
    type metadata accessor for Container();
    sub_100216CD4();

    v51, v91, v92, v93, v94, v95, v96, v97, v164, v166, v42, v45, v47, v49, v51, v43, v174, a11;
    v47, v98, v99, v100, v101, v102, v103, v104, v165, v167, v168, v169, v170, v171, v172, v173, v176, v179;
    v105 = aBlock[0];
    v106 = swift_allocObject();
    *(v106 + 16) = v180;
    *(v106 + 24) = v105;
    *(v106 + 32) = sub_1001D12E8;
    *(v106 + 40) = v201;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v107 = v105;

    v183 = sub_10019C8E0(v107, 0xD000000000000057, 0x8000000100238870);

    v108 = swift_allocObject();
    *(v108 + 16) = v183;
    *(v108 + 24) = sub_1001D12F0;
    *(v108 + 32) = v106;
    v186 = *&v107[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v109 = swift_allocObject();
    *(v109 + 16) = v190;
    *(v109 + 24) = a5;
    *(v109 + 32) = v192;
    *(v109 + 40) = v188;
    *(v109 + 48) = v196;
    *(v109 + 56) = a9;
    *(v109 + 64) = a10 & 1;
    *(v109 + 72) = v107;
    *(v109 + 80) = v194;
    *(v109 + 88) = v198;
    *(v109 + 96) = sub_1001D131C;
    *(v109 + 104) = v108;
    v110 = swift_allocObject();
    *v110->endpoint = sub_1001D1328;
    *v110->containerMap = v109;
    aBlock[4] = sub_1000574B4;
    v203 = v110;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287EF8;
    v111 = _Block_copy(aBlock);
    v112 = v203;

    v113 = v107;

    v112, v114, v115, v116, v117, v118, v119, v120;
    [v186 performBlockAndWait:v111];

    v108, v121, v122, v123, v124, v125, v126, v127;
    v183, v128, v129, v130, v131, v132, v133, v134;
    v106, v135, v136, v137, v138, v139, v140, v141;
    _Block_release(v111);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v201, v143, v144, v145, v146, v147, v148, v149;
    v109, v150, v151, v152, v153, v154, v155, v156;
    v110, v157, v158, v159, v160, v161, v162, v163;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v54 = swift_allocError();
    *v55 = xmmword_100226AD0;
    *(v55 + 16) = 13;
    swift_willThrow();
    v56 = v16;
    swift_errorRetain();
    v57 = sub_100216754();
    v58 = sub_100216C74();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v59 = 136446466;
      v204 = 0;
      v60 = v56;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v61 = sub_100216994();
      v63 = v62;
      v64 = sub_100005FB0(v61, v62, aBlock);
      v63, v65, v66, v67, v68, v69, v70, v71, v174, v177, v181, v184, v187, v190, v192, v194, v196, v198;
      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      v204 = v54;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v72 = sub_100216994();
      v74 = v73;
      v75 = sub_100005FB0(v72, v73, aBlock);
      v74, v76, v77, v78, v79, v80, v81, v82, v175, v178, v182, v185, v189, v191, v193, v195, v197, v199;
      *(v59 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v57, v58, "Preflighting Vouch With Bottle failed for %{public}s: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v205, v206);
    v83 = sub_100216144();
    (a12)[2](a12, 0, 0, 0, v83);

    v14, v84, v85, v86, v87, v88, v89, v90;
  }
}

void sub_1001BCF38(_TtC18TrustedPeersHelper6Client *a1, char *a2, _TtC18TrustedPeersHelper6Client *a3, _TtC18TrustedPeersHelper6Client *a4, const char *a5, _TtC18TrustedPeersHelper6Client *a6, _TtC18TrustedPeersHelper6Client *a7, _TtC18TrustedPeersHelper6Client *a8, void *a9, _TtC18TrustedPeersHelper6Client *a10, void *a11, _TtC18TrustedPeersHelper6Client *a12, void *a13, _TtC18TrustedPeersHelper6Client *a14, unsigned __int8 a15, _TtC18TrustedPeersHelper6Client *a16, char *a17)
{
  v451 = a7;
  v452 = a8;
  v449 = a6;
  v453 = a4;
  v448 = a2;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v20);
  v446 = (&v428 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  *v22->endpoint = a17;
  v455 = a17;
  _Block_copy(a17);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v23 = sub_100216774();
  v24 = sub_100002648(v23, qword_10029DBB0);
  v25 = a1;
  v454 = v24;
  v26 = sub_100216754();
  v27 = sub_100216C54();

  v28 = os_log_type_enabled(v26, v27);
  v456 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136446210;
    v463 = a1;
    v31 = v25;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v32 = sub_100216994();
    v34 = v33;
    v35 = sub_100005FB0(v32, v33, &aBlock);
    v34, v36, v37, v38, v39, v40, v41, v42, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
    *(v29 + 4) = v35;
    a1 = v456;
    _os_log_impl(&_mh_execute_header, v26, v27, "Vouching With Bottle %{public}s", v29, 0xCu);
    sub_100006128(v30, v43, v44, v45, v46, v47, v48, v49);
  }

  if (a1)
  {
    v447 = a5;
    v444 = a3;
    v450 = v22;
    v443 = a16;
    v50 = *a16->containerMap;
    v51 = v25;
    v52 = [(Client *)v51 cloudkitContainerName];
    v53 = sub_100216974();
    v55 = v54;

    v56 = [(Client *)v51 octagonContextID];
    v57 = sub_100216974();
    v59 = v58;

    __chkstk_darwin(v60, v61);
    *(&v428 - 6) = v50;
    *(&v428 - 5) = v53;
    *(&v428 - 4) = v55;
    *(&v428 - 3) = v57;
    *(&v428 - 2) = v59;
    *(&v428 - 1) = v51;
    type metadata accessor for Container();
    sub_100216CD4();

    v59, v99, v100, v101, v102, v103, v104, v105, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
    v55, v106, v107, v108, v109, v110, v111, v112, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
    v113 = aBlock;
    v114 = swift_allocObject();
    *v114->endpoint = v443;
    *v114->containerMap = v113;
    v115 = v450;
    *v114[1]._TtCs12_SwiftObject_opaque = sub_1001D1B94;
    *&v114[1]._TtCs12_SwiftObject_opaque[8] = v115;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v116 = v113;

    v117 = sub_10019C8E0(v116, 0xD00000000000006BLL, 0x800000010023C890);

    v118 = swift_allocObject();
    *(v118 + 16) = v117;
    *(v118 + 24) = sub_1001D11AC;
    *(v118 + 32) = v114;
    v439 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
    v120 = __chkstk_darwin(v118, v119);
    *(&v428 - 4) = v116;
    *(&v428 - 3) = sub_1001D11E0;
    *(&v428 - 2) = v120;
    swift_retain_n();
    swift_retain_n();
    sub_10001148C(&qword_100297E70, &unk_10021DAB0);
    sub_100216D34();
    v128 = aBlock;
    if (!aBlock)
    {
      v115, v121, v122, v123, v124, v125, v126, v127;

      v118, v176, v177, v178, v179, v180, v181, v182;

      return;
    }

    v432 = 0;
    LODWORD(v443) = a15;
    v456 = a14;
    v454 = a12;
    v440 = aBlock;
    v129 = swift_allocObject();
    v455 = v116;
    v130 = v129;
    *v129->endpoint = v117;
    *v129->containerMap = sub_1001D11AC;
    *v129[1]._TtCs12_SwiftObject_opaque = v114;
    v131 = swift_allocObject();
    *(v131 + 16) = sub_1001D1AFC;
    *(v131 + 24) = v130;
    *(v131 + 32) = v455;
    *(v131 + 40) = a9;
    v429 = a9;
    *(v131 + 48) = a10;
    *(v131 + 56) = a11;
    v430 = a11;
    *(v131 + 64) = a12;
    *(v131 + 72) = a13;
    v431 = a13;
    *(v131 + 80) = v456;
    HIDWORD(v428) = v443 & 1;
    *(v131 + 88) = v443 & 1;
    v132 = v444;
    *(v131 + 96) = v448;
    *(v131 + 104) = v132;
    v133 = v453;
    v134 = v447;
    *(v131 + 112) = v453;
    *(v131 + 120) = v134;
    v441 = v118;
    v135 = v451;
    *(v131 + 128) = v449;
    *(v131 + 136) = v135;
    v434 = v131;
    *(v131 + 144) = v452;
    v136 = swift_allocObject();
    v435 = v136;
    *v136->endpoint = v128;
    endpoint = v136->endpoint;
    v443 = swift_allocObject();

    v138 = v455;

    v139 = v133;
    v140 = v447;
    sub_100012558(v139, v447);

    v141 = v138;
    v437 = v117;

    v442 = v114;

    v438 = a10;

    sub_100012558(v453, v140);

    v436 = v130;

    v142 = sub_100019440(_swiftEmptyArrayStorage);
    v143 = v443;
    *v443->endpoint = v142;
    v144 = v439;
    v145 = *&v455[v439];
    v146 = swift_allocObject();
    *(v146 + 16) = endpoint;
    *(v146 + 24) = v141;
    *(v146 + 32) = v143->endpoint;
    v147 = swift_allocObject();
    *v147->endpoint = sub_100056F54;
    *v147->containerMap = v146;
    v461 = sub_1000574B4;
    v462 = v147;
    aBlock = _NSConcreteStackBlock;
    v458 = 1107296256;
    v459 = sub_100109050;
    v460 = &unk_100287D40;
    v148 = _Block_copy(&aBlock);
    v149 = v462;
    v150 = v141;

    v149, v151, v152, v153, v154, v155, v156, v157;
    [v145 performBlockAndWait:v148];
    _Block_release(v148);
    LOBYTE(v141) = swift_isEscapingClosureAtFileLocation();
    v147, v158, v159, v160, v161, v162, v163, v164;
    if (v141)
    {
      __break(1u);
    }

    else
    {
      v167 = *endpoint;
      if ((*endpoint & 0xC000000000000001) != 0)
      {

        v168 = sub_100216ED4();
        v167, v169, v170, v171, v172, v173, v174, v175, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
      }

      else
      {
        v168 = *v167->endpoint;
      }

      v183 = v442;
      v433 = v146;
      if (v168)
      {
        __chkstk_darwin(v165, v166);
        *(&v428 - 2) = endpoint;
        sub_1001D0854(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
        v184 = v446;
        sub_100216654();
        v185 = *&v150[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        v455 = *&v150[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        sub_100006484(&v150[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v455);
        v186 = swift_allocObject();
        *v186->endpoint = v150;
        *v186->containerMap = sub_1001D122C;
        v187 = v434;
        v188 = v435;
        *v186[1]._TtCs12_SwiftObject_opaque = v434;
        *&v186[1]._TtCs12_SwiftObject_opaque[8] = v188;
        v189 = v443;
        *v186[1].endpoint = v443;
        v190 = *(v185 + 16);
        v191 = *(v190 + 80);
        v192 = v150;

        v191(v184, sub_100056F7C, v186, v455, v190);
        v193 = v442;
        v194 = v186;
        v195 = v450;
        v194, v196, v197, v198, v199, v200, v201, v202;
        sub_1001D1288(v184, type metadata accessor for FetchPolicyDocumentsRequest);
        v451, v203, v204, v205, v206, v207, v208, v209, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        v452, v210, v211, v212, v213, v214, v215, v216, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        v437, v217, v218, v219, v220, v221, v222, v223;
        v193, v224, v225, v226, v227, v228, v229, v230;
        v436, v231, v232, v233, v234, v235, v236, v237;
        v187, v238, v239, v240, v241, v242, v243, v244;
        v433, v245, v246, v247, v248, v249, v250, v251;
        v188, v252, v253, v254, v255, v256, v257, v258;
        v189, v259, v260, v261, v262, v263, v264, v265;
LABEL_20:
        sub_100002BF0(v453, v447, v266, v267, v268, v269, v270, v271);
        v195, v386, v387, v388, v389, v390, v391, v392;

        v440, v393, v394, v395, v396, v397, v398, v399, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;

        v438, v400, v401, v402, v403, v404, v405, v406, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        v454, v407, v408, v409, v410, v411, v412, v413, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        v456, v414, v415, v416, v417, v418, v419, v420, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        v444, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        return;
      }

      v446 = *v443->endpoint;
      v272 = swift_allocObject();
      v273 = v437;
      *(v272 + 16) = v437;
      *(v272 + 24) = sub_1001D11AC;
      *(v272 + 32) = v183;
      v455 = *&v455[v144];
      v274 = swift_allocObject();
      v275 = v438;
      *(v274 + 16) = v429;
      *(v274 + 24) = v275;
      v276 = v454;
      *(v274 + 32) = v430;
      *(v274 + 40) = v276;
      v277 = v456;
      *(v274 + 48) = v431;
      *(v274 + 56) = v277;
      *(v274 + 64) = BYTE4(v428);
      v278 = v448;
      *(v274 + 72) = v150;
      *(v274 + 80) = v278;
      *(v274 + 88) = v444;
      *(v274 + 96) = sub_1001D1AFC;
      v280 = v452;
      v279 = v453;
      *(v274 + 104) = v272;
      *(v274 + 112) = v279;
      v281 = v447;
      v282 = v449;
      *(v274 + 120) = v447;
      *(v274 + 128) = v282;
      v283 = v451;
      *(v274 + 136) = v451;
      *(v274 + 144) = v280;
      v284 = swift_allocObject();
      *v284->endpoint = sub_1001AA680;
      *v284->containerMap = v274;
      v461 = sub_1000574B4;
      v462 = v284;
      aBlock = _NSConcreteStackBlock;
      v458 = 1107296256;
      v459 = sub_100109050;
      v460 = &unk_100287E08;
      v285 = _Block_copy(&aBlock);
      v449 = v462;
      swift_retain_n();
      swift_retain_n();
      v448 = v150;
      v286 = v150;

      sub_100012558(v453, v281);

      v287 = v446;

      v449, v288, v289, v290, v291, v292, v293, v294;
      [v455 performBlockAndWait:v285];
      _Block_release(v285);
      LOBYTE(v275) = swift_isEscapingClosureAtFileLocation();
      v436, v295, v296, v297, v298, v299, v300, v301;
      v434, v302, v303, v304, v305, v306, v307, v308;
      v433, v309, v310, v311, v312, v313, v314, v315;
      v435, v316, v317, v318, v319, v320, v321, v322;
      v443, v323, v324, v325, v326, v327, v328, v329;
      v287, v330, v331, v332, v333, v334, v335, v336, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
      v273, v337, v338, v339, v340, v341, v342, v343;

      v272, v344, v345, v346, v347, v348, v349, v350;
      v274, v351, v352, v353, v354, v355, v356, v357;
      v284, v358, v359, v360, v361, v362, v363, v364;
      if ((v275 & 1) == 0)
      {
        v283, v365, v366, v367, v368, v369, v370, v371, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        v280, v372, v373, v374, v375, v376, v377, v378, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
        v273, v379, v380, v381, v382, v383, v384, v385;
        v195 = v450;
        v150 = v448;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1000561D0();
    v62 = swift_allocError();
    *v63 = xmmword_100226AD0;
    *(v63 + 16) = 13;
    swift_willThrow();
    v64 = v25;
    swift_errorRetain();
    v65 = sub_100216754();
    v66 = sub_100216C74();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v67 = 136446466;
      v463 = v456;
      v68 = v64;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v69 = sub_100216994();
      v71 = v70;
      v72 = sub_100005FB0(v69, v70, &aBlock);
      v71, v73, v74, v75, v76, v77, v78, v79, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
      *(v67 + 4) = v72;
      *(v67 + 12) = 2082;
      v463 = v62;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v80 = sub_100216994();
      v82 = v81;
      v83 = sub_100005FB0(v80, v81, &aBlock);
      v82, v84, v85, v86, v87, v88, v89, v90, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437;
      *(v67 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v65, v66, "Vouching with Bottle failed for %{public}s: %{public}s", v67, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v464, v465);
    v91 = sub_100216144();
    (*(v455 + 2))(v455, 0, 0, 0, 0, v91);

    v22, v92, v93, v94, v95, v96, v97, v98;
  }
}

void sub_1001BDFD0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, _TtC18TrustedPeersHelper6Client *a7)
{
  v195 = a2;
  v197 = a4;
  v12 = swift_allocObject();
  *v12->endpoint = a7;
  v207 = a7;
  _Block_copy(a7);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  v14 = sub_100002648(v13, qword_10029DBB0);
  v15 = a1;
  v204 = v14;
  v16 = sub_100216754();
  v17 = sub_100216C54();

  v202 = a6;
  v210 = v15;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    v214 = a1;
    v20 = v15;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v21 = sub_100216994();
    v22 = a3;
    v23 = v12;
    v24 = a5;
    v25 = a1;
    v27 = v26;
    v28 = sub_100005FB0(v21, v26, aBlock);
    v29 = v27;
    a1 = v25;
    a5 = v24;
    v12 = v23;
    a3 = v22;
    v29, v30, v31, v32, v33, v34, v35, v36, v183, v186, v190, v193, v195, v197, v199, v202, v204, v207;
    *(v18 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "Preflight Vouch With RecoveryKey %{public}s", v18, 0xCu);
    sub_100006128(v19, v37, v38, v39, v40, v41, v42, v43);

    a6 = v202;
  }

  if (a1)
  {
    v191 = a5;
    v200 = v12;
    v44 = a6[3];
    v45 = v210;
    v46 = [v45 cloudkitContainerName];
    v47 = sub_100216974();
    v49 = v48;

    v50 = [v45 octagonContextID];
    v51 = sub_100216974();
    v53 = v52;

    __chkstk_darwin(v54, v55);
    type metadata accessor for Container();
    sub_100216CD4();

    v53, v93, v94, v95, v96, v97, v98, v99, v173, v175, v44, v47, v49, v51, v53, v45, v183, a3;
    v49, v100, v101, v102, v103, v104, v105, v106, v174, v176, v177, v178, v179, v180, v181, v182, v185, v188;
    v107 = aBlock[0];
    v108 = swift_allocObject();
    *(v108 + 16) = v202;
    *(v108 + 24) = v107;
    *(v108 + 32) = sub_1001D1C50;
    *(v108 + 40) = v200;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v109 = v107;

    v209 = sub_10019C8E0(v109, 0xD000000000000036, 0x8000000100238C90);

    v110 = swift_allocObject();
    *(v110 + 16) = v209;
    *(v110 + 24) = sub_1001D1160;
    *(v110 + 32) = v108;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_1001D116C;
    *(v111 + 24) = v110;
    *(v111 + 32) = v109;
    *(v111 + 40) = v195;
    *(v111 + 48) = v189;
    *(v111 + 56) = v197;
    *(v111 + 64) = v191;
    v211 = *&v109[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v112 = swift_allocObject();
    *(v112 + 16) = 0;
    *(v112 + 24) = v109;
    *(v112 + 32) = sub_1001D1178;
    *(v112 + 40) = v111;
    v113 = swift_allocObject();
    *v113->endpoint = sub_1001ACE7C;
    *v113->containerMap = v112;
    aBlock[4] = sub_1000574B4;
    v213 = v113;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287BB0;
    v114 = _Block_copy(aBlock);
    v115 = v213;
    v206 = v109;

    v115, v116, v117, v118, v119, v120, v121, v122;
    [v211 performBlockAndWait:v114];
    _Block_release(v114);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v200, v124, v125, v126, v127, v128, v129, v130;

    v108, v131, v132, v133, v134, v135, v136, v137;
    v209, v138, v139, v140, v141, v142, v143, v144;
    v110, v145, v146, v147, v148, v149, v150, v151;
    v111, v152, v153, v154, v155, v156, v157, v158;
    v112, v159, v160, v161, v162, v163, v164, v165;
    v113, v166, v167, v168, v169, v170, v171, v172;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v56 = swift_allocError();
    *v57 = xmmword_100226AD0;
    *(v57 + 16) = 13;
    swift_willThrow();
    v58 = v210;
    swift_errorRetain();
    v59 = sub_100216754();
    v60 = sub_100216C74();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v61 = 136446466;
      v214 = 0;
      v62 = v58;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, aBlock);
      v65, v67, v68, v69, v70, v71, v72, v73, v183, v186, v190, v193, v195, v197, v199, v202, v204, v207;
      *(v61 + 4) = v66;
      *(v61 + 12) = 2082;
      v214 = v56;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v74 = sub_100216994();
      v76 = v75;
      v77 = sub_100005FB0(v74, v75, aBlock);
      v76, v78, v79, v80, v81, v82, v83, v84, v184, v187, v192, v194, v196, v198, v201, v203, v205, v208;
      *(v61 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v59, v60, "Preflighting Vouch With RecoveryKey failed for %{public}s: %{public}s", v61, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v215, v216);
    v85 = sub_100216144();
    (*v207->endpoint)(v207, 0, 0, v85);

    v12, v86, v87, v88, v89, v90, v91, v92;
  }
}

void sub_1001BE7B0(id a1, void *a2, void *a3, void (**a4)(void, void, void, void))
{
  v8 = swift_allocObject();
  *v8->endpoint = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  v10 = sub_100002648(v9, qword_10029DBB0);
  v11 = a1;
  v189 = v10;
  v12 = sub_100216754();
  v13 = sub_100216C54();

  v192 = a1;
  v195 = v8;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = a2;
    v15 = a3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136446210;
    v203 = a1;
    v18 = v11;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v19 = sub_100216994();
    v21 = v20;
    v22 = sub_100005FB0(v19, v20, &aBlock);
    v21, v23, v24, v25, v26, v27, v28, v29, v178, v183, v187, v189, v192, v195, aBlock, v198, v199, v200;
    *(v16 + 4) = v22;
    a1 = v192;
    _os_log_impl(&_mh_execute_header, v12, v13, "Preflight Vouch With CustodianRecoveryKey %{public}s", v16, 0xCu);
    sub_100006128(v17, v30, v31, v32, v33, v34, v35, v36);

    a3 = v15;
    a2 = v14;
    v8 = v195;
  }

  if (a1)
  {
    v37 = a3[3];
    v38 = v11;
    v39 = [v38 cloudkitContainerName];
    v179 = a3;
    v40 = sub_100216974();
    v42 = v41;

    v43 = [v38 octagonContextID];
    v44 = sub_100216974();
    v46 = v45;

    __chkstk_darwin(v47, v48);
    type metadata accessor for Container();
    sub_100216CD4();

    v46, v86, v87, v88, v89, v90, v91, v92, v168, v170, v37, v40, v42, v44, v46, v38, v179, a2;
    v42, v93, v94, v95, v96, v97, v98, v99, v169, v171, v172, v173, v174, v175, v176, v177, v181, v185;
    v100 = aBlock;
    v101 = swift_allocObject();
    *(v101 + 16) = v182;
    *(v101 + 24) = v100;
    *(v101 + 32) = sub_1001D1134;
    *(v101 + 40) = v195;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v102 = v100;

    v191 = sub_10019C8E0(v102, 0xD000000000000032, 0x8000000100238C50);

    v103 = swift_allocObject();
    *(v103 + 16) = v191;
    *(v103 + 24) = sub_1001D113C;
    *(v103 + 32) = v101;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_1001D1148;
    *(v104 + 24) = v103;
    *(v104 + 32) = v102;
    *(v104 + 40) = v186;
    v194 = *&v102[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v105 = swift_allocObject();
    *(v105 + 16) = v102;
    *(v105 + 24) = sub_1001D1154;
    *(v105 + 32) = v104;
    v106 = swift_allocObject();
    *v106->endpoint = sub_1001ACE84;
    *v106->containerMap = v105;
    v201 = sub_1000574B4;
    v202 = v106;
    aBlock = _NSConcreteStackBlock;
    v198 = 1107296256;
    v199 = sub_100109050;
    v200 = &unk_100287A98;
    v107 = _Block_copy(&aBlock);
    v108 = v202;
    v109 = v102;

    v110 = v186;

    v108, v111, v112, v113, v114, v115, v116, v117;
    [v194 performBlockAndWait:v107];
    _Block_release(v107);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v195, v119, v120, v121, v122, v123, v124, v125;

    v101, v126, v127, v128, v129, v130, v131, v132;
    v191, v133, v134, v135, v136, v137, v138, v139;
    v103, v140, v141, v142, v143, v144, v145, v146;
    v104, v147, v148, v149, v150, v151, v152, v153;
    v105, v154, v155, v156, v157, v158, v159, v160;
    v106, v161, v162, v163, v164, v165, v166, v167;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v49 = swift_allocError();
    *v50 = xmmword_100226AD0;
    *(v50 + 16) = 13;
    swift_willThrow();
    v51 = v11;
    swift_errorRetain();
    v52 = sub_100216754();
    v53 = sub_100216C74();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v54 = 136446466;
      v203 = v192;
      v55 = v51;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v56 = sub_100216994();
      v58 = v57;
      v59 = sub_100005FB0(v56, v57, &aBlock);
      v58, v60, v61, v62, v63, v64, v65, v66, v178, v183, v187, v189, v192, v195, aBlock, v198, v199, v200;
      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      v203 = v49;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v67 = sub_100216994();
      v69 = v68;
      v70 = sub_100005FB0(v67, v68, &aBlock);
      v69, v71, v72, v73, v74, v75, v76, v77, v180, v184, v188, v190, v193, v196, aBlock, v198, v199, v200;
      *(v54 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v52, v53, "Preflighting Vouch With CustodianRecoveryKey failed for %{public}s: %{public}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v204, v205);
    v78 = sub_100216144();
    (a4)[2](a4, 0, 0, v78);

    v8, v79, v80, v81, v82, v83, v84, v85;
  }
}

void sub_1001BEF3C(void *a1, void *a2, void *a3, char *a4, void *a5, void *a6, _TtC18TrustedPeersHelper6Client *a7, void (**a8)(void, void, void, void, void, void))
{
  v188 = a3;
  v190 = a5;
  v183 = a2;
  v185 = a4;
  v12 = swift_allocObject();
  *v12->endpoint = a8;
  _Block_copy(a8);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  v14 = sub_100002648(v13, qword_10029DBB0);
  v15 = a1;
  v195 = v14;
  v16 = sub_100216754();
  v17 = sub_100216C54();

  v198 = v12;
  v192 = a7;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    v201 = a1;
    v20 = v15;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v21 = sub_100216994();
    v23 = v22;
    v24 = a6;
    v25 = a1;
    v26 = sub_100005FB0(v21, v22, aBlock);
    v23, v27, v28, v29, v30, v31, v32, v33, v172, v175, v179, v181, v183, v185, v188, v190, v192, v195;
    *(v18 + 4) = v26;
    a1 = v25;
    a6 = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Vouching With Recovery Key %{public}s", v18, 0xCu);
    sub_100006128(v19, v34, v35, v36, v37, v38, v39, v40);

    a7 = v192;
    v12 = v198;
  }

  if (a1)
  {
    v41 = *a7->containerMap;
    v42 = v15;
    v43 = [v42 cloudkitContainerName];
    v44 = sub_100216974();
    v46 = v45;

    v47 = [v42 octagonContextID];
    v48 = sub_100216974();
    v50 = v49;

    __chkstk_darwin(v51, v52);
    type metadata accessor for Container();
    sub_100216CD4();

    v50, v90, v91, v92, v93, v94, v95, v96, v162, v164, v41, v44, v46, v48, v50, v42, v172, a6;
    v46, v97, v98, v99, v100, v101, v102, v103, v163, v165, v166, v167, v168, v169, v170, v171, v174, v177;
    v104 = aBlock[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v192;
    *(v105 + 24) = v104;
    *(v105 + 32) = sub_1001D1B94;
    *(v105 + 40) = v198;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v106 = v104;

    v194 = sub_10019C8E0(v106, 0xD000000000000037, 0x800000010023C850);

    v107 = swift_allocObject();
    *(v107 + 16) = v194;
    *(v107 + 24) = sub_1001D10C0;
    *(v107 + 32) = v105;
    v197 = *&v106[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v108 = swift_allocObject();
    *(v108 + 16) = v106;
    *(v108 + 24) = sub_1001D10F4;
    *(v108 + 32) = v107;
    *(v108 + 40) = v183;
    *(v108 + 48) = v188;
    *(v108 + 56) = v185;
    *(v108 + 64) = v190;
    *(v108 + 72) = v178;
    v109 = swift_allocObject();
    *v109->endpoint = sub_1001D1120;
    *v109->containerMap = v108;
    aBlock[4] = sub_1000574B4;
    v200 = v109;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287980;
    v110 = _Block_copy(aBlock);
    v111 = v200;
    v187 = v106;

    v111, v112, v113, v114, v115, v116, v117, v118;
    [v197 performBlockAndWait:v110];

    v107, v119, v120, v121, v122, v123, v124, v125;
    v194, v126, v127, v128, v129, v130, v131, v132;
    v105, v133, v134, v135, v136, v137, v138, v139;
    _Block_release(v110);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v198, v141, v142, v143, v144, v145, v146, v147;
    v108, v148, v149, v150, v151, v152, v153, v154;
    v109, v155, v156, v157, v158, v159, v160, v161;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v53 = swift_allocError();
    *v54 = xmmword_100226AD0;
    *(v54 + 16) = 13;
    swift_willThrow();
    v55 = v15;
    swift_errorRetain();
    v56 = sub_100216754();
    v57 = sub_100216C74();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v58 = 136446466;
      v201 = 0;
      v59 = v55;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v60 = sub_100216994();
      v62 = v61;
      v63 = sub_100005FB0(v60, v61, aBlock);
      v62, v64, v65, v66, v67, v68, v69, v70, v172, v175, v179, v181, v183, v185, v188, v190, v192, v195;
      *(v58 + 4) = v63;
      *(v58 + 12) = 2082;
      v201 = v53;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v71 = sub_100216994();
      v73 = v72;
      v74 = sub_100005FB0(v71, v72, aBlock);
      v73, v75, v76, v77, v78, v79, v80, v81, v173, v176, v180, v182, v184, v186, v189, v191, v193, v196;
      *(v58 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v56, v57, "Vouching with Recovery Key failed for %{public}s: %{public}s", v58, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v202, v203);
    v82 = sub_100216144();
    (a8)[2](a8, 0, 0, 0, 0, v82);

    v12, v83, v84, v85, v86, v87, v88, v89;
  }
}

void sub_1001BF6C8(void *a1, void *a2, void *a3, void *a4, void (**a5)(void, void, void, void))
{
  v183 = a2;
  v9 = swift_allocObject();
  *v9->endpoint = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  v11 = sub_100002648(v10, qword_10029DBB0);
  v12 = a1;
  v187 = v11;
  v13 = sub_100216754();
  v14 = sub_100216C54();

  v190 = v9;
  v185 = a4;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136446210;
    v198 = a1;
    v17 = v12;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v18 = sub_100216994();
    v19 = a3;
    v20 = a1;
    v22 = v21;
    v23 = sub_100005FB0(v18, v21, &aBlock);
    v24 = v22;
    a1 = v20;
    a3 = v19;
    v24, v25, v26, v27, v28, v29, v30, v31, v173, v177, v181, v183, v185, v187, v190, aBlock, v193, v194;
    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Recovering TLKShares for Inheritor %{public}s", v15, 0xCu);
    sub_100006128(v16, v32, v33, v34, v35, v36, v37, v38);

    a4 = v185;
    v9 = v190;
  }

  if (a1)
  {
    v178 = a1;
    v39 = a4[3];
    v40 = v12;
    v41 = [v40 cloudkitContainerName];
    v42 = sub_100216974();
    v44 = v43;

    v45 = [v40 octagonContextID];
    v46 = sub_100216974();
    v48 = v47;

    __chkstk_darwin(v49, v50);
    type metadata accessor for Container();
    sub_100216CD4();

    v48, v88, v89, v90, v91, v92, v93, v94, v163, v165, v39, v42, v44, v46, v48, v40, a3, v178;
    v44, v95, v96, v97, v98, v99, v100, v101, v164, v166, v167, v168, v169, v170, v171, v172, v175, v180;
    v102 = aBlock;
    v103 = swift_allocObject();
    *(v103 + 16) = v185;
    *(v103 + 24) = v102;
    *(v103 + 32) = sub_1001D0FFC;
    *(v103 + 40) = v190;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v104 = v102;

    v105 = sub_10019C8E0(v104, 0xD000000000000032, 0x800000010023C810);
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = sub_1001D1028;
    *(v106 + 32) = v103;
    v189 = *&v104[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v107 = swift_allocObject();
    *(v107 + 16) = v104;
    *(v107 + 24) = sub_1001D1034;
    *(v107 + 32) = v106;
    *(v107 + 40) = v183;
    *(v107 + 48) = v176;
    v108 = swift_allocObject();
    *v108->endpoint = sub_1001D1090;
    *v108->containerMap = v107;
    v196 = sub_1000574B4;
    v197 = v108;
    aBlock = _NSConcreteStackBlock;
    v193 = 1107296256;
    v194 = sub_100109050;
    v195 = &unk_100287890;
    v109 = _Block_copy(&aBlock);
    v110 = v197;
    v111 = v104;

    v112 = v183;

    v110, v113, v114, v115, v116, v117, v118, v119;
    [v189 performBlockAndWait:v109];
    v106, v120, v121, v122, v123, v124, v125, v126;
    v105, v127, v128, v129, v130, v131, v132, v133;
    _Block_release(v109);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v190, v135, v136, v137, v138, v139, v140, v141;

    v103, v142, v143, v144, v145, v146, v147, v148;
    v107, v149, v150, v151, v152, v153, v154, v155;
    v108, v156, v157, v158, v159, v160, v161, v162;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v51 = swift_allocError();
    *v52 = xmmword_100226AD0;
    *(v52 + 16) = 13;
    swift_willThrow();
    v53 = v12;
    swift_errorRetain();
    v54 = sub_100216754();
    v55 = sub_100216C74();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v56 = 136446466;
      v198 = 0;
      v57 = v53;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v58 = sub_100216994();
      v60 = v59;
      v61 = sub_100005FB0(v58, v59, &aBlock);
      v60, v62, v63, v64, v65, v66, v67, v68, v173, v177, v181, v183, v185, v187, v190, aBlock, v193, v194;
      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v198 = v51;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v69 = sub_100216994();
      v71 = v70;
      v72 = sub_100005FB0(v69, v70, &aBlock);
      v71, v73, v74, v75, v76, v77, v78, v79, v174, v179, v182, v184, v186, v188, v191, aBlock, v193, v194;
      *(v56 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v54, v55, "Recovering TLKShares for Inheritor failed for %{public}s: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v199, v200);
    v80 = sub_100216144();
    (a5)[2](a5, 0, 0, v80);

    v9, v81, v82, v83, v84, v85, v86, v87;
  }
}

void sub_1001BFE18(void *a1, void *a2, void *a3, void *a4, void (**a5)(void, void, void, void, void, void))
{
  v183 = a2;
  v9 = swift_allocObject();
  *v9->endpoint = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  v11 = sub_100002648(v10, qword_10029DBB0);
  v12 = a1;
  v187 = v11;
  v13 = sub_100216754();
  v14 = sub_100216C54();

  v190 = v9;
  v185 = a4;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136446210;
    v198 = a1;
    v17 = v12;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v18 = sub_100216994();
    v19 = a3;
    v20 = a1;
    v22 = v21;
    v23 = sub_100005FB0(v18, v21, &aBlock);
    v24 = v22;
    a1 = v20;
    a3 = v19;
    v24, v25, v26, v27, v28, v29, v30, v31, v173, v177, v181, v183, v185, v187, v190, aBlock, v193, v194;
    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Vouching With Custodian Recovery Key %{public}s", v15, 0xCu);
    sub_100006128(v16, v32, v33, v34, v35, v36, v37, v38);

    a4 = v185;
    v9 = v190;
  }

  if (a1)
  {
    v178 = a1;
    v39 = a4[3];
    v40 = v12;
    v41 = [v40 cloudkitContainerName];
    v42 = sub_100216974();
    v44 = v43;

    v45 = [v40 octagonContextID];
    v46 = sub_100216974();
    v48 = v47;

    __chkstk_darwin(v49, v50);
    type metadata accessor for Container();
    sub_100216CD4();

    v48, v88, v89, v90, v91, v92, v93, v94, v163, v165, v39, v42, v44, v46, v48, v40, a3, v178;
    v44, v95, v96, v97, v98, v99, v100, v101, v164, v166, v167, v168, v169, v170, v171, v172, v175, v180;
    v102 = aBlock;
    v103 = swift_allocObject();
    *(v103 + 16) = v185;
    *(v103 + 24) = v102;
    *(v103 + 32) = sub_1001D1B94;
    *(v103 + 40) = v190;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v104 = v102;

    v105 = sub_10019C8E0(v104, 0xD000000000000033, 0x800000010023C7D0);
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = sub_1001D0F84;
    *(v106 + 32) = v103;
    v189 = *&v104[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v107 = swift_allocObject();
    *(v107 + 16) = v104;
    *(v107 + 24) = sub_1001D0FB8;
    *(v107 + 32) = v106;
    *(v107 + 40) = v183;
    *(v107 + 48) = v176;
    v108 = swift_allocObject();
    *v108->endpoint = sub_1001D0FE4;
    *v108->containerMap = v107;
    v196 = sub_1000574B4;
    v197 = v108;
    aBlock = _NSConcreteStackBlock;
    v193 = 1107296256;
    v194 = sub_100109050;
    v195 = &unk_1002877A0;
    v109 = _Block_copy(&aBlock);
    v110 = v197;
    v111 = v104;

    v112 = v183;

    v110, v113, v114, v115, v116, v117, v118, v119;
    [v189 performBlockAndWait:v109];
    v106, v120, v121, v122, v123, v124, v125, v126;
    v105, v127, v128, v129, v130, v131, v132, v133;
    _Block_release(v109);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v190, v135, v136, v137, v138, v139, v140, v141;

    v103, v142, v143, v144, v145, v146, v147, v148;
    v107, v149, v150, v151, v152, v153, v154, v155;
    v108, v156, v157, v158, v159, v160, v161, v162;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v51 = swift_allocError();
    *v52 = xmmword_100226AD0;
    *(v52 + 16) = 13;
    swift_willThrow();
    v53 = v12;
    swift_errorRetain();
    v54 = sub_100216754();
    v55 = sub_100216C74();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v56 = 136446466;
      v198 = 0;
      v57 = v53;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v58 = sub_100216994();
      v60 = v59;
      v61 = sub_100005FB0(v58, v59, &aBlock);
      v60, v62, v63, v64, v65, v66, v67, v68, v173, v177, v181, v183, v185, v187, v190, aBlock, v193, v194;
      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v198 = v51;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v69 = sub_100216994();
      v71 = v70;
      v72 = sub_100005FB0(v69, v70, &aBlock);
      v71, v73, v74, v75, v76, v77, v78, v79, v174, v179, v182, v184, v186, v188, v191, aBlock, v193, v194;
      *(v56 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v54, v55, "Vouching with Custodian Recovery Key failed for %{public}s: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v199, v200);
    v80 = sub_100216144();
    (a5)[2](a5, 0, 0, 0, 0, v80);

    v9, v81, v82, v83, v84, v85, v86, v87;
  }
}

void sub_1001C0570(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void (**a6)(void, void, void, void, void, void))
{
  v183 = a2;
  v185 = a3;
  v10 = swift_allocObject();
  *v10->endpoint = a6;
  _Block_copy(a6);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  v12 = sub_100002648(v11, qword_10029DBB0);
  v13 = a1;
  v189 = v12;
  v14 = sub_100216754();
  v15 = sub_100216C54();

  v192 = v10;
  v187 = a5;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    v196 = a1;
    v18 = v13;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v19 = sub_100216994();
    v21 = v20;
    v22 = a4;
    v23 = a1;
    v24 = sub_100005FB0(v19, v20, aBlock);
    v21, v25, v26, v27, v28, v29, v30, v31, v172, v175, v179, v181, v183, v185, v187, v189, v192, aBlock[0];
    *(v16 + 4) = v24;
    a1 = v23;
    a4 = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Vouching With Reroll %{public}s", v16, 0xCu);
    sub_100006128(v17, v32, v33, v34, v35, v36, v37, v38);

    a5 = v187;
    v10 = v192;
  }

  if (a1)
  {
    v39 = a5[3];
    v40 = v13;
    v41 = [v40 cloudkitContainerName];
    v42 = sub_100216974();
    v44 = v43;

    v45 = [v40 octagonContextID];
    v46 = sub_100216974();
    v48 = v47;

    __chkstk_darwin(v49, v50);
    type metadata accessor for Container();
    sub_100216CD4();

    v48, v88, v89, v90, v91, v92, v93, v94, v162, v164, v39, v42, v44, v46, v48, v40, v172, a4;
    v44, v95, v96, v97, v98, v99, v100, v101, v163, v165, v166, v167, v168, v169, v170, v171, v174, v177;
    v102 = aBlock[0];
    v103 = swift_allocObject();
    *(v103 + 16) = v187;
    *(v103 + 24) = v102;
    *(v103 + 32) = sub_1001D0F0C;
    *(v103 + 40) = v192;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v104 = v102;

    v105 = sub_10019C8E0(v104, 0xD00000000000002BLL, 0x800000010023C7A0);
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = sub_1001D0F14;
    *(v106 + 32) = v103;
    v191 = *&v104[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v107 = swift_allocObject();
    *(v107 + 16) = v104;
    *(v107 + 24) = sub_1001D0F48;
    *(v107 + 32) = v106;
    *(v107 + 40) = v183;
    *(v107 + 48) = v185;
    *(v107 + 56) = v178;
    v108 = swift_allocObject();
    *v108->endpoint = sub_1001D0F74;
    *v108->containerMap = v107;
    aBlock[4] = sub_1000574B4;
    v195 = v108;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002876B0;
    v109 = _Block_copy(aBlock);
    v110 = v195;
    v111 = v104;

    v110, v112, v113, v114, v115, v116, v117, v118;
    [v191 performBlockAndWait:v109];
    v106, v119, v120, v121, v122, v123, v124, v125;
    v105, v126, v127, v128, v129, v130, v131, v132;
    _Block_release(v109);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v192, v134, v135, v136, v137, v138, v139, v140;

    v103, v141, v142, v143, v144, v145, v146, v147;
    v107, v148, v149, v150, v151, v152, v153, v154;
    v108, v155, v156, v157, v158, v159, v160, v161;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v51 = swift_allocError();
    *v52 = xmmword_100226AD0;
    *(v52 + 16) = 13;
    swift_willThrow();
    v53 = v13;
    swift_errorRetain();
    v54 = sub_100216754();
    v55 = sub_100216C74();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v56 = 136446466;
      v196 = 0;
      v57 = v53;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v58 = sub_100216994();
      v60 = v59;
      v61 = sub_100005FB0(v58, v59, aBlock);
      v60, v62, v63, v64, v65, v66, v67, v68, v172, v175, v179, v181, v183, v185, v187, v189, v192, aBlock[0];
      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v196 = v51;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v69 = sub_100216994();
      v71 = v70;
      v72 = sub_100005FB0(v69, v70, aBlock);
      v71, v73, v74, v75, v76, v77, v78, v79, v173, v176, v180, v182, v184, v186, v188, v190, v193, aBlock[0];
      *(v56 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v54, v55, "Vouching with Reroll failed for %{public}s: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v197, v198);
    v80 = sub_100216144();
    (a6)[2](a6, 0, 0, 0, 0, v80);

    v10, v81, v82, v83, v84, v85, v86, v87;
  }
}

void sub_1001C0CC8(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, char a13, uint64_t a14, void *a15)
{
  v18 = swift_allocObject();
  *v18->endpoint = a15;
  _Block_copy(a15);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v19 = sub_100216774();
  sub_100002648(v19, qword_10029DBB0);
  v20 = a1;
  v21 = sub_100216754();
  v22 = sub_100216C54();

  v255 = a7;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    v261 = a1;
    v25 = v20;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v26 = sub_100216994();
    v27 = v18;
    v28 = a6;
    v29 = a1;
    v31 = v30;
    v32 = sub_100005FB0(v26, v30, aBlock);
    v33 = v31;
    a1 = v29;
    a6 = v28;
    v18 = v27;
    v33, v34, v35, v36, v37, v38, v39, v40, v214, v218, v222, v225, v230, v234, v237, v241, v244, v247;
    *(v23 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Joining %{public}s", v23, 0xCu);
    sub_100006128(v24, v41, v42, v43, v44, v45, v46, v47);
  }

  if (a1)
  {
    v248 = a6;
    v256 = v18;
    v48 = *(a14 + 24);
    v49 = v20;
    v50 = [(Client *)v49 cloudkitContainerName];
    v51 = sub_100216974();
    v53 = v52;

    v54 = [(Client *)v49 octagonContextID];
    v55 = sub_100216974();
    v57 = v56;

    __chkstk_darwin(v58, v59);
    type metadata accessor for Container();
    sub_100216CD4();

    v57, v97, v98, v99, v100, v101, v102, v103, v202, v204, v48, v51, v53, v55, v57, v49, v214, v218;
    v53, v104, v105, v106, v107, v108, v109, v110, v203, v205, v206, v207, v208, v209, v210, v213, v216, v220;
    v111 = aBlock[0];
    v112 = [(Client *)v49 altDSID];
    v113 = sub_100216974();
    v115 = v114;

    v116 = swift_allocObject();
    *(v116 + 16) = sub_1001D1C54;
    *(v116 + 24) = v256;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v117 = v111;
    v118 = sub_10019C8E0(v117, 0xD000000000000074, 0x800000010023C6E0);
    v227 = v117;

    v119 = swift_allocObject();
    *v119->endpoint = v118;
    *v119->containerMap = sub_1001D1BB8;
    v243 = v119;
    *v119[1]._TtCs12_SwiftObject_opaque = v116;
    v120 = kSecurityRTCEventNameJoinWithVoucherInTPH;
    v232 = v118;

    v121 = v120;
    sub_1001D0674();
    v123 = v122;
    v239 = v113;
    v246 = v115;
    v124 = sub_100216964();
    if (a10)
    {
      v125 = sub_100216964();
    }

    else
    {
      v125 = 0;
    }

    v126 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a12)
    {
      v127 = sub_100216964();
    }

    else
    {
      v127 = 0;
    }

    LOBYTE(v211) = a13 & 1;
    v224 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v124 flowID:v125 deviceSessionID:v127 eventName:v121 testsAreEnabled:v123 canSendMetrics:v211 category:v126];

    v128 = kSecurityRTCEventNameFetchAndPersistChanges;
    sub_1001D0674();
    v130 = v129;
    v131 = sub_100216964();
    if (a10)
    {
      v132 = sub_100216964();
      if (a12)
      {
LABEL_18:
        v133 = sub_100216964();
        goto LABEL_21;
      }
    }

    else
    {
      v132 = 0;
      if (a12)
      {
        goto LABEL_18;
      }
    }

    v133 = 0;
LABEL_21:
    LOBYTE(v212) = a13 & 1;
    v221 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v131 flowID:v132 deviceSessionID:v133 eventName:v128 testsAreEnabled:v130 canSendMetrics:v212 category:v126];

    v134 = swift_allocObject();
    *(v134 + 16) = v221;
    *(v134 + 24) = v224;
    *(v134 + 32) = sub_1001D0E9C;
    *(v134 + 40) = v243;
    *(v134 + 48) = v239;
    *(v134 + 56) = v246;
    *(v134 + 64) = a9;
    *(v134 + 72) = a10;
    *(v134 + 80) = a11;
    *(v134 + 88) = a12;
    *(v134 + 96) = a13 & 1;
    *(v134 + 104) = v227;
    *(v134 + 112) = a2;
    *(v134 + 120) = a3;
    *(v134 + 128) = a4;
    *(v134 + 136) = a5;
    *(v134 + 144) = a8;
    *(v134 + 152) = v248;
    *(v134 + 160) = v255;
    v240 = *&v227[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v135 = swift_allocObject();
    *(v135 + 16) = 0;
    *(v135 + 24) = v227;
    *(v135 + 32) = sub_1001D0EA8;
    *(v135 + 40) = v134;
    v136 = swift_allocObject();
    *v136->endpoint = sub_1001ACE7C;
    *v136->containerMap = v135;
    aBlock[4] = sub_1000574B4;
    v260 = v136;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002875C0;
    v137 = _Block_copy(aBlock);
    v217 = v260;

    v228 = v227;
    v258 = v221;
    v257 = v224;
    v138 = v243;

    sub_100012558(a2, a3);
    sub_100012558(a4, a5);

    v217, v139, v140, v141, v142, v143, v144, v145;
    [v240 performBlockAndWait:v137];
    _Block_release(v137);
    LOBYTE(v137) = swift_isEscapingClosureAtFileLocation();
    v246, v146, v147, v148, v149, v150, v151, v152, v217, v221, v224, v228, v232, v116, v240, v243, v246, v248;
    v236, v153, v154, v155, v156, v157, v158, v159;
    v233, v160, v161, v162, v163, v164, v165, v166;
    v138, v167, v168, v169, v170, v171, v172, v173;

    v134, v174, v175, v176, v177, v178, v179, v180;
    v135, v181, v182, v183, v184, v185, v186, v187;
    v136, v188, v189, v190, v191, v192, v193, v194;
    if (v137)
    {
      __break(1u);
    }

    else
    {
      v256, v195, v196, v197, v198, v199, v200, v201;
    }

    return;
  }

  sub_1000561D0();
  v60 = swift_allocError();
  *v61 = xmmword_100226AD0;
  *(v61 + 16) = 13;
  swift_willThrow();
  v62 = v20;
  swift_errorRetain();
  v63 = sub_100216754();
  v64 = sub_100216C74();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v65 = 136446466;
    v261 = 0;
    v66 = v62;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v67 = sub_100216994();
    v69 = v68;
    v70 = sub_100005FB0(v67, v68, aBlock);
    v69, v71, v72, v73, v74, v75, v76, v77, v214, v218, v222, v225, v230, v234, v237, v241, v244, v247;
    *(v65 + 4) = v70;
    *(v65 + 12) = 2082;
    v261 = v60;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v78 = sub_100216994();
    v80 = v79;
    v81 = sub_100005FB0(v78, v79, aBlock);
    v80, v82, v83, v84, v85, v86, v87, v88, v215, v219, v223, v226, v231, v235, v238, v242, v245, v249;
    *(v65 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v63, v64, "Joining failed for %{public}s: %{public}s", v65, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  sub_1001ADD74(v262, v263);
  v89 = sub_100216144();
  (*(a15 + 2))(a15, 0, 0, 0, v89);

  v18, v90, v91, v92, v93, v94, v95, v96;
}

void sub_1001C178C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *v8->endpoint = a4;
  v192 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  v10 = sub_100002648(v9, qword_10029DBB0);
  v11 = a1;
  v190 = v10;
  v12 = sub_100216754();
  v13 = sub_100216C54();

  v194 = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v14 = 136446210;
    v203 = a1;
    v16 = v11;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v17 = sub_100216994();
    v19 = v18;
    v20 = v8;
    v21 = a2;
    v22 = a3;
    v23 = sub_100005FB0(v17, v18, &aBlock);
    v19, v24, v25, v26, v27, v28, v29, v30, v179, v184, v187, v190, v192, v194, aBlock, v198, v199, v200;
    *(v14 + 4) = v23;
    a3 = v22;
    a2 = v21;
    v8 = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to preflight a preapproved join for %{public}s", v14, 0xCu);
    sub_100006128(v15, v31, v32, v33, v34, v35, v36, v37);
  }

  if (a1)
  {
    v180 = a2;
    v188 = v8;
    v38 = *(a3 + 24);
    v39 = v194;
    v40 = [v39 cloudkitContainerName];
    v41 = sub_100216974();
    v43 = v42;

    v44 = [v39 octagonContextID];
    v45 = sub_100216974();
    v47 = v46;

    __chkstk_darwin(v48, v49);
    type metadata accessor for Container();
    sub_100216CD4();

    v47, v87, v88, v89, v90, v91, v92, v93, v169, v171, v38, v41, v43, v45, v47, v39, v180, a1;
    v43, v94, v95, v96, v97, v98, v99, v100, v170, v172, v173, v174, v175, v176, v177, v178, v182, v186;
    v101 = aBlock;
    v102 = swift_allocObject();
    *v102->endpoint = sub_1001D1BB0;
    *v102->containerMap = v188;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v103 = v101;
    v104 = sub_10019C8E0(v103, 0xD000000000000030, 0x800000010023C6A0);

    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = sub_1001D1B9C;
    *(v105 + 32) = v102;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_1001D0E84;
    *(v106 + 24) = v105;
    *(v106 + 32) = v103;
    *(v106 + 40) = v183;
    v196 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = v103;
    *(v107 + 32) = sub_1001D0E90;
    *(v107 + 40) = v106;
    v108 = swift_allocObject();
    *v108->endpoint = sub_1001ACE7C;
    *v108->containerMap = v107;
    v201 = sub_1000574B4;
    v202 = v108;
    aBlock = _NSConcreteStackBlock;
    v198 = 1107296256;
    v199 = sub_100109050;
    v200 = &unk_1002874A8;
    v109 = _Block_copy(&aBlock);
    v110 = v202;

    v111 = v103;

    v110, v112, v113, v114, v115, v116, v117, v118;
    [v196 performBlockAndWait:v109];
    _Block_release(v109);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v188, v120, v121, v122, v123, v124, v125, v126;

    v102, v127, v128, v129, v130, v131, v132, v133;
    v104, v134, v135, v136, v137, v138, v139, v140;
    v105, v141, v142, v143, v144, v145, v146, v147;
    v106, v148, v149, v150, v151, v152, v153, v154;
    v107, v155, v156, v157, v158, v159, v160, v161;
    v108, v162, v163, v164, v165, v166, v167, v168;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v50 = swift_allocError();
    *v51 = xmmword_100226AD0;
    *(v51 + 16) = 13;
    swift_willThrow();
    v52 = v194;
    swift_errorRetain();
    v53 = sub_100216754();
    v54 = sub_100216C74();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v55 = 136446466;
      v203 = 0;
      v56 = v52;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v57 = sub_100216994();
      v59 = v58;
      v60 = sub_100005FB0(v57, v58, &aBlock);
      v59, v61, v62, v63, v64, v65, v66, v67, v179, v184, v187, v190, v192, v194, aBlock, v198, v199, v200;
      *(v55 + 4) = v60;
      *(v55 + 12) = 2082;
      v203 = v50;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v68 = sub_100216994();
      v70 = v69;
      v71 = sub_100005FB0(v68, v69, &aBlock);
      v70, v72, v73, v74, v75, v76, v77, v78, v181, v185, v189, v191, v193, v195, aBlock, v198, v199, v200;
      *(v55 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v53, v54, "preflightPreapprovedJoin failed for %{public}s: %{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v204, v205);
    v79 = sub_100216144();
    (*(v192 + 2))(v192, 0, v79);

    v8, v80, v81, v82, v83, v84, v85, v86;
  }
}

void sub_1001C1F04(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, unsigned __int8 a11, uint64_t a12, void *a13)
{
  v197 = a5;
  v199 = a7;
  v203 = a3;
  v205 = a4;
  v201 = a2;
  v16 = swift_allocObject();
  *v16->endpoint = a13;
  v209 = a13;
  _Block_copy(a13);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v17 = sub_100216774();
  v18 = sub_100002648(v17, qword_10029DBB0);
  v19 = a1;
  v207 = v18;
  v20 = sub_100216754();
  v21 = sub_100216C54();

  v212 = v16;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a6;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    v215 = a1;
    v25 = v19;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v26 = sub_100216994();
    v28 = v27;
    v29 = a1;
    v30 = sub_100005FB0(v26, v27, aBlock);
    v28, v31, v32, v33, v34, v35, v36, v37, v185, v190, v195, v197, v199, v201, v203, v205, v207, a13;
    *(v23 + 4) = v30;
    a1 = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Attempting a preapproved join for %{public}s", v23, 0xCu);
    sub_100006128(v24, v38, v39, v40, v41, v42, v43, v44);

    a6 = v22;
    v16 = v212;
  }

  if (a1)
  {
    v186 = a1;
    v191 = a6;
    v45 = *(a12 + 24);
    v46 = v19;
    v47 = [(Client *)v46 cloudkitContainerName];
    v48 = sub_100216974();
    v50 = v49;

    v51 = [(Client *)v46 octagonContextID];
    v52 = sub_100216974();
    v54 = v53;

    __chkstk_darwin(v55, v56);
    type metadata accessor for Container();
    sub_100216CD4();

    v54, v94, v95, v96, v97, v98, v99, v100, v175, v177, v45, v48, v50, v52, v54, v46, v186, v191;
    v50, v101, v102, v103, v104, v105, v106, v107, v176, v178, v179, v180, v181, v182, v183, v184, v188, v193;
    v108 = aBlock[0];
    v109 = swift_allocObject();
    *v109->endpoint = sub_1001D0E08;
    *v109->containerMap = v212;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v110 = v108;
    v189 = sub_10019C8E0(v110, 0xD000000000000068, 0x800000010023C630);

    v111 = swift_allocObject();
    *(v111 + 16) = v189;
    *(v111 + 24) = sub_1001D0E10;
    *(v111 + 32) = v109;
    v112 = swift_allocObject();
    *(v112 + 16) = sub_1001D0E2C;
    *(v112 + 24) = v111;
    *(v112 + 32) = v110;
    *(v112 + 40) = v201;
    *(v112 + 48) = v203;
    *(v112 + 56) = v205;
    *(v112 + 64) = v197;
    *(v112 + 72) = v194;
    *(v112 + 80) = v199;
    *(v112 + 88) = a8;
    *(v112 + 96) = a9;
    *(v112 + 104) = a10;
    *(v112 + 112) = a11 & 1;
    v211 = *&v110[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v113 = swift_allocObject();
    *(v113 + 16) = v110;
    *(v113 + 24) = sub_1001D0E38;
    *(v113 + 32) = v112;
    v114 = swift_allocObject();
    *v114->endpoint = sub_1001ACE84;
    *v114->containerMap = v113;
    aBlock[4] = sub_1000574B4;
    v214 = v114;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287390;
    v115 = _Block_copy(aBlock);
    v116 = v214;

    v117 = v110;

    v116, v118, v119, v120, v121, v122, v123, v124;
    [v211 performBlockAndWait:v115];
    _Block_release(v115);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v212, v126, v127, v128, v129, v130, v131, v132;

    v109, v133, v134, v135, v136, v137, v138, v139;
    v189, v140, v141, v142, v143, v144, v145, v146;
    v111, v147, v148, v149, v150, v151, v152, v153;
    v112, v154, v155, v156, v157, v158, v159, v160;
    v113, v161, v162, v163, v164, v165, v166, v167;
    v114, v168, v169, v170, v171, v172, v173, v174;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v57 = swift_allocError();
    *v58 = xmmword_100226AD0;
    *(v58 + 16) = 13;
    swift_willThrow();
    v59 = v19;
    swift_errorRetain();
    v60 = sub_100216754();
    v61 = sub_100216C74();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v62 = 136446466;
      v215 = 0;
      v63 = v59;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v64 = sub_100216994();
      v66 = v65;
      v67 = sub_100005FB0(v64, v65, aBlock);
      v66, v68, v69, v70, v71, v72, v73, v74, v185, v190, v195, v197, v199, v201, v203, v205, v207, v209;
      *(v62 + 4) = v67;
      *(v62 + 12) = 2082;
      v215 = v57;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v75 = sub_100216994();
      v77 = v76;
      v78 = sub_100005FB0(v75, v76, aBlock);
      v77, v79, v80, v81, v82, v83, v84, v85, v187, v192, v196, v198, v200, v202, v204, v206, v208, v210;
      *(v62 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v60, v61, "attemptPreapprovedJoin failed for %{public}s: %{public}s", v62, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v216, v217);
    v86 = sub_100216144();
    (*(v209 + 2))(v209, 0, 0, 0, v86);

    v16, v87, v88, v89, v90, v91, v92, v93;
  }
}

void sub_1001C2714(id a1, int a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, __int128 a12, void *a14, uint64_t a15, void (**a16)(void, void, void, void))
{
  v206 = a5;
  v208 = a7;
  v214 = a4;
  v204 = a3;
  LODWORD(v211) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = a16;
  _Block_copy(a16);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v19 = sub_100216774();
  sub_100002648(v19, qword_10029DBB0);
  v20 = a1;
  v21 = sub_100216754();
  v22 = sub_100216C54();

  v216 = v18;
  v217 = v20;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = a6;
    v24 = a8;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v221 = v26;
    *v25 = 136446210;
    v218[0] = a1;
    v27 = v20;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v28 = sub_100216994();
    v30 = v29;
    v31 = a1;
    v32 = sub_100005FB0(v28, v29, &v221);
    v30, v33, v34, v35, v36, v37, v38, v39, v190, v194, v198, v200, v202, v204, v206, v208, v211, v214;
    *(v25 + 4) = v32;
    a1 = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Updating %{public}s", v25, 0xCu);
    sub_100006128(v26, v40, v41, v42, v43, v44, v45, v46);

    a8 = v24;
    a6 = v23;
    v18 = v216;
  }

  if (!a1)
  {
    sub_1000561D0();
    v59 = swift_allocError();
    *v60 = xmmword_100226AD0;
    *(v60 + 16) = 13;
    swift_willThrow();
LABEL_8:
    v61 = v217;
    swift_errorRetain();
    v62 = sub_100216754();
    v63 = sub_100216C74();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *&v221 = swift_slowAlloc();
      *v64 = 136446466;
      v65 = v61;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v66 = sub_100216994();
      v68 = v67;
      v69 = sub_100005FB0(v66, v67, &v221);
      v68, v70, v71, v72, v73, v74, v75, v76, v190, v194, v198, v200, v202, v204, v206, v208, v211, v214;
      *(v64 + 4) = v69;
      *(v64 + 12) = 2082;
      v218[0] = v59;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v77 = sub_100216994();
      v79 = v78;
      v80 = sub_100005FB0(v77, v78, &v221);
      v79, v81, v82, v83, v84, v85, v86, v87, v191, v195, v199, v201, v203, v205, v207, v209, v212, v215;
      *(v64 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v62, v63, "update failed for %{public}s: %{public}s", v64, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v228, v229);
    v88 = sub_100216144();
    (a16)[2](a16, 0, 0, v88);

    v96 = v18;
    goto LABEL_11;
  }

  v200 = a8;
  v202 = a1;
  v198 = a6;
  v47 = *(a15 + 24);
  v48 = v217;
  v49 = [v48 cloudkitContainerName];
  v50 = sub_100216974();
  v52 = v51;

  v53 = [v48 octagonContextID];
  v54 = sub_100216974();
  v56 = v55;

  __chkstk_darwin(v57, v58);
  type metadata accessor for Container();
  sub_100216CD4();

  v56, v97, v98, v99, v100, v101, v102, v103, v180, v182, v47, v50, v52, v54, v56, v48, v190, v194;
  v52, v104, v105, v106, v107, v108, v109, v110, v181, v183, v184, v185, v186, v187, v188, v189, v192, v196;
  v111 = v221;
  if (a11)
  {
    v112 = [a11 intValue];
    v113 = v112;
    v18 = v216;
    if (v112 - 1 >= 3)
    {
      v114 = v112;
      sub_1000561D0();
      v59 = swift_allocError();
      *v115 = v114;
      *(v115 + 8) = 0;
      *(v115 + 16) = 7;
      swift_willThrow();

      goto LABEL_8;
    }
  }

  else
  {
    v113 = 0;
  }

  if (a9)
  {
    v193 = [a9 unsignedLongLongValue];
  }

  else
  {
    v193 = 0;
  }

  v116 = swift_allocObject();
  *v116->endpoint = sub_1001D0C00;
  *v116->containerMap = v216;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();

  v117 = v111;
  v197 = sub_10019C8E0(v117, 0xD0000000000000A1, 0x800000010023C560);

  v118 = swift_allocObject();
  *(v118 + 16) = v197;
  *(v118 + 24) = sub_1001D0D2C;
  *(v118 + 32) = v116;
  *&v221 = v204;
  *(&v221 + 1) = v214;
  *&v222 = v206;
  *(&v222 + 1) = v198;
  *&v223 = v208;
  *(&v223 + 1) = v200;
  *&v224 = v193;
  BYTE8(v224) = a9 == 0;
  *&v225 = a10;
  DWORD2(v225) = v113;
  BYTE12(v225) = a11 == 0;
  v226 = a12;
  v227 = a14;
  v119 = swift_allocObject();
  v120 = v223;
  *(v119 + 88) = v224;
  v121 = v226;
  *(v119 + 104) = v225;
  *(v119 + 120) = v121;
  v122 = v222;
  *(v119 + 40) = v221;
  *(v119 + 56) = v122;
  *(v119 + 16) = sub_1001D0D4C;
  *(v119 + 24) = v118;
  *(v119 + 32) = v117;
  *(v119 + 136) = v227;
  *(v119 + 72) = v120;
  *(v119 + 144) = 0;
  v210 = *&v117[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v123 = swift_allocObject();
  *(v123 + 16) = v211 & 1;
  *(v123 + 24) = v117;
  *(v123 + 32) = sub_1001A9BF8;
  *(v123 + 40) = v119;
  v124 = swift_allocObject();
  *v124->endpoint = sub_1001ACE7C;
  *v124->containerMap = v123;
  v219[4] = sub_1000574B4;
  v220 = v124;
  v219[0] = _NSConcreteStackBlock;
  v219[1] = 1107296256;
  v219[2] = sub_100109050;
  v219[3] = &unk_100287278;
  v125 = _Block_copy(v219);
  v126 = v220;
  v127 = v117;
  sub_1001D0D58(&v221, v218);
  v213 = v127;
  sub_1001D0D58(&v221, v218);
  v128 = a14;

  v129 = a12;
  v130 = *(&a12 + 1);
  v126, v131, v132, v133, v134, v135, v136, v137;
  [v210 performBlockAndWait:v125];
  _Block_release(v125);
  LOBYTE(v125) = swift_isEscapingClosureAtFileLocation();
  v119, v138, v139, v140, v141, v142, v143, v144;
  v123, v145, v146, v147, v148, v149, v150, v151;
  v124, v152, v153, v154, v155, v156, v157, v158;
  sub_1001D0DB4(&v221);
  sub_1001D0DB4(&v221);
  v116, v159, v160, v161, v162, v163, v164, v165;

  v197, v166, v167, v168, v169, v170, v171, v172;
  v118, v173, v174, v175, v176, v177, v178, v179;
  if ((v125 & 1) == 0)
  {
    v96 = v216;
LABEL_11:
    v96, v89, v90, v91, v92, v93, v94, v95;
    return;
  }

  __break(1u);
}

void sub_1001C3050(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *v8->endpoint = a4;
  v184 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  v10 = sub_100002648(v9, qword_10029DBB0);
  v11 = a1;
  v182 = v10;
  v12 = sub_100216754();
  v13 = sub_100216C54();

  v186 = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v14 = 136446210;
    v195 = a1;
    v16 = v11;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v17 = sub_100216994();
    v19 = v18;
    v20 = v8;
    v21 = a2;
    v22 = a3;
    v23 = sub_100005FB0(v17, v18, &aBlock);
    v19, v24, v25, v26, v27, v28, v29, v30, v171, v176, v179, v182, v184, v186, aBlock, v190, v191, v192;
    *(v14 + 4) = v23;
    a3 = v22;
    a2 = v21;
    v8 = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "setPreapprovedKeys %{public}s", v14, 0xCu);
    sub_100006128(v15, v31, v32, v33, v34, v35, v36, v37);
  }

  if (a1)
  {
    v172 = a2;
    v180 = v8;
    v38 = *(a3 + 24);
    v39 = v186;
    v40 = [v39 cloudkitContainerName];
    v41 = sub_100216974();
    v43 = v42;

    v44 = [v39 octagonContextID];
    v45 = sub_100216974();
    v47 = v46;

    __chkstk_darwin(v48, v49);
    type metadata accessor for Container();
    sub_100216CD4();

    v47, v87, v88, v89, v90, v91, v92, v93, v161, v163, v38, v41, v43, v45, v47, v39, v172, a1;
    v43, v94, v95, v96, v97, v98, v99, v100, v162, v164, v165, v166, v167, v168, v169, v170, v174, v178;
    v101 = aBlock;
    v102 = swift_allocObject();
    *v102->endpoint = sub_1001D1BAC;
    *v102->containerMap = v180;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v103 = v101;
    v104 = sub_10019C8E0(v103, 0xD00000000000001BLL, 0x800000010023C540);

    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = sub_1001D1B98;
    *(v105 + 32) = v102;
    v188 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v106 = swift_allocObject();
    *(v106 + 16) = v175;
    *(v106 + 24) = v103;
    *(v106 + 32) = sub_1001D0D14;
    *(v106 + 40) = v105;
    v107 = swift_allocObject();
    *v107->endpoint = sub_1001D0D20;
    *v107->containerMap = v106;
    v193 = sub_1000574B4;
    v194 = v107;
    aBlock = _NSConcreteStackBlock;
    v190 = 1107296256;
    v191 = sub_100109050;
    v192 = &unk_100287160;
    v108 = _Block_copy(&aBlock);
    v109 = v194;
    v110 = v103;

    v109, v111, v112, v113, v114, v115, v116, v117;
    [v188 performBlockAndWait:v108];
    v105, v118, v119, v120, v121, v122, v123, v124;
    v104, v125, v126, v127, v128, v129, v130, v131;
    _Block_release(v108);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v180, v133, v134, v135, v136, v137, v138, v139;

    v102, v140, v141, v142, v143, v144, v145, v146;
    v106, v147, v148, v149, v150, v151, v152, v153;
    v107, v154, v155, v156, v157, v158, v159, v160;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v50 = swift_allocError();
    *v51 = xmmword_100226AD0;
    *(v51 + 16) = 13;
    swift_willThrow();
    v52 = v186;
    swift_errorRetain();
    v53 = sub_100216754();
    v54 = sub_100216C74();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v55 = 136446466;
      v195 = 0;
      v56 = v52;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v57 = sub_100216994();
      v59 = v58;
      v60 = sub_100005FB0(v57, v58, &aBlock);
      v59, v61, v62, v63, v64, v65, v66, v67, v171, v176, v179, v182, v184, v186, aBlock, v190, v191, v192;
      *(v55 + 4) = v60;
      *(v55 + 12) = 2082;
      v195 = v50;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v68 = sub_100216994();
      v70 = v69;
      v71 = sub_100005FB0(v68, v69, &aBlock);
      v70, v72, v73, v74, v75, v76, v77, v78, v173, v177, v181, v183, v185, v187, aBlock, v190, v191, v192;
      *(v55 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v53, v54, "setPreapprovedKeys failed for %{public}s: %{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v196, v197);
    v79 = sub_100216144();
    (*(v184 + 2))(v184, 0, v79);

    v8, v80, v81, v82, v83, v84, v85, v86;
  }
}

void sub_1001C3780(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v131 = a4;
  v124 = a2;
  v126 = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  v9 = sub_100002648(v8, qword_10029DBB0);
  v10 = a1;
  v133 = v9;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v135 = v14;
    *v13 = 136446210;
    v15 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v16 = sub_100216994();
    v18 = v17;
    v19 = sub_100005FB0(v16, v17, &v135);
    v18, v20, v21, v22, v23, v24, v25, v26, v117, v121, v124, v126, v128, v131, v133, a1, v135, v136;
    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Updating TLKs for %{public}s", v13, 0xCu);
    sub_100006128(v14, v27, v28, v29, v30, v31, v32, v33);
  }

  if (a1)
  {
    v118 = a1;
    v129 = v7;
    v34 = *(v131 + 24);
    v35 = v10;
    v36 = [v35 cloudkitContainerName];
    v37 = sub_100216974();
    v39 = v38;

    v40 = [v35 octagonContextID];
    v41 = sub_100216974();
    v43 = v42;

    __chkstk_darwin(v44, v45);
    type metadata accessor for Container();
    sub_100216CD4();

    v43, v76, v77, v78, v79, v80, v81, v82, v107, v109, v34, v37, v39, v41, v43, v35, v118, a5;
    v39, v83, v84, v85, v86, v87, v88, v89, v108, v110, v111, v112, v113, v114, v115, v116, v120, v123;
    v90 = v135;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1001D1BB4;
    *(v91 + 24) = v129;

    sub_10016BF00(v124, v126, sub_1001D0CF4, v91);
    v129, v92, v93, v94, v95, v96, v97, v98;

    v106 = v91;
  }

  else
  {
    sub_1000561D0();
    v46 = swift_allocError();
    *v47 = xmmword_100226AD0;
    *(v47 + 16) = 13;
    swift_willThrow();
    v48 = v10;
    swift_errorRetain();
    v49 = sub_100216754();
    v50 = sub_100216C74();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *v51 = 136446466;
      v52 = v48;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v53 = sub_100216994();
      v55 = v54;
      v56 = sub_100005FB0(v53, v54, &v135);
      v55, v57, v58, v59, v60, v61, v62, v63, v117, v121, v124, v126, v128, v131, v133, 0, v135, v136;
      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v64 = sub_100216994();
      v66 = v65;
      v67 = sub_100005FB0(v64, v65, &v135);
      v66, v68, v69, v70, v71, v72, v73, v74, v119, v122, v125, v127, v130, v132, v134, v46, v135, v136;
      *(v51 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v49, v50, "updateTLKs failed for %{public}s: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v137, v138);
    v75 = sub_100216144();
    (a5)[2](a5, 0, v75);

    v106 = v7;
  }

  v106, v99, v100, v101, v102, v103, v104, v105;
}

void sub_1001C3CB0(void *a1, void *a2, void (**a3)(void *, void *))
{
  v176 = a2;
  v5 = swift_allocObject();
  *v5->endpoint = a3;
  v178 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136446210;
    v187 = a1;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &aBlock);
    v16, v18, v19, v20, v21, v22, v23, v24, v165, v168, v171, v173, v176, v178, aBlock, v182, v183, v184;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Departing %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v174 = v5;
    v32 = v176[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v81, v82, v83, v84, v85, v86, v87, v155, v157, v32, v35, v37, v39, v41, v33, v165, v7;
    v37, v88, v89, v90, v91, v92, v93, v94, v156, v158, v159, v160, v161, v162, v163, v164, v167, v170;
    v95 = aBlock;
    v96 = swift_allocObject();
    *v96->endpoint = sub_1001D1C78;
    *v96->containerMap = v174;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v97 = v95;
    v98 = sub_10019C8E0(v97, 0xD00000000000001FLL, 0x800000010023C520);

    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = sub_1001D1C74;
    *(v99 + 32) = v96;
    v180 = *&v97[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v100 = swift_allocObject();
    *(v100 + 16) = v97;
    *(v100 + 24) = sub_1001D0CDC;
    *(v100 + 32) = v99;
    v101 = swift_allocObject();
    *v101->endpoint = sub_1001D0CE8;
    *v101->containerMap = v100;
    v185 = sub_1000574B4;
    v186 = v101;
    aBlock = _NSConcreteStackBlock;
    v182 = 1107296256;
    v183 = sub_100109050;
    v184 = &unk_100287020;
    v102 = _Block_copy(&aBlock);
    v103 = v186;
    v104 = v97;

    v103, v105, v106, v107, v108, v109, v110, v111;
    [v180 performBlockAndWait:v102];
    v99, v112, v113, v114, v115, v116, v117, v118;
    v98, v119, v120, v121, v122, v123, v124, v125;
    _Block_release(v102);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v174, v127, v128, v129, v130, v131, v132, v133;

    v96, v134, v135, v136, v137, v138, v139, v140;
    v100, v141, v142, v143, v144, v145, v146, v147;
    v101, v148, v149, v150, v151, v152, v153, v154;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v49 = 136446466;
      v187 = 0;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &aBlock);
      v53, v55, v56, v57, v58, v59, v60, v61, v165, v168, v171, v173, v176, v178, aBlock, v182, v183, v184;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      v187 = v44;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &aBlock);
      v64, v66, v67, v68, v69, v70, v71, v72, v166, v169, v172, v175, v177, v179, aBlock, v182, v183, v184;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "departByDistrustingSelf failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v188, v189);
    v73 = sub_100216144();
    v178[2](v178, v73);

    v5, v74, v75, v76, v77, v78, v79, v80;
  }
}

void sub_1001C43A4(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4)
{
  v7 = swift_allocObject();
  *v7->endpoint = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  v9 = sub_100002648(v8, qword_10029DBB0);
  v10 = a1;

  v197 = v9;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  a2, v13, v14, v15, v16, v17, v18, v19, v177, v183, v188, a3, v197, a4, aBlock, v206, v207, v208;
  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v20 = 136446466;
    v21 = sub_100216BC4();
    v23 = v22;
    v24 = sub_100005FB0(v21, v22, &aBlock);
    v23, v25, v26, v27, v28, v29, v30, v31, v178, v184, v189, v194, v198, v201, aBlock, v206, v207, v208;
    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v211 = a1;
    v32 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v33 = sub_100216994();
    v35 = v34;
    v36 = sub_100005FB0(v33, v34, &aBlock);
    v35, v37, v38, v39, v40, v41, v42, v43, v179, v185, v190, v195, v199, v202, aBlock, v206, v207, v208;
    *(v20 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v11, v12, "Distrusting %{public}s in %{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v191 = v7;
    v44 = v194[3];
    v45 = v10;
    v46 = [v45 cloudkitContainerName];
    v47 = sub_100216974();
    v49 = v48;

    v50 = [v45 octagonContextID];
    v51 = sub_100216974();
    v53 = v52;

    __chkstk_darwin(v54, v55);
    type metadata accessor for Container();
    sub_100216CD4();

    v53, v93, v94, v95, v96, v97, v98, v99, v167, v169, v44, v47, v49, v51, v53, v45, a2, a1;
    v49, v100, v101, v102, v103, v104, v105, v106, v168, v170, v171, v172, v173, v174, v175, v176, v181, v187;
    v107 = aBlock;
    v108 = swift_allocObject();
    *v108->endpoint = sub_1001D1C78;
    *v108->containerMap = v191;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v109 = v107;
    v110 = sub_10019C8E0(v109, 0xD000000000000018, 0x800000010023C500);

    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = sub_1001D1C74;
    *(v111 + 32) = v108;
    v204 = *&v109[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v112 = swift_allocObject();
    *(v112 + 16) = v109;
    *(v112 + 24) = sub_1001D0CC4;
    *(v112 + 32) = v111;
    *(v112 + 40) = v182;
    v113 = swift_allocObject();
    *v113->endpoint = sub_1001D0CD0;
    *v113->containerMap = v112;
    v209 = sub_1000574B4;
    v210 = v113;
    aBlock = _NSConcreteStackBlock;
    v206 = 1107296256;
    v207 = sub_100109050;
    v208 = &unk_100286F30;
    v114 = _Block_copy(&aBlock);
    v115 = v210;

    v116 = v109;

    v115, v117, v118, v119, v120, v121, v122, v123;
    [v204 performBlockAndWait:v114];
    v111, v124, v125, v126, v127, v128, v129, v130;
    v110, v131, v132, v133, v134, v135, v136, v137;
    _Block_release(v114);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v191, v139, v140, v141, v142, v143, v144, v145;

    v108, v146, v147, v148, v149, v150, v151, v152;
    v112, v153, v154, v155, v156, v157, v158, v159;
    v113, v160, v161, v162, v163, v164, v165, v166;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v56 = swift_allocError();
    *v57 = xmmword_100226AD0;
    *(v57 + 16) = 13;
    swift_willThrow();
    v58 = v10;
    swift_errorRetain();
    v59 = sub_100216754();
    v60 = sub_100216C74();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v61 = 136446466;
      v211 = 0;
      v62 = v58;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, &aBlock);
      v65, v67, v68, v69, v70, v71, v72, v73, v178, v184, v189, v194, v198, v201, aBlock, v206, v207, v208;
      *(v61 + 4) = v66;
      *(v61 + 12) = 2082;
      v211 = v56;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v74 = sub_100216994();
      v76 = v75;
      v77 = sub_100005FB0(v74, v75, &aBlock);
      v76, v78, v79, v80, v81, v82, v83, v84, v180, v186, v192, v196, v200, v203, aBlock, v206, v207, v208;
      *(v61 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v59, v60, "distrustPeerIDs failed for %{public}s: %{public}s", v61, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v212, v213);
    v85 = sub_100216144();
    (*(v201 + 16))(v201, v85);

    v7, v86, v87, v88, v89, v90, v91, v92;
  }
}

void sub_1001C4B0C(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4)
{
  v193 = swift_allocObject();
  *(v193 + 16) = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;

  v9 = sub_100216754();
  v10 = sub_100216C94();

  a2, v11, v12, v13, v14, v15, v16, v17, v173, v178, v183, a3, a4, v193, aBlock, v197, v198, v199;
  if (os_log_type_enabled(v9, v10))
  {
    v18 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v18 = 136446466;
    v19 = sub_100216BC4();
    v21 = v20;
    v22 = sub_100005FB0(v19, v20, &aBlock);
    v21, v23, v24, v25, v26, v27, v28, v29, v174, v179, v184, v187, v190, v194, aBlock, v197, v198, v199;
    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v202 = a1;
    v30 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v31 = sub_100216994();
    v33 = v32;
    v34 = sub_100005FB0(v31, v32, &aBlock);
    v33, v35, v36, v37, v38, v39, v40, v41, v175, v180, v185, v188, v191, v195, aBlock, v197, v198, v199;
    *(v18 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v9, v10, "Dropping %{public}s in %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v181 = v7;
    v42 = v187[3];
    v43 = v8;
    v44 = [v43 cloudkitContainerName];
    v45 = sub_100216974();
    v47 = v46;

    v48 = [v43 octagonContextID];
    v49 = sub_100216974();
    v51 = v50;

    __chkstk_darwin(v52, v53);
    type metadata accessor for Container();
    sub_100216CD4();

    v51, v89, v90, v91, v92, v93, v94, v95, v163, v165, v42, v45, v47, v49, v51, v43, a2, v181;
    v47, v96, v97, v98, v99, v100, v101, v102, v164, v166, v167, v168, v169, v170, v171, v172, v176, v182;
    v103 = aBlock;
    v104 = swift_allocObject();
    *v104->endpoint = sub_1001D1C78;
    *v104->containerMap = v194;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v105 = v103;
    v106 = sub_10019C8E0(v105, 0xD000000000000014, 0x800000010023C4E0);

    v107 = swift_allocObject();
    *(v107 + 16) = v106;
    *(v107 + 24) = sub_1001D0C90;
    *(v107 + 32) = v104;
    v192 = *&v105[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v108 = swift_allocObject();
    *(v108 + 16) = v105;
    *(v108 + 24) = sub_1001D0CAC;
    *(v108 + 32) = v107;
    *(v108 + 40) = v177;
    v109 = swift_allocObject();
    *v109->endpoint = sub_1001D0CB8;
    *v109->containerMap = v108;
    v200 = sub_1000574B4;
    v201 = v109;
    aBlock = _NSConcreteStackBlock;
    v197 = 1107296256;
    v198 = sub_100109050;
    v199 = &unk_100286E40;
    v110 = _Block_copy(&aBlock);
    v111 = v201;

    v112 = v105;

    v111, v113, v114, v115, v116, v117, v118, v119;
    [v192 performBlockAndWait:v110];
    v107, v120, v121, v122, v123, v124, v125, v126;
    v106, v127, v128, v129, v130, v131, v132, v133;
    _Block_release(v110);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v194, v135, v136, v137, v138, v139, v140, v141;

    v104, v142, v143, v144, v145, v146, v147, v148;
    v108, v149, v150, v151, v152, v153, v154, v155;
    v109, v156, v157, v158, v159, v160, v161, v162;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v54 = xmmword_100226AD0;
    *(v54 + 16) = 13;
    swift_willThrow();
    v55 = v8;
    swift_errorRetain();
    v56 = sub_100216754();
    v57 = sub_100216C74();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v58 = 136446466;
      v202 = 0;
      v61 = v55;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &aBlock);
      v64, v66, v67, v68, v69, v70, v71, v72, v174, v179, v184, v187, v190, v194, aBlock, v197, v198, v199;
      *(v58 + 4) = v65;
      *(v58 + 12) = 2114;
      swift_errorRetain();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v73;
      *v59 = v73;
      _os_log_impl(&_mh_execute_header, v56, v57, "dropPeerIDs failed for %{public}s: %{public}@", v58, 0x16u);
      sub_1000114D4(v59, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v60, v74, v75, v76, v77, v78, v79, v80);
    }

    swift_getErrorValue();
    sub_1001ADD74(v203, v204);
    v81 = sub_100216144();
    (v190)[2](v190, v81);

    v194, v82, v83, v84, v85, v86, v87, v88;
  }
}

void sub_1001C525C(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v167 = a5;
  v169 = a6;
  v165 = a3;
  v179 = swift_allocObject();
  *v179->endpoint = a8;
  v175 = a8;
  _Block_copy(a8);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v171 = sub_100216774();
  v13 = sub_100002648(v171, qword_10029DBB0);
  v14 = a1;
  v173 = v13;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  v177 = v14;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v180[0] = v18;
    *v17 = 136446466;
    v19 = v14;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v20 = sub_100216994();
    v21 = a4;
    v22 = a1;
    v23 = a2;
    v25 = v24;
    v26 = sub_100005FB0(v20, v24, v180);
    v27 = v25;
    a2 = v23;
    a1 = v22;
    a4 = v21;
    v27, v28, v29, v30, v31, v32, v33, v34, v154, v158, v163, v165, v167, v169, v171, v173, v175, v177;
    *(v17 + 4) = v26;
    *(v17 + 12) = 2050;
    *(v17 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v15, v16, "fetchViableBottles in %{public}s from source (%{public}ld)", v17, 0x16u);
    sub_100006128(v18, v35, v36, v37, v38, v39, v40, v41);
  }

  if (a1)
  {
    v159 = a2;
    v42 = *(a7 + 24);
    v43 = v177;
    v44 = [v43 cloudkitContainerName];
    v45 = sub_100216974();
    v47 = v46;

    v48 = [v43 octagonContextID];
    v49 = sub_100216974();
    v51 = v50;

    __chkstk_darwin(v52, v53);
    type metadata accessor for Container();
    sub_100216CD4();

    v51, v90, v91, v92, v93, v94, v95, v96, v144, v146, v42, v45, v47, v49, v51, v43, a4, v159;
    v47, v97, v98, v99, v100, v101, v102, v103, v145, v147, v148, v149, v150, v151, v152, v153, v156, v161;
    v104 = v180[0];
    v105 = swift_allocObject();
    *v105->endpoint = sub_1001D0C78;
    *v105->containerMap = v179;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v106 = v104;
    v107 = sub_10019C8E0(v106, 0xD000000000000036, 0x800000010023C4A0);

    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = sub_1001D1C70;
    *(v108 + 32) = v105;
    v109 = qword_100297520;

    if (v109 != -1)
    {
      swift_once();
    }

    sub_100002648(v171, qword_10029D160);
    v110 = sub_100216754();
    v111 = sub_100216C54();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 134217984;
      *(v112 + 4) = v162;
      _os_log_impl(&_mh_execute_header, v110, v111, "beginning a fetchViableBottles from source %ld", v112, 0xCu);
    }

    if (v162 == 2)
    {
      sub_10014E26C(v165, v157, v167, v169, sub_1001D0C80, v108);
    }

    else
    {
      if (v162 != 1)
      {
        v121 = swift_allocObject();
        *v121->endpoint = sub_1001D0C80;
        *v121->containerMap = v108;
        *v121[1]._TtCs12_SwiftObject_opaque = v106;
        *&v121[1]._TtCs12_SwiftObject_opaque[8] = v165;
        *v121[1].endpoint = v157;
        *v121[1].containerMap = v167;
        *v121[2]._TtCs12_SwiftObject_opaque = v169;

        v122 = v106;

        sub_10014CAC0(1, sub_100057254, v121);

        v105, v123, v124, v125, v126, v127, v128, v129;
        v120 = v121;
        goto LABEL_20;
      }

      sub_10014CAC0(0, sub_1001D0C80, v108);
    }

    v120 = v105;
LABEL_20:
    v120, v113, v114, v115, v116, v117, v118, v119;
    v107, v130, v131, v132, v133, v134, v135, v136;
    v108, v137, v138, v139, v140, v141, v142, v143;
    goto LABEL_21;
  }

  sub_1000561D0();
  swift_allocError();
  *v54 = xmmword_100226AD0;
  *(v54 + 16) = 13;
  swift_willThrow();
  v55 = v177;
  swift_errorRetain();
  v56 = sub_100216754();
  v57 = sub_100216C74();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v180[0] = swift_slowAlloc();
    *v58 = 136446466;
    v59 = v55;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v60 = sub_100216994();
    v62 = v61;
    v63 = sub_100005FB0(v60, v61, v180);
    v62, v64, v65, v66, v67, v68, v69, v70, v154, v158, v163, v165, v167, v169, v171, v173, v175, v177;
    *(v58 + 4) = v63;
    *(v58 + 12) = 2082;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v71 = sub_100216994();
    v73 = v72;
    v74 = sub_100005FB0(v71, v72, v180);
    v73, v75, v76, v77, v78, v79, v80, v81, v155, v160, v164, v166, v168, v170, v172, v174, v176, v178;
    *(v58 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v56, v57, "fetchViableBottles failed for %{public}s: %{public}s", v58, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  sub_1001ADD74(v180[2], v180[3]);
  v82 = sub_100216144();
  (*(v175 + 2))(v175, 0, 0, v82);

LABEL_21:
  v179, v83, v84, v85, v86, v87, v88, v89;
}

void sub_1001C59F8(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v106 = a2;
  v109 = swift_allocObject();
  *v109->endpoint = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v110 = v12;
    *v11 = 136446466;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v110);
    v16, v18, v19, v20, v21, v22, v23, v24, v104, v106, v109, a1, v110, v111, v112, v113, v114[0], v114[1];
    *(v11 + 4) = v17;
    *(v11 + 12) = 2050;
    *(v11 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchViableEscrowRecords in %{public}s from source (%{public}ld)", v11, 0x16u);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v32 = *(a3 + 24);
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v46, v47, v48, v49, v50, v51, v52, v94, v96, v32, v35, v37, v39, v41, v33, v104, v106;
    v37, v53, v54, v55, v56, v57, v58, v59, v95, v97, v98, v99, v100, v101, v102, v103, v105, v107;
    v60 = v110;
    v61 = swift_allocObject();
    *v61->endpoint = sub_1001D0C60;
    *v61->containerMap = v109;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v62 = v60;
    v63 = sub_10019C8E0(v62, 0xD00000000000001ELL, 0x800000010023D900);

    v64 = swift_allocObject();
    *v64->endpoint = v63;
    *v64->containerMap = sub_1001D1BA4;
    *v64[1]._TtCs12_SwiftObject_opaque = v61;

    sub_10014C66C(v108, sub_1001D0C68, v64);
    v109, v65, v66, v67, v68, v69, v70, v71;

    v61, v72, v73, v74, v75, v76, v77, v78;
    v63, v79, v80, v81, v82, v83, v84, v85;
    v93 = v64;
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v44 = xmmword_100226AD0;
    *(v44 + 16) = 13;
    swift_willThrow();
    swift_getErrorValue();
    sub_1001ADD74(v112, v113);
    v45 = sub_100216144();
    (a4)[2](a4, 0, v45);

    v93 = v109;
  }

  v93, v86, v87, v88, v89, v90, v91, v92;
}

void sub_1001C5E58(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchEscrowContents in %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D0C30;
    *(v89 + 24) = v123;

    sub_100148428(sub_1001D0C38, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "fetchEscrowContents failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, 0, 0, 0, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001C6384(id a1, void *a2, void *a3, int a4, uint64_t a5, void (**a6)(void, void, void, void))
{
  HIDWORD(v182) = a4;
  v180 = a2;
  v10 = swift_allocObject();
  *v10->endpoint = a6;
  _Block_copy(a6);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  v12 = sub_100002648(v11, qword_10029DBB0);
  v13 = a1;
  v184 = v12;
  v14 = sub_100216754();
  v15 = sub_100216C54();

  v186 = a1;
  v189 = v10;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a3;
    v18 = a5;
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v16 = 136446210;
    v197 = a1;
    v20 = v13;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v21 = sub_100216994();
    v23 = v22;
    v24 = sub_100005FB0(v21, v22, &aBlock);
    v23, v25, v26, v27, v28, v29, v30, v31, v172, v177, v180, v182, v184, v186, v189, aBlock, v192, v193;
    *(v16 + 4) = v24;
    a1 = v186;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching policy+views for %{public}s", v16, 0xCu);
    sub_100006128(v19, v32, v33, v34, v35, v36, v37, v38);
    a5 = v18;
    a3 = v17;
    v10 = v189;
  }

  if (a1)
  {
    v173 = a3;
    v39 = *(a5 + 24);
    v40 = v13;
    v41 = [v40 cloudkitContainerName];
    v42 = sub_100216974();
    v44 = v43;

    v45 = [v40 octagonContextID];
    v46 = sub_100216974();
    v48 = v47;

    __chkstk_darwin(v49, v50);
    type metadata accessor for Container();
    sub_100216CD4();

    v48, v88, v89, v90, v91, v92, v93, v94, v162, v164, v39, v42, v44, v46, v48, v40, v173, a6;
    v44, v95, v96, v97, v98, v99, v100, v101, v163, v165, v166, v167, v168, v169, v170, v171, v175, v179;
    v102 = aBlock;
    v103 = swift_allocObject();
    *v103->endpoint = sub_1001D0C00;
    *v103->containerMap = v189;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v104 = v102;
    v105 = sub_10019C8E0(v104, 0xD00000000000003DLL, 0x800000010023C460);

    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = sub_1001D0C08;
    *(v106 + 32) = v103;
    v188 = *&v104[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v107 = swift_allocObject();
    *(v107 + 16) = v104;
    *(v107 + 24) = v180;
    *(v107 + 32) = v176;
    *(v107 + 40) = sub_1001D0C10;
    *(v107 + 48) = v106;
    *(v107 + 56) = BYTE4(v182) & 1;
    v108 = swift_allocObject();
    *v108->endpoint = sub_1001D0C1C;
    *v108->containerMap = v107;
    v195 = sub_1000574B4;
    v196 = v108;
    aBlock = _NSConcreteStackBlock;
    v192 = 1107296256;
    v193 = sub_100109050;
    v194 = &unk_100286BE8;
    v109 = _Block_copy(&aBlock);
    v110 = v196;

    v111 = v104;

    v110, v112, v113, v114, v115, v116, v117, v118;
    [v188 performBlockAndWait:v109];
    v106, v119, v120, v121, v122, v123, v124, v125;
    v105, v126, v127, v128, v129, v130, v131, v132;
    _Block_release(v109);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v189, v134, v135, v136, v137, v138, v139, v140;

    v103, v141, v142, v143, v144, v145, v146, v147;
    v107, v148, v149, v150, v151, v152, v153, v154;
    v108, v155, v156, v157, v158, v159, v160, v161;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v51 = swift_allocError();
    *v52 = xmmword_100226AD0;
    *(v52 + 16) = 13;
    swift_willThrow();
    v53 = v13;
    swift_errorRetain();
    v54 = sub_100216754();
    v55 = sub_100216C74();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v56 = 136446466;
      v197 = v186;
      v57 = v53;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v58 = sub_100216994();
      v60 = v59;
      v61 = sub_100005FB0(v58, v59, &aBlock);
      v60, v62, v63, v64, v65, v66, v67, v68, v172, v177, v180, v182, v184, v186, v189, aBlock, v192, v193;
      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v197 = v51;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v69 = sub_100216994();
      v71 = v70;
      v72 = sub_100005FB0(v69, v70, &aBlock);
      v71, v73, v74, v75, v76, v77, v78, v79, v174, v178, v181, v183, v185, v187, v190, aBlock, v192, v193;
      *(v56 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v54, v55, "fetchCurrentPolicy failed for %{public}s: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v198, v199);
    v80 = sub_100216144();
    (a6)[2](a6, 0, 0, v80);

    v10, v81, v82, v83, v84, v85, v86, v87;
  }
}

void sub_1001C6AC8(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4)
{
  v7 = swift_allocObject();
  *v7->endpoint = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  v9 = sub_100002648(v8, qword_10029DBB0);
  v10 = a1;

  v152 = v9;
  v11 = sub_100216754();
  v12 = sub_100216C54();
  a2, v13, v14, v15, v16, v17, v18, v19, v128, v133, v140, v144, a3, v152, a4, v159, v161, v162;

  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *v20 = 136446466;
    v21 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v22 = sub_100216994();
    v24 = v23;
    v25 = sub_100005FB0(v22, v23, &v161);
    v24, v26, v27, v28, v29, v30, v31, v32, v129, v134, v141, v145, v149, v153, v156, a1, v161, v162;
    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_10006094C();
    v33 = sub_100216BC4();
    v35 = v34;
    v36 = sub_100005FB0(v33, v34, &v161);
    v35, v37, v38, v39, v40, v41, v42, v43, v130, v135, v142, v146, v150, v154, v157, v160, v161, v162;
    *(v20 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching policy documents %{public}s with versions: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v136 = a2;
    v44 = v149[3];
    v45 = v10;
    v46 = [v45 cloudkitContainerName];
    v47 = sub_100216974();
    v49 = v48;

    v50 = [v45 octagonContextID];
    v51 = sub_100216974();
    v53 = v52;

    __chkstk_darwin(v54, v55);
    type metadata accessor for Container();
    sub_100216CD4();

    v53, v93, v94, v95, v96, v97, v98, v99, v118, v120, v44, v47, v49, v51, v53, v45, v129, v136;
    v49, v100, v101, v102, v103, v104, v105, v106, v119, v121, v122, v123, v124, v125, v126, v127, v132, v138;
    v107 = v161;
    v108 = swift_allocObject();
    *v108->endpoint = sub_1001D0BF8;
    *v108->containerMap = v7;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v109 = v107;
    v110 = sub_10019C8E0(v109, 0xD000000000000025, 0x800000010023C430);

    sub_1001A7A80(v139, v109, v110, sub_1001D1BA0, v108);
    v7, v111, v112, v113, v114, v115, v116, v117;
  }

  else
  {
    sub_1000561D0();
    v56 = swift_allocError();
    *v57 = xmmword_100226AD0;
    *(v57 + 16) = 13;
    swift_willThrow();
    v58 = v10;
    swift_errorRetain();
    v59 = sub_100216754();
    v60 = sub_100216C74();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v61 = 136446466;
      v62 = v58;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, &v161);
      v65, v67, v68, v69, v70, v71, v72, v73, v129, v134, v141, v145, v149, v153, v156, 0, v161, v162;
      *(v61 + 4) = v66;
      *(v61 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v74 = sub_100216994();
      v76 = v75;
      v77 = sub_100005FB0(v74, v75, &v161);
      v76, v78, v79, v80, v81, v82, v83, v84, v131, v137, v143, v147, v151, v155, v158, v56, v161, v162;
      *(v61 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v59, v60, "fetchPolicyDocuments failed for %{public}s: %{public}s", v61, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v163, v164);
    v85 = sub_100216144();
    (v156)[2](v156, 0, v85);

    v7, v86, v87, v88, v89, v90, v91, v92;
  }
}

void sub_1001C70DC(void *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, char a10, uint64_t a11, char *a12)
{
  v158 = a6;
  v159 = a8;
  v160 = a5;
  v161 = a7;
  v157 = a4;
  v164 = a2;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  __chkstk_darwin(RecoverableTLKSharesRequest, v14);
  v16 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *v17->endpoint = a12;
  v166 = a12;
  _Block_copy(a12);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v18 = sub_100216774();
  v19 = sub_100002648(v18, qword_10029DBB0);

  v20 = a1;
  v165 = v19;
  v21 = sub_100216754();
  v22 = sub_100216C54();
  a3, v23, v24, v25, v26, v27, v28, v29, v155, v156, v157, v158, v159, v160, v161, v162, RecoverableTLKSharesRequest, v164;

  v30 = os_log_type_enabled(v21, v22);
  v167 = v17;
  v162 = a3;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v169[0] = swift_slowAlloc();
    *v31 = 136446466;
    v168[0] = a1;
    v32 = v20;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v33 = sub_100216994();
    v35 = v34;
    v36 = sub_100005FB0(v33, v34, v169);
    v35, v37, v38, v39, v40, v41, v42, v43, v155, v156, v157, v158, v159, v160, v161, v162, RecoverableTLKSharesRequest, v164;
    *(v31 + 4) = v36;
    *(v31 + 12) = 2082;
    v168[0] = v164;
    v168[1] = a3;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v44 = sub_100216994();
    v46 = v45;
    v47 = sub_100005FB0(v44, v45, v169);
    v46, v48, v49, v50, v51, v52, v53, v54, v155, v156, v157, v158, v159, v160, v161, v162, RecoverableTLKSharesRequest, v164;
    *(v31 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v21, v22, "Fetching recoverable TLKShares %{public}s with peerID filter: %{public}s", v31, 0x16u);
    swift_arrayDestroy();

    v17 = v167;
  }

  if (a1)
  {
    v155 = v16;
    v156 = a1;
    v55 = *(a11 + 24);
    v56 = v20;
    v57 = [v56 cloudkitContainerName];
    v58 = sub_100216974();
    v60 = v59;

    v61 = [v56 octagonContextID];
    v62 = sub_100216974();
    v64 = v63;

    __chkstk_darwin(v65, v66);
    *(&v155 - 6) = v55;
    *(&v155 - 5) = v58;
    *(&v155 - 4) = v60;
    *(&v155 - 3) = v62;
    v153 = v64;
    v154 = v56;
    type metadata accessor for Container();
    sub_100216CD4();

    v64, v104, v105, v106, v107, v108, v109, v110, v155, v156, v157, v158, v159, v160, v161, v162, RecoverableTLKSharesRequest, v164;
    v60, v111, v112, v113, v114, v115, v116, v117, v155, v156, v157, v158, v159, v160, v161, v162, RecoverableTLKSharesRequest, v164;
    v166 = v168[0];
    v118 = swift_allocObject();
    *v118->endpoint = sub_1001D1BB4;
    *v118->containerMap = v167;
    v119 = kSecurityRTCEventNameFetchRecoverableTLKShares;

    v120 = v119;
    sub_1001D0674();
    v122 = v121;
    if (v160)
    {
      v123 = sub_100216964();
    }

    else
    {
      v123 = 0;
    }

    if (v161)
    {
      v124 = sub_100216964();
    }

    else
    {
      v124 = 0;
    }

    v125 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
      v126 = sub_100216964();
    }

    else
    {
      v126 = 0;
    }

    v127 = objc_allocWithZone(AAFAnalyticsEventSecurity);
    LOBYTE(v153) = a10 & 1;
    v128 = [v127 initWithKeychainCircleMetrics:0 altDSID:v123 flowID:v124 deviceSessionID:v126 eventName:v120 testsAreEnabled:v122 canSendMetrics:v153 category:v125];

    __chkstk_darwin(v129, v130);
    v153 = v164;
    v154 = v162;
    sub_1001D0854(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest, &protocol conformance descriptor for FetchRecoverableTLKSharesRequest);
    v131 = v155;
    sub_100216654();
    v132 = v166;
    v133 = *&v166[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v134 = *&v166[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v166[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v133);
    v135 = swift_allocObject();
    *(v135 + 16) = v128;
    *(v135 + 24) = sub_1001D1BA4;
    *(v135 + 32) = v118;
    v136 = *(v134 + 16);
    v137 = *(v136 + 72);
    v138 = v128;

    v137(v131, sub_1001D0BEC, v135, v133, v136);

    v118, v139, v140, v141, v142, v143, v144, v145;
    v135, v146, v147, v148, v149, v150, v151, v152;
    sub_1001D1288(v131, type metadata accessor for FetchRecoverableTLKSharesRequest);
    v17 = v167;
  }

  else
  {
    sub_1000561D0();
    v67 = swift_allocError();
    *v68 = xmmword_100226AD0;
    *(v68 + 16) = 13;
    swift_willThrow();
    v69 = v20;
    swift_errorRetain();
    v70 = sub_100216754();
    v71 = sub_100216C74();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v168[0] = swift_slowAlloc();
      *v72 = 136446466;
      v169[0] = 0;
      v73 = v69;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v74 = sub_100216994();
      v76 = v75;
      v77 = sub_100005FB0(v74, v75, v168);
      v76, v78, v79, v80, v81, v82, v83, v84, v155, v156, v157, v158, v159, v160, v161, v162, RecoverableTLKSharesRequest, v164;
      *(v72 + 4) = v77;
      *(v72 + 12) = 2082;
      v169[0] = v67;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v85 = sub_100216994();
      v87 = v86;
      v88 = sub_100005FB0(v85, v86, v168);
      v87, v89, v90, v91, v92, v93, v94, v95, v155, v156, v157, v158, v159, v160, v161, v162, RecoverableTLKSharesRequest, v164;
      *(v72 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v70, v71, "fetchRecoverableTLKShares failed for %{public}s: %{public}s", v72, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v169[2], v169[3]);
    v96 = sub_100216144();
    (*(v166 + 2))(v166, 0, v96);
  }

  v17, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001C790C(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v139 = a4;
  v141 = a5;
  v135 = a2;
  v137 = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  v145 = a8;
  _Block_copy(a8);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  v14 = sub_100002648(v13, qword_10029DBB0);
  v15 = a1;
  v143 = v14;
  v16 = sub_100216754();
  v17 = sub_100216C54();

  v147 = v12;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v148[0] = v20;
    *v19 = 136446210;
    v21 = v15;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v22 = sub_100216994();
    v24 = v23;
    v25 = sub_100005FB0(v22, v23, v148);
    v24, v26, v27, v28, v29, v30, v31, v32, v123, v126, v130, v133, v135, v137, v139, v141, v143, v145;
    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "SetRecoveryKey for %{public}s", v19, 0xCu);
    sub_100006128(v20, v33, v34, v35, v36, v37, v38, v39);

    a6 = v18;
    v12 = v147;
  }

  if (a1)
  {
    v131 = a6;
    v40 = a7[3];
    v41 = v15;
    v42 = [v41 cloudkitContainerName];
    v43 = sub_100216974();
    v45 = v44;

    v46 = [v41 octagonContextID];
    v47 = sub_100216974();
    v49 = v48;

    __chkstk_darwin(v50, v51);
    type metadata accessor for Container();
    sub_100216CD4();

    v49, v81, v82, v83, v84, v85, v86, v87, v113, v115, v40, v43, v45, v47, v49, v41, v123, a7;
    v45, v88, v89, v90, v91, v92, v93, v94, v114, v116, v117, v118, v119, v120, v121, v122, v125, v128;
    v95 = v148[0];
    v96 = swift_allocObject();
    *v96->endpoint = v129;
    *v96->containerMap = v95;
    *v96[1]._TtCs12_SwiftObject_opaque = sub_1001D0BBC;
    *&v96[1]._TtCs12_SwiftObject_opaque[8] = v147;

    v97 = v95;

    sub_10012EA7C(v135, v137, v139, v141, v131, sub_1001D0BC4, v96);
    v147, v98, v99, v100, v101, v102, v103, v104;

    v112 = v96;
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v52 = xmmword_100226AD0;
    *(v52 + 16) = 13;
    swift_willThrow();
    v53 = v15;
    swift_errorRetain();
    v54 = sub_100216754();
    v55 = sub_100216C74();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v56 = 136446466;
      v57 = v53;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v58 = sub_100216994();
      v60 = v59;
      v61 = sub_100005FB0(v58, v59, v148);
      v60, v62, v63, v64, v65, v66, v67, v68, v123, v126, v130, v133, v135, v137, v139, v141, v143, v145;
      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v69 = sub_100216994();
      v71 = v70;
      v72 = sub_100005FB0(v69, v70, v148);
      v71, v73, v74, v75, v76, v77, v78, v79, v124, v127, v132, v134, v136, v138, v140, v142, v144, v146;
      *(v56 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v54, v55, "SetRecoveryKey failed for %{public}s: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v148[2], v148[3]);
    v80 = sub_100216144();
    (*(v145 + 2))(v145, 0, v80);

    v112 = v12;
  }

  v112, v105, v106, v107, v108, v109, v110, v111;
}

void sub_1001C7E70(_TtC18TrustedPeersHelper6Client *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, _TtC18TrustedPeersHelper6Client *a9, void *a10)
{
  v199 = a8;
  v193 = a7;
  v197 = a2;
  v198 = a4;
  v200 = a3;
  v196 = sub_1002163D4();
  v195 = *(v196 - 1);
  __chkstk_darwin(v196, v13);
  v192 = v14;
  v194 = &v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *v15->endpoint = a10;
  v204 = a10;
  _Block_copy(a10);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v191 = sub_100216774();
  v16 = sub_100002648(v191, qword_10029DBB0);
  v17 = a1;
  v203 = v16;
  v18 = sub_100216754();
  v19 = sub_100216C54();

  v20 = os_log_type_enabled(v18, v19);
  v201 = a6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v207 = a1;
    v23 = v17;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v24 = sub_100216994();
    v26 = v25;
    v27 = v15;
    v28 = a5;
    v29 = a1;
    v30 = sub_100005FB0(v24, v25, aBlock);
    v26, v31, v32, v33, v34, v35, v36, v37, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197;
    *(v21 + 4) = v30;
    a1 = v29;
    a5 = v28;
    v15 = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "CreateCustodianRecoveryKey for %{public}s", v21, 0xCu);
    sub_100006128(v22, v38, v39, v40, v41, v42, v43, v44);
  }

  if (a1)
  {
    v190 = a1;
    v189 = a5;
    v202 = v15;
    v188 = a9;
    v45 = *a9->containerMap;
    v46 = v17;
    v47 = [(Client *)v46 cloudkitContainerName];
    v48 = sub_100216974();
    v50 = v49;

    v51 = [(Client *)v46 octagonContextID];
    v52 = sub_100216974();
    v54 = v53;

    __chkstk_darwin(v55, v56);
    *(&v188 - 6) = v45;
    *(&v188 - 5) = v48;
    *(&v188 - 4) = v50;
    *(&v188 - 3) = v52;
    *(&v188 - 2) = v54;
    *(&v188 - 1) = v46;
    type metadata accessor for Container();
    sub_100216CD4();

    v54, v94, v95, v96, v97, v98, v99, v100, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197;
    v50, v101, v102, v103, v104, v105, v106, v107, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197;
    v108 = aBlock[0];
    v109 = swift_allocObject();
    *(v109 + 16) = v188;
    *(v109 + 24) = v108;
    v110 = v202;
    *(v109 + 32) = sub_1001D0AA8;
    *(v109 + 40) = v110;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v111 = v108;

    v112 = sub_10019C8E0(v111, 0xD000000000000046, 0x800000010023C3E0);

    v113 = swift_allocObject();
    *v113->endpoint = v112;
    *v113->containerMap = sub_1001D0AD4;
    v188 = v113;
    *v113[1]._TtCs12_SwiftObject_opaque = v109;
    v114 = qword_100297520;
    v190 = v112;

    v203 = v109;

    if (v114 != -1)
    {
      swift_once();
    }

    sub_100002648(v191, qword_10029D160);
    v115 = sub_100216754();
    v116 = sub_100216C54();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "beginning a createCustodianRecoveryKey", v117, 2u);
    }

    v191 = *&v111[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v204 = v111;
    v118 = v195;
    v119 = v194;
    v120 = v196;
    (*(v195 + 2))(v194, v193, v196);
    v121 = (v118[80] + 24) & ~v118[80];
    v122 = (v192 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
    v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
    v124 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
    v125 = (v124 + 19) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    *v126->endpoint = v204;
    (*(v118 + 4))(&v126->_TtCs12_SwiftObject_opaque[v121], v119, v120);
    v127 = &v126->_TtCs12_SwiftObject_opaque[v122];
    v128 = v188;
    *v127 = sub_1001D0AE0;
    v127[1] = v128;
    v129 = &v126->_TtCs12_SwiftObject_opaque[v123];
    v130 = v198;
    v131 = v200;
    *v129 = v197;
    *(v129 + 1) = v131;
    v132 = &v126->_TtCs12_SwiftObject_opaque[v124];
    v133 = v189;
    *v132 = v130;
    *(v132 + 1) = v133;
    *&v126->_TtCs12_SwiftObject_opaque[v125] = v199;
    *&v126->_TtCs12_SwiftObject_opaque[(v125 + 11) & 0xFFFFFFFFFFFFFFF8] = v201;
    v134 = swift_allocObject();
    *v134->endpoint = sub_1001D0AEC;
    *v134->containerMap = v126;
    aBlock[4] = sub_1000574B4;
    v206 = v134;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002869E0;
    v135 = _Block_copy(aBlock);
    v136 = v206;
    v137 = v204;

    v136, v138, v139, v140, v141, v142, v143, v144;
    [v191 performBlockAndWait:v135];

    v128, v145, v146, v147, v148, v149, v150, v151;
    v190, v152, v153, v154, v155, v156, v157, v158;
    v203, v159, v160, v161, v162, v163, v164, v165;
    _Block_release(v135);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v202, v167, v168, v169, v170, v171, v172, v173;
    v126, v174, v175, v176, v177, v178, v179, v180;
    v134, v181, v182, v183, v184, v185, v186, v187;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v57 = swift_allocError();
    *v58 = xmmword_100226AD0;
    *(v58 + 16) = 13;
    swift_willThrow();
    v59 = v17;
    swift_errorRetain();
    v60 = sub_100216754();
    v61 = sub_100216C74();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v62 = 136446466;
      v207 = 0;
      v63 = v59;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v64 = sub_100216994();
      v66 = v65;
      v67 = sub_100005FB0(v64, v65, aBlock);
      v66, v68, v69, v70, v71, v72, v73, v74, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197;
      *(v62 + 4) = v67;
      *(v62 + 12) = 2082;
      v207 = v57;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v75 = sub_100216994();
      v77 = v76;
      v78 = sub_100005FB0(v75, v76, aBlock);
      v77, v79, v80, v81, v82, v83, v84, v85, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197;
      *(v62 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v60, v61, "CreateCustodianRecoveryKey failed for %{public}s: %{public}s", v62, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v208, v209);
    v86 = sub_100216144();
    (*(v204 + 2))(v204, 0, 0, v86);

    v15, v87, v88, v89, v90, v91, v92, v93;
  }
}

void sub_1001C8834(void *a1, uint64_t a2, void *a3, void *a4)
{
  v175 = a2;
  v7 = sub_1002163D4();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7, v9);
  v174 = v10;
  v176 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *v11->endpoint = a4;
  v179 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v12 = sub_100216774();
  v13 = sub_100002648(v12, qword_10029DBB0);
  v14 = a1;
  v178 = v13;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  v17 = os_log_type_enabled(v15, v16);
  v180 = v11;
  v177 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    v183 = a1;
    v20 = v14;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v21 = sub_100216994();
    v22 = v8;
    v23 = a1;
    v25 = v24;
    v26 = sub_100005FB0(v21, v24, aBlock);
    v27 = v25;
    a1 = v23;
    v8 = v22;
    v27, v28, v29, v30, v31, v32, v33, v34, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179;
    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "RemoveCustodianRecoveryKey for %{public}s", v18, 0xCu);
    sub_100006128(v19, v35, v36, v37, v38, v39, v40, v41);

    a3 = v177;
    v11 = v180;
  }

  if (a1)
  {
    v173 = a1;
    v171 = v8;
    v172 = v7;
    v42 = a3[3];
    v43 = v14;
    v44 = [v43 cloudkitContainerName];
    v45 = sub_100216974();
    v47 = v46;

    v48 = [v43 octagonContextID];
    v49 = sub_100216974();
    v51 = v50;

    __chkstk_darwin(v52, v53);
    *(&v170 - 6) = v42;
    *(&v170 - 5) = v45;
    *(&v170 - 4) = v47;
    *(&v170 - 3) = v49;
    *(&v170 - 2) = v51;
    *(&v170 - 1) = v43;
    type metadata accessor for Container();
    sub_100216CD4();

    v51, v91, v92, v93, v94, v95, v96, v97, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179;
    v47, v98, v99, v100, v101, v102, v103, v104, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179;
    v105 = aBlock[0];
    v106 = swift_allocObject();
    *(v106 + 16) = v177;
    *(v106 + 24) = v105;
    v107 = v180;
    *(v106 + 32) = sub_1001D1C78;
    *(v106 + 40) = v107;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v108 = v105;

    v109 = sub_10019C8E0(v108, 0xD000000000000027, 0x800000010023C3B0);
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = sub_1001D0A28;
    *(v110 + 32) = v106;
    v179 = *&v108[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v111 = v171;
    v112 = v176;
    v113 = v172;
    (*(v171 + 2))(v176, v175, v172);
    v114 = (*(v111 + 80) + 40) & ~*(v111 + 80);
    v115 = swift_allocObject();
    *(v115 + 16) = v108;
    *(v115 + 24) = sub_1001D0A34;
    *(v115 + 32) = v110;
    v111[4](v115 + v114, v112, v113);
    v116 = swift_allocObject();
    *v116->endpoint = sub_1001D0A40;
    *v116->containerMap = v115;
    aBlock[4] = sub_1000574B4;
    v182 = v116;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002868F0;
    v117 = _Block_copy(aBlock);
    v118 = v182;
    v119 = v108;

    v118, v120, v121, v122, v123, v124, v125, v126;
    [v179 performBlockAndWait:v117];
    v110, v127, v128, v129, v130, v131, v132, v133;
    v109, v134, v135, v136, v137, v138, v139, v140;
    _Block_release(v117);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v107, v142, v143, v144, v145, v146, v147, v148;

    v106, v149, v150, v151, v152, v153, v154, v155;
    v115, v156, v157, v158, v159, v160, v161, v162;
    v116, v163, v164, v165, v166, v167, v168, v169;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v54 = swift_allocError();
    *v55 = xmmword_100226AD0;
    *(v55 + 16) = 13;
    swift_willThrow();
    v56 = v14;
    swift_errorRetain();
    v57 = sub_100216754();
    v58 = sub_100216C74();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v59 = 136446466;
      v183 = 0;
      v60 = v56;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v61 = sub_100216994();
      v63 = v62;
      v64 = sub_100005FB0(v61, v62, aBlock);
      v63, v65, v66, v67, v68, v69, v70, v71, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179;
      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      v183 = v54;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v72 = sub_100216994();
      v74 = v73;
      v75 = sub_100005FB0(v72, v73, aBlock);
      v74, v76, v77, v78, v79, v80, v81, v82, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179;
      *(v59 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v57, v58, "RemoveCustodianRecoveryKey failed for %{public}s: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v184, v185);
    v83 = sub_100216144();
    (*(v179 + 2))(v179, v83);

    v11, v84, v85, v86, v87, v88, v89, v90;
  }
}

void sub_1001C9040(void *a1, uint64_t a2, void *a3, void *a4)
{
  v177 = a2;
  v7 = sub_1002163D4();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7, v9);
  v176 = v10;
  v178 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *v11->endpoint = a4;
  v181 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v12 = sub_100216774();
  v13 = sub_100002648(v12, qword_10029DBB0);
  v14 = a1;
  v180 = v13;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  v17 = os_log_type_enabled(v15, v16);
  v182 = v11;
  v179 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    v185 = a1;
    v20 = v14;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v21 = sub_100216994();
    v22 = v8;
    v23 = a1;
    v25 = v24;
    v26 = sub_100005FB0(v21, v24, aBlock);
    v27 = v25;
    a1 = v23;
    v8 = v22;
    v27, v28, v29, v30, v31, v32, v33, v34, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181;
    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "FindCustodianRecoveryKey for %{public}s", v18, 0xCu);
    sub_100006128(v19, v35, v36, v37, v38, v39, v40, v41);

    a3 = v179;
    v11 = v182;
  }

  if (a1)
  {
    v175 = a1;
    v173 = v8;
    v174 = v7;
    v42 = a3[3];
    v43 = v14;
    v44 = [v43 cloudkitContainerName];
    v45 = sub_100216974();
    v47 = v46;

    v48 = [v43 octagonContextID];
    v49 = sub_100216974();
    v51 = v50;

    __chkstk_darwin(v52, v53);
    *(&v172 - 6) = v42;
    *(&v172 - 5) = v45;
    *(&v172 - 4) = v47;
    *(&v172 - 3) = v49;
    *(&v172 - 2) = v51;
    *(&v172 - 1) = v43;
    type metadata accessor for Container();
    sub_100216CD4();

    v51, v91, v92, v93, v94, v95, v96, v97, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181;
    v47, v98, v99, v100, v101, v102, v103, v104, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181;
    v105 = aBlock[0];
    v106 = swift_allocObject();
    *(v106 + 16) = v179;
    *(v106 + 24) = v105;
    v107 = v182;
    *(v106 + 32) = sub_1001D1BAC;
    *(v106 + 40) = v107;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v108 = v105;

    v109 = sub_10019C8E0(v108, 0xD000000000000025, 0x800000010023C380);
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = sub_1001D097C;
    *(v110 + 32) = v106;
    v181 = *&v108[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v111 = v173;
    v112 = v178;
    v113 = v174;
    (*(v173 + 2))(v178, v177, v174);
    v114 = (*(v111 + 80) + 24) & ~*(v111 + 80);
    v115 = (v176 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
    v116 = swift_allocObject();
    *v116->endpoint = v108;
    v111[4](&v116->_TtCs12_SwiftObject_opaque[v114], v112, v113);
    v117 = &v116->_TtCs12_SwiftObject_opaque[v115];
    *v117 = sub_1001D0988;
    v117[1] = v110;
    v118 = swift_allocObject();
    *v118->endpoint = sub_1001D0994;
    *v118->containerMap = v116;
    aBlock[4] = sub_1000574B4;
    v184 = v118;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286800;
    v119 = _Block_copy(aBlock);
    v120 = v184;
    v121 = v108;

    v120, v122, v123, v124, v125, v126, v127, v128;
    [v181 performBlockAndWait:v119];
    v110, v129, v130, v131, v132, v133, v134, v135;
    v109, v136, v137, v138, v139, v140, v141, v142;
    _Block_release(v119);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v182, v144, v145, v146, v147, v148, v149, v150;

    v106, v151, v152, v153, v154, v155, v156, v157;
    v116, v158, v159, v160, v161, v162, v163, v164;
    v118, v165, v166, v167, v168, v169, v170, v171;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v54 = swift_allocError();
    *v55 = xmmword_100226AD0;
    *(v55 + 16) = 13;
    swift_willThrow();
    v56 = v14;
    swift_errorRetain();
    v57 = sub_100216754();
    v58 = sub_100216C74();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v59 = 136446466;
      v185 = 0;
      v60 = v56;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v61 = sub_100216994();
      v63 = v62;
      v64 = sub_100005FB0(v61, v62, aBlock);
      v63, v65, v66, v67, v68, v69, v70, v71, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181;
      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      v185 = v54;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v72 = sub_100216994();
      v74 = v73;
      v75 = sub_100005FB0(v72, v73, aBlock);
      v74, v76, v77, v78, v79, v80, v81, v82, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181;
      *(v59 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v57, v58, "FindCustodianRecoveryKey failed for %{public}s: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v186, v187);
    v83 = sub_100216144();
    (*(v181 + 2))(v181, 0, v83);

    v11, v84, v85, v86, v87, v88, v89, v90;
  }
}

void sub_1001C9860(void *a1, unsigned int a2, void *a3, void *a4, unsigned int a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, _TtC18TrustedPeersHelper6Client *a11)
{
  v147 = a3;
  v148 = a8;
  v150 = a4;
  v151 = a7;
  v146 = a6;
  v149 = __PAIR64__(a2, a5);
  v12 = swift_allocObject();
  *(v12 + 16) = a11;
  _Block_copy(a11);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  v14 = sub_100002648(v13, qword_10029DBB0);
  v15 = a1;
  v152 = v14;
  v16 = sub_100216754();
  v17 = sub_100216C54();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    aBlock[0] = v143;
    *v18 = 136446210;
    v19 = v15;
    v20 = [v19 description];
    v21 = v12;
    v22 = sub_100216974();
    v24 = v23;

    v25 = v22;
    v12 = v21;
    v26 = sub_100005FB0(v25, v24, aBlock);
    v24, v27, v28, v29, v30, v31, v32, v33, v138, v140, v143, v146, v147, v148, v149, v150, v151, v152;
    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Escrow Check for %{public}s", v18, 0xCu);
    sub_100006128(v144, v34, v35, v36, v37, v38, v39, v40);
  }

  v41 = *(a10 + 24);
  v42 = v15;
  v43 = [v42 cloudkitContainerName];
  v44 = sub_100216974();
  v46 = v45;

  v47 = [v42 octagonContextID];
  v48 = sub_100216974();
  v50 = v49;

  __chkstk_darwin(v51, v52);
  type metadata accessor for Container();
  sub_100216CD4();

  v50, v53, v54, v55, v56, v57, v58, v59, v128, v130, v41, v44, v46, v48, v50, v42, v138, v140;
  v46, v60, v61, v62, v63, v64, v65, v66, v129, v131, v132, v133, v134, v135, v136, v137, v139, v141;
  v67 = aBlock[0];
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1001D0904;
  *(v68 + 24) = v12;
  v69 = v68;
  v145 = v68;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();

  v70 = v67;
  v142 = sub_10019C8E0(v70, 0xD000000000000074, 0x800000010023C300);

  v71 = [objc_allocWithZone(OTEscrowCheckCallResult) init];
  [v71 setNeedsReenroll:0];
  [v71 setOctagonTrusted:0];
  [v71 setSecureTermsNeeded:0];
  [v71 setRepairReason:0];
  [v71 setRepairDisabled:0];
  v72 = swift_allocObject();
  *(v72 + 16) = v142;
  *(v72 + 24) = sub_1001D1B98;
  *(v72 + 32) = v69;
  v153 = *&v70[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v154 = v12;
  v73 = swift_allocObject();
  *(v73 + 16) = v70;
  *(v73 + 24) = v71;
  *(v73 + 32) = sub_1001D0920;
  *(v73 + 40) = v72;
  *(v73 + 48) = v146;
  *(v73 + 56) = v151;
  *(v73 + 64) = v148;
  *(v73 + 72) = a9;
  *(v73 + 80) = v147;
  *(v73 + 88) = v149 & 1;
  *(v73 + 96) = v150;
  *(v73 + 104) = BYTE4(v149) & 1;
  v74 = swift_allocObject();
  *v74->endpoint = sub_1001D092C;
  *v74->containerMap = v73;
  aBlock[4] = sub_1000574B4;
  v156 = v74;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100286710;
  v75 = _Block_copy(aBlock);
  v76 = v156;

  v77 = v70;

  v78 = v71;

  v76, v79, v80, v81, v82, v83, v84, v85;
  [v153 performBlockAndWait:v75];

  v72, v86, v87, v88, v89, v90, v91, v92;
  v142, v93, v94, v95, v96, v97, v98, v99;
  v145, v100, v101, v102, v103, v104, v105, v106;
  _Block_release(v75);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();
  v154, v107, v108, v109, v110, v111, v112, v113;
  v73, v114, v115, v116, v117, v118, v119, v120;
  v74, v121, v122, v123, v124, v125, v126, v127;
  if (v75)
  {
    __break(1u);
  }
}

void sub_1001CA02C(void *a1, unsigned int a2, char a3, int a4, unsigned int a5, char a6, _TtC18TrustedPeersHelper6Client *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, _TtC18TrustedPeersHelper6Client *a13)
{
  v232 = a8;
  LODWORD(v249) = a4;
  v18 = swift_allocObject();
  *v18->endpoint = a13;
  _Block_copy(a13);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v229 = sub_100216774();
  sub_100002648(v229, qword_10029DBB0);
  v19 = a1;
  v20 = sub_100216754();
  v21 = sub_100216C54();

  v242 = a7;
  v239 = __PAIR64__(a2, a5);
  v255 = v19;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a1;
    v23 = v18;
    v24 = a3;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = a5;
    v28 = v26;
    aBlock[0] = v26;
    *v25 = 67110402;
    *(v25 + 4) = a2 & 1;
    *(v25 + 8) = 1024;
    v29 = v24 & 1;
    v18 = v23;
    a1 = v22;
    *(v25 + 10) = v29;
    *(v25 + 14) = 1024;
    *(v25 + 16) = v249 & 1;
    *(v25 + 20) = 1024;
    *(v25 + 22) = v27 & 1;
    *(v25 + 26) = 1024;
    *(v25 + 28) = a6 & 1;
    *(v25 + 32) = 2082;
    v258 = v22;
    v30 = v19;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v31 = sub_100216994();
    v33 = v32;
    v34 = sub_100005FB0(v31, v32, aBlock);
    v33, v35, v36, v37, v38, v39, v40, v41, v216, v221, v226, v229, v232, v235, v239, v242, v246, v249;
    *(v25 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "Health Check! requiring escrow check? %{BOOL}d, %{BOOL}d, %{BOOL}d, %{BOOL}d, %{BOOL}d for %{public}s", v25, 0x2Au);
    sub_100006128(v28, v42, v43, v44, v45, v46, v47, v48);
  }

  if (a1)
  {
    v49 = *(a12 + 24);
    v50 = v255;
    v51 = [v50 cloudkitContainerName];
    v52 = sub_100216974();
    v54 = v53;

    v55 = [v50 octagonContextID];
    v56 = sub_100216974();
    v58 = v57;

    __chkstk_darwin(v59, v60);
    type metadata accessor for Container();
    sub_100216CD4();

    v58, v98, v99, v100, v101, v102, v103, v104, v206, v208, v49, v52, v54, v56, v58, v50, v216, v221;
    v54, v105, v106, v107, v108, v109, v110, v111, v207, v209, v210, v211, v212, v213, v214, v215, v218, v223;
    v112 = aBlock[0];
    v113 = swift_allocObject();
    *v113->endpoint = sub_1001D1BAC;
    *v113->containerMap = v18;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v114 = v112;
    v115 = sub_10019C8E0(v114, 0xD00000000000008ELL, 0x800000010023C270);
    v224 = v114;

    v116 = swift_allocObject();
    *(v116 + 16) = v115;
    *(v116 + 24) = sub_1001D1B98;
    *(v116 + 32) = v113;
    v117 = qword_100297520;
    v254 = v115;

    if (v117 != -1)
    {
      swift_once();
    }

    v118 = a10;
    sub_100002648(v229, qword_10029D160);
    v119 = v242;

    v120 = sub_100216754();
    v121 = sub_100216C54();
    v242, v122, v123, v124, v125, v126, v127, v128, v219, v224, a9, v229, v232, v235, v239, v242, v18, v249;
    if (os_log_type_enabled(v120, v121))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      aBlock[0] = v130;
      *v129 = 67109634;
      *(v129 + 4) = BYTE4(v241) & 1;
      *(v129 + 8) = 1024;
      v131 = v238;
      *(v129 + 10) = v238 & 1;
      *(v129 + 14) = 2082;
      v132 = sub_100216B34();
      v134 = v133;
      v135 = sub_100005FB0(v132, v133, aBlock);
      v136 = v134;
      v118 = a10;
      v136, v137, v138, v139, v140, v141, v142, v143, v220, v225, v228, v231, v234, v237, v241, v244, v248, v251;
      *(v129 + 16) = v135;
      v119 = v245;
      _os_log_impl(&_mh_execute_header, v120, v121, "requestHealthCheck requiring escrow check: %{BOOL}d, %{BOOL}d, knownFederations: %{public}s", v129, 0x18u);
      sub_100006128(v130, v144, v145, v146, v147, v148, v149, v150);
    }

    else
    {

      v131 = v238;
    }

    v151 = v251;
    v252 = *&v225[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v152 = swift_allocObject();
    *(v152 + 16) = v225;
    *(v152 + 24) = sub_1001D089C;
    *(v152 + 32) = v116;
    *(v152 + 40) = v234;
    *(v152 + 48) = v228;
    *(v152 + 56) = v118;
    *(v152 + 64) = a11;
    *(v152 + 72) = BYTE4(v241) & 1;
    *(v152 + 80) = v119;
    *(v152 + 88) = v131 & 1;
    *(v152 + 89) = v151 & 1;
    *(v152 + 90) = v241 & 1;
    *(v152 + 91) = a6 & 1;
    v153 = swift_allocObject();
    *v153->endpoint = sub_1001D08A8;
    *v153->containerMap = v152;
    aBlock[4] = sub_1000574B4;
    v257 = v153;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286620;
    v154 = _Block_copy(aBlock);
    v155 = v257;

    v156 = v225;

    v155, v157, v158, v159, v160, v161, v162, v163;
    [v252 performBlockAndWait:v154];

    v116, v164, v165, v166, v167, v168, v169, v170;
    v254, v171, v172, v173, v174, v175, v176, v177;
    v113, v178, v179, v180, v181, v182, v183, v184;
    _Block_release(v154);
    LOBYTE(v154) = swift_isEscapingClosureAtFileLocation();
    v248, v185, v186, v187, v188, v189, v190, v191;
    v152, v192, v193, v194, v195, v196, v197, v198;
    v153, v199, v200, v201, v202, v203, v204, v205;
    if (v154)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v61 = swift_allocError();
    *v62 = xmmword_100226AD0;
    *(v62 + 16) = 13;
    swift_willThrow();
    v63 = v255;
    swift_errorRetain();
    v64 = sub_100216754();
    v65 = sub_100216C74();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v66 = 136446466;
      v258 = 0;
      v67 = v63;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v68 = sub_100216994();
      v70 = v69;
      v71 = sub_100005FB0(v68, v69, aBlock);
      v70, v72, v73, v74, v75, v76, v77, v78, v216, v221, v226, v229, v232, v235, v239, v242, v246, v249;
      *(v66 + 4) = v71;
      *(v66 + 12) = 2082;
      v258 = v61;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v79 = sub_100216994();
      v81 = v80;
      v82 = sub_100005FB0(v79, v80, aBlock);
      v81, v83, v84, v85, v86, v87, v88, v89, v217, v222, v227, v230, v233, v236, v240, v243, v247, v250;
      *(v66 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v64, v65, "Health Check! failed for %{public}s: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v259, v260);
    v90 = sub_100216144();
    (*a13->endpoint)(a13, 0, v90);

    v18, v91, v92, v93, v94, v95, v96, v97;
  }
}

void sub_1001CA9D4(id a1, id *a2, void *a3)
{
  v156 = a2;
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  __chkstk_darwin(SupportAppInfoRequest, v5);
  v7 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v154 = &v150 - v10;
  v11 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v11 - 8, v12);
  v152 = &v150 - v13;
  v14 = swift_allocObject();
  *v14->endpoint = a3;
  v157 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v15 = sub_100216774();
  v16 = sub_100002648(v15, qword_10029DBB0);
  v17 = a1;
  v18 = sub_100216754();
  v19 = sub_100216C54();

  v20 = os_log_type_enabled(v18, v19);
  v158 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v159 = a1;
    v160[0] = v22;
    *v21 = 136446210;
    v23 = v17;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v24 = sub_100216994();
    v26 = v25;
    v27 = sub_100005FB0(v24, v25, v160);
    v26, v28, v29, v30, v31, v32, v33, v34, v150, v151, v152, SupportAppInfoRequest, v154, v155, v156, v157, v158, v159;
    *(v21 + 4) = v27;
    a1 = v158;
    _os_log_impl(&_mh_execute_header, v18, v19, "getSupportAppInfo for %{public}s", v21, 0xCu);
    sub_100006128(v22, v35, v36, v37, v38, v39, v40, v41);
  }

  if (a1)
  {
    v150 = v7;
    v151 = v16;
    v155 = v14;
    v42 = v156[3];
    v43 = v17;
    v44 = [v43 cloudkitContainerName];
    v45 = sub_100216974();
    v47 = v46;

    v48 = [v43 octagonContextID];
    v49 = sub_100216974();
    v51 = v50;

    __chkstk_darwin(v52, v53);
    *(&v150 - 6) = v42;
    *(&v150 - 5) = v45;
    *(&v150 - 4) = v47;
    *(&v150 - 3) = v49;
    *(&v150 - 2) = v51;
    *(&v150 - 1) = v43;
    type metadata accessor for Container();
    sub_100216CD4();

    v51, v85, v86, v87, v88, v89, v90, v91, v150, v151, v152, SupportAppInfoRequest, v154, v155, v156, v157, v158, v159;
    v47, v92, v93, v94, v95, v96, v97, v98, v150, v151, v152, SupportAppInfoRequest, v154, v155, v156, v157, v158, v159;
    v99 = v160[0];
    v100 = swift_allocObject();
    v101 = v155;
    *(v100 + 16) = sub_1001D07F4;
    *(v100 + 24) = v101;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v102 = v99;
    v103 = sub_10019C8E0(v102, 0xD000000000000019, 0x800000010023C250);

    v158 = v102;
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = sub_1001D07FC;
    *(v104 + 32) = v100;
    v105 = sub_100006484(&v102[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], *&v102[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24]);
    v106 = type metadata accessor for Metrics(0);
    v107 = v152;
    (*(*(v106 - 8) + 56))(v152, 1, 1, v106);
    v108 = type metadata accessor for AccountInfo(0);
    v109 = v154;
    (*(*(v108 - 8) + 56))(v154, 1, 1, v108);
    v110 = swift_allocObject();
    v156 = &v150;
    *v110->endpoint = sub_1001D081C;
    *v110->containerMap = v104;
    v157 = *v105;
    __chkstk_darwin(v110, v111);
    *(&v150 - 4) = v107;
    *(&v150 - 3) = v109;
    *(&v150 - 2) = 0;
    *(&v150 - 8) = 1;
    sub_1001D0854(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest, &protocol conformance descriptor for GetSupportAppInfoRequest);
    v112 = v103;

    v113 = v150;
    sub_100216654();
    RetryingCKCodeService.getSupportAppInfo(_:completion:)(v113, sub_1001D0828, v110);
    v112, v114, v115, v116, v117, v118, v119, v120;
    v104, v121, v122, v123, v124, v125, v126, v127;
    v110, v128, v129, v130, v131, v132, v133, v134;
    sub_1001D1288(v113, type metadata accessor for GetSupportAppInfoRequest);
    sub_1000114D4(v109, &unk_10029D6F0, &qword_100226B40);
    sub_1000114D4(v107, &qword_100297FE0, &unk_10021E7F0);
    v155, v135, v136, v137, v138, v139, v140, v141;

    v149 = v100;
  }

  else
  {
    sub_1000561D0();
    v54 = swift_allocError();
    *v55 = xmmword_100226AD0;
    *(v55 + 16) = 13;
    swift_willThrow();
    v56 = v17;
    swift_errorRetain();
    v57 = sub_100216754();
    v58 = sub_100216C74();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 136446466;
      v159 = v158;
      v160[0] = v60;
      v61 = v56;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, v160);
      v64, v66, v67, v68, v69, v70, v71, v72, v150, v151, v152, SupportAppInfoRequest, v154, v155, v156, v157, v158, v159;
      *(v59 + 4) = v65;
      *(v59 + 12) = 2082;
      v159 = v54;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v73 = sub_100216994();
      v75 = v74;
      v76 = sub_100005FB0(v73, v74, v160);
      v75, v77, v78, v79, v80, v81, v82, v83, v150, v151, v152, SupportAppInfoRequest, v154, v155, v156, v157, v158, v159;
      *(v59 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v57, v58, "getSupportInfo failed for %{public}s: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v160[2], v160[3]);
    v84 = sub_100216144();
    (*(v157 + 2))(v157, 0, v84);

    v149 = v14;
  }

  v149, v142, v143, v144, v145, v146, v147, v148;
}

void sub_1001CB270(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "removeEscrowCache for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D1C78;
    *(v89 + 24) = v123;

    sub_10014BE74(sub_1001D1C74, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "removeEscrowCache failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001CB790(_TtC18TrustedPeersHelper6Client *a1, void *a2, void *a3, void *a4, void *a5, int a6, unsigned int a7, unsigned int a8, uint64_t a9, void (**a10)(void, void))
{
  v158 = __PAIR64__(a8, a7);
  HIDWORD(v157) = a6;
  v155 = a4;
  v156 = a5;
  v153 = a2;
  v154 = a3;
  v159 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  __chkstk_darwin(v159, v11);
  v13 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *v14->endpoint = a10;
  _Block_copy(a10);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v15 = sub_100216774();
  v16 = sub_100002648(v15, qword_10029DBB0);
  v17 = a1;
  v161 = v16;
  v18 = sub_100216754();
  v19 = sub_100216C54();

  v20 = os_log_type_enabled(v18, v19);
  v162 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v163 = a1;
    v164[0] = v22;
    *v21 = 136446210;
    v23 = v17;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v24 = sub_100216994();
    v26 = v25;
    v27 = sub_100005FB0(v24, v25, v164);
    v28 = v26;
    a1 = v162;
    v28, v29, v30, v31, v32, v33, v34, v35, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160;
    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "resetAccountCDPContents for %{public}s", v21, 0xCu);
    sub_100006128(v22, v36, v37, v38, v39, v40, v41, v42);
  }

  if (a1)
  {
    v151 = v13;
    v152 = a10;
    v160 = v14;
    v43 = *(a9 + 24);
    v44 = v17;
    v45 = [(Client *)v44 cloudkitContainerName];
    v46 = sub_100216974();
    v48 = v47;

    v49 = [(Client *)v44 octagonContextID];
    v50 = sub_100216974();
    v52 = v51;

    __chkstk_darwin(v53, v54);
    *(&v151 - 6) = v43;
    *(&v151 - 5) = v46;
    *(&v151 - 4) = v48;
    *(&v151 - 3) = v50;
    *(&v151 - 2) = v52;
    *(&v151 - 1) = v44;
    type metadata accessor for Container();
    sub_100216CD4();

    v52, v86, v87, v88, v89, v90, v91, v92, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160;
    v48, v93, v94, v95, v96, v97, v98, v99, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160;
    v100 = v164[0];
    v101 = swift_allocObject();
    v102 = v160;
    *v101->endpoint = sub_1001D1C78;
    *v101->containerMap = v102;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v103 = v100;
    v104 = sub_10019C8E0(v103, 0xD00000000000006BLL, 0x800000010023C1E0);

    v105 = swift_allocObject();
    v161 = v104;
    v162 = v101;
    *(v105 + 16) = v104;
    *(v105 + 24) = sub_1001D1C74;
    *(v105 + 32) = v101;
    __chkstk_darwin(v105, v106);
    v107 = v154;
    *(&v151 - 6) = v153;
    *(&v151 - 5) = v107;
    v108 = v156;
    *(&v151 - 4) = v155;
    *(&v151 - 3) = v108;
    *(&v151 - 16) = BYTE4(v157) & 1;
    *(&v151 - 15) = v158 & 1;
    *(&v151 - 14) = BYTE4(v158) & 1;
    sub_1001D0854(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest, &protocol conformance descriptor for ResetAccountCDPContentsRequest);

    v109 = v151;
    sub_100216654();
    v110 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v111 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v110);
    v112 = swift_allocObject();
    *(v112 + 16) = v103;
    *(v112 + 24) = sub_1001D07B0;
    *(v112 + 32) = v105;
    v113 = *(v111 + 16);
    v114 = *(v113 + 112);
    v115 = v103;

    v114(v109, sub_1001D07E8, v112, v110, v113);
    v161, v116, v117, v118, v119, v120, v121, v122;
    v14 = v160;
    v105, v123, v124, v125, v126, v127, v128, v129;
    v162, v130, v131, v132, v133, v134, v135, v136;

    v112, v137, v138, v139, v140, v141, v142, v143;
    sub_1001D1288(v109, type metadata accessor for ResetAccountCDPContentsRequest);
  }

  else
  {
    sub_1000561D0();
    v55 = swift_allocError();
    *v56 = xmmword_100226AD0;
    *(v56 + 16) = 13;
    swift_willThrow();
    v57 = v17;
    swift_errorRetain();
    v58 = sub_100216754();
    v59 = sub_100216C74();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 136446466;
      v163 = v162;
      v164[0] = v61;
      v62 = v57;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, v164);
      v65, v67, v68, v69, v70, v71, v72, v73, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160;
      *(v60 + 4) = v66;
      *(v60 + 12) = 2082;
      v163 = v55;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v74 = sub_100216994();
      v76 = v75;
      v77 = sub_100005FB0(v74, v75, v164);
      v76, v78, v79, v80, v81, v82, v83, v84, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160;
      *(v60 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v58, v59, "resetAccountCDPContents failed for %{public}s: %{public}s", v60, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v164[2], v164[3]);
    v85 = sub_100216144();
    (a10)[2](a10, v85);
  }

  v14, v144, v145, v146, v147, v148, v149, v150;
}

void sub_1001CBF18(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, void *a6, uint64_t a7, void *a8, char a9, uint64_t a10, void (**a11)(void, void, void))
{
  v376 = a6;
  v378 = a8;
  v369 = a5;
  v371 = a7;
  v373 = a4;
  v367 = a3;
  v13 = a11;
  v14 = swift_allocObject();
  *(v14 + 16) = a11;
  _Block_copy(a11);
  _Block_copy(a11);
  _Block_copy(a11);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v15 = sub_100216774();
  sub_100002648(v15, qword_10029DBB0);
  v16 = a1;
  v17 = sub_100216754();
  v18 = sub_100216C54();

  v386 = v14;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446210;
    v394[0] = a1;
    v21 = v16;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v22 = sub_100216994();
    v23 = a1;
    v25 = v24;
    v26 = sub_100005FB0(v22, v24, &aBlock);
    v27 = v25;
    a1 = v23;
    v27, v28, v29, v30, v31, v32, v33, v34, v355, v359, v363, v367, v369, v371, v373, v376, v378, v381;
    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "fetchAccountSettings for %{public}s", v19, 0xCu);
    sub_100006128(v20, v35, v36, v37, v38, v39, v40, v41);
  }

  if (!a1)
  {
    sub_1000561D0();
    v54 = swift_allocError();
    *v55 = xmmword_100226AD0;
    *(v55 + 16) = 13;
    swift_willThrow();
    v56 = v16;
    swift_errorRetain();
    v57 = sub_100216754();
    v58 = sub_100216C74();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v59 = 136446466;
      v394[0] = 0;
      v60 = v56;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v61 = sub_100216994();
      v63 = v62;
      v64 = sub_100005FB0(v61, v62, &aBlock);
      v63, v65, v66, v67, v68, v69, v70, v71, v355, v359, v363, v367, v369, v371, v373, v376, v378, v381;
      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      v394[0] = v54;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v72 = sub_100216994();
      v74 = v73;
      v75 = sub_100005FB0(v72, v73, &aBlock);
      v74, v76, v77, v78, v79, v80, v81, v82, v356, v360, v365, v368, v370, v372, v374, v377, v379, v383;
      *(v59 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v57, v58, "fetchAccountSettings failed for %{public}s: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v394[2], v394[3]);
    v83 = sub_100216144();
    (a11)[2](a11, 0, v83);

    v386, v84, v85, v86, v87, v88, v89, v90;
    goto LABEL_10;
  }

  v364 = a1;
  HIDWORD(v359) = a2;
  v382 = a11;
  v42 = *(a10 + 24);
  v43 = v16;
  v44 = [(Client *)v43 cloudkitContainerName];
  v45 = sub_100216974();
  v47 = v46;

  v48 = [(Client *)v43 octagonContextID];
  v49 = sub_100216974();
  v51 = v50;

  __chkstk_darwin(v52, v53);
  type metadata accessor for Container();
  sub_100216CD4();

  v51, v92, v93, v94, v95, v96, v97, v98, v344, v346, v42, v45, v47, v49, v51, v43, v355, v359;
  v47, v99, v100, v101, v102, v103, v104, v105, v345, v347, v348, v349, v350, v351, v352, v354, v357, v361;
  v106 = aBlock;
  v107 = swift_allocObject();
  *v107->endpoint = sub_1001D0634;
  *v107->containerMap = v386;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  swift_retain_n();
  v108 = v106;
  v109 = sub_10019C8E0(v108, 0xD000000000000055, 0x800000010023C180);

  v110 = swift_allocObject();
  v111 = v110;
  *v110->endpoint = v109;
  *v110->containerMap = sub_1001D063C;
  *v110[1]._TtCs12_SwiftObject_opaque = v107;
  if ((BYTE4(v362) & 1) == 0)
  {
    v393 = 0;
    v394[0] = 0;
    v117 = *&v108[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v112 = swift_allocObject();
    *(v112 + 16) = v108;
    *(v112 + 24) = v394;
    *(v112 + 32) = &v393;
    v118 = swift_allocObject();
    *v118->endpoint = sub_1001D0668;
    *v118->containerMap = v112;
    v391 = sub_1000574B4;
    v392 = v118;
    aBlock = _NSConcreteStackBlock;
    v388 = 1107296256;
    v389 = sub_100109050;
    v390 = &unk_100286288;
    v119 = _Block_copy(&aBlock);
    v120 = v392;
    v385 = v108;

    v121 = v109;

    v120, v122, v123, v124, v125, v126, v127, v128;
    [v117 performBlockAndWait:v119];
    _Block_release(v119);
    LOBYTE(v119) = swift_isEscapingClosureAtFileLocation();
    v118, v129, v130, v131, v132, v133, v134, v135;
    if (v119)
    {
      __break(1u);
      goto LABEL_36;
    }

    v136 = v393;
    if (v393)
    {
      swift_errorRetain();
      v13 = a11;
      _Block_copy(a11);
      v137 = v386;

      swift_errorRetain();
      sub_1001A7F5C(0, v136, v121, a11);
      _Block_release(a11);
      v111, v138, v139, v140, v141, v142, v143, v144;
      v121, v145, v146, v147, v148, v149, v150, v151;
      v107, v152, v153, v154, v155, v156, v157, v158;
    }

    else
    {
      v293 = v394[0];
      if (!v394[0])
      {
        v384 = sub_1001D0668;
        v109 = v121;
        goto LABEL_14;
      }

      v13 = a11;
      _Block_copy(a11);

      sub_1001A7F5C(v293, 0, v121, a11);
      _Block_release(a11);
      v293, v294, v295, v296, v297, v298, v299, v300, v358, v362, v364, v367, v369, v371, v373, v376, v378, a11;
      v111, v301, v302, v303, v304, v305, v306, v307;
      v121, v308, v309, v310, v311, v312, v313, v314;
      v107, v315, v316, v317, v318, v319, v320, v321;

      v137 = v386;
    }

    v322 = v394[0];
    v137, v323, v324, v325, v326, v327, v328, v329;
    v112, v330, v331, v332, v333, v334, v335, v336;
    v322, v337, v338, v339, v340, v341, v342, v343, v358, v362, v364, v367, v369, v371, v373, v376, v378, v382;
LABEL_10:
    _Block_release(v13);
    v91 = v13;
LABEL_11:
    _Block_release(v91);
    return;
  }

  v384 = 0;
  v112 = 0;
LABEL_14:
  v366 = v112;
  v113 = kSecurityRTCEventNameFetchAccountWideSettingsTPH;
  sub_1001D0674();
  v115 = v114;
  if (v373)
  {
    v116 = sub_100216964();
  }

  else
  {
    v116 = 0;
  }

  v375 = v109;
  if (v376)
  {
    v159 = sub_100216964();
  }

  else
  {
    v159 = 0;
  }

  v160 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v378)
  {
    v161 = sub_100216964();
  }

  else
  {
    v161 = 0;
  }

  LOBYTE(v353) = a9 & 1;
  v162 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v116 flowID:v159 deviceSessionID:v161 eventName:v113 testsAreEnabled:v115 canSendMetrics:v353 category:v160];

  v163 = swift_allocObject();
  *(v163 + 16) = v162;
  *(v163 + 24) = sub_1001D065C;
  *(v163 + 32) = v111;
  *(v163 + 40) = v108;
  v380 = *&v108[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  if (BYTE4(v362))
  {
    v164 = swift_allocObject();
    *(v164 + 16) = 0;
    *(v164 + 24) = v108;
    *(v164 + 32) = sub_1001D07A4;
    *(v164 + 40) = v163;
    v165 = swift_allocObject();
    *v165->endpoint = sub_1001ACE7C;
    *v165->containerMap = v164;
    v391 = sub_1000574B4;
    v392 = v165;
    aBlock = _NSConcreteStackBlock;
    v388 = 1107296256;
    v389 = sub_100109050;
    v390 = &unk_1002863A0;
    v166 = _Block_copy(&aBlock);
    v167 = v392;
    v108 = v108;
    v168 = v162;

    v167, v169, v170, v171, v172, v173, v174, v175;
    [v380 performBlockAndWait:v166];
    _Block_release(v166);
    LOBYTE(v166) = swift_isEscapingClosureAtFileLocation();
    v163, v176, v177, v178, v179, v180, v181, v182;

    v111, v183, v184, v185, v186, v187, v188, v189;
    v375, v190, v191, v192, v193, v194, v195, v196;
    v197 = v386;

    v107, v198, v199, v200, v201, v202, v203, v204;

    v164, v205, v206, v207, v208, v209, v210, v211;
    v165, v212, v213, v214, v215, v216, v217, v218;
    sub_100186C6C(v384, v366, v219, v220, v221, v222, v223, v224);
    if ((v166 & 1) == 0)
    {
LABEL_30:
      v197, v225, v226, v227, v228, v229, v230, v231;
      _Block_release(a11);
      v91 = a11;
      goto LABEL_11;
    }

    __break(1u);
  }

  v232 = swift_allocObject();
  *(v232 + 16) = v108;
  *(v232 + 24) = sub_1001D07A4;
  *(v232 + 32) = v163;
  v233 = swift_allocObject();
  *v233->endpoint = sub_1001ABA14;
  *v233->containerMap = v232;
  v391 = sub_1000574B4;
  v392 = v233;
  aBlock = _NSConcreteStackBlock;
  v388 = 1107296256;
  v389 = sub_100109050;
  v390 = &unk_100286328;
  v234 = _Block_copy(&aBlock);
  v235 = v392;
  v236 = v108;
  v237 = v162;

  v235, v238, v239, v240, v241, v242, v243, v244;
  [v380 performBlockAndWait:v234];
  _Block_release(v234);
  LOBYTE(v234) = swift_isEscapingClosureAtFileLocation();
  v163, v245, v246, v247, v248, v249, v250, v251;

  v111, v252, v253, v254, v255, v256, v257, v258;
  v375, v259, v260, v261, v262, v263, v264, v265;
  v197 = v386;

  v107, v266, v267, v268, v269, v270, v271, v272;

  v232, v273, v274, v275, v276, v277, v278, v279;
  v233, v280, v281, v282, v283, v284, v285, v286;
  sub_100186C6C(v384, v366, v287, v288, v289, v290, v291, v292);
  if ((v234 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
}

void sub_1001CCC24(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *v6->endpoint = a3;
  v187 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  v8 = sub_100002648(v7, qword_10029DBB0);
  v9 = a1;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  v189 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446210;
    v198 = a1;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = v16;
    v18 = v6;
    v19 = a2;
    v20 = sub_100005FB0(v15, v16, &aBlock);
    v17, v21, v22, v23, v24, v25, v26, v27, v176, v179, v182, v184, v187, v189, aBlock, v193, v194, v195;
    *(v12 + 4) = v20;
    a2 = v19;
    v6 = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "isRecoveryKeySet for %{public}s", v12, 0xCu);
    sub_100006128(v13, v28, v29, v30, v31, v32, v33, v34);
  }

  if (a1)
  {
    v185 = v6;
    v35 = *(a2 + 24);
    v36 = v189;
    v37 = [v36 cloudkitContainerName];
    v38 = sub_100216974();
    v40 = v39;

    v41 = [v36 octagonContextID];
    v42 = sub_100216974();
    v44 = v43;

    __chkstk_darwin(v45, v46);
    type metadata accessor for Container();
    sub_100216CD4();

    v44, v84, v85, v86, v87, v88, v89, v90, v166, v168, v35, v38, v40, v42, v44, v36, v176, v8;
    v40, v91, v92, v93, v94, v95, v96, v97, v167, v169, v170, v171, v172, v173, v174, v175, v178, v181;
    v98 = aBlock;
    v99 = swift_allocObject();
    *v99->endpoint = sub_1001D1BB0;
    *v99->containerMap = v185;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v100 = v98;
    v101 = sub_10019C8E0(v100, 0xD000000000000018, 0x800000010023C160);

    v102 = swift_allocObject();
    *(v102 + 16) = v101;
    *(v102 + 24) = sub_1001D0600;
    *(v102 + 32) = v99;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_1001D061C;
    *(v103 + 24) = v102;
    *(v103 + 32) = v100;
    v191 = *&v100[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v104 = swift_allocObject();
    *(v104 + 16) = 0;
    *(v104 + 24) = v100;
    *(v104 + 32) = sub_1001D0628;
    *(v104 + 40) = v103;
    v105 = swift_allocObject();
    *v105->endpoint = sub_1001ACE7C;
    *v105->containerMap = v104;
    v196 = sub_1000574B4;
    v197 = v105;
    aBlock = _NSConcreteStackBlock;
    v193 = 1107296256;
    v194 = sub_100109050;
    v195 = &unk_100286198;
    v106 = _Block_copy(&aBlock);
    v107 = v197;
    v108 = v100;

    v107, v109, v110, v111, v112, v113, v114, v115;
    [v191 performBlockAndWait:v106];
    _Block_release(v106);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v185, v117, v118, v119, v120, v121, v122, v123;

    v99, v124, v125, v126, v127, v128, v129, v130;
    v101, v131, v132, v133, v134, v135, v136, v137;
    v102, v138, v139, v140, v141, v142, v143, v144;
    v103, v145, v146, v147, v148, v149, v150, v151;
    v104, v152, v153, v154, v155, v156, v157, v158;
    v105, v159, v160, v161, v162, v163, v164, v165;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v47 = swift_allocError();
    *v48 = xmmword_100226AD0;
    *(v48 + 16) = 13;
    swift_willThrow();
    v49 = v189;
    swift_errorRetain();
    v50 = sub_100216754();
    v51 = sub_100216C74();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v52 = 136446466;
      v198 = 0;
      v53 = v49;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v54 = sub_100216994();
      v56 = v55;
      v57 = sub_100005FB0(v54, v55, &aBlock);
      v56, v58, v59, v60, v61, v62, v63, v64, v176, v179, v182, v184, v187, v189, aBlock, v193, v194, v195;
      *(v52 + 4) = v57;
      *(v52 + 12) = 2082;
      v198 = v47;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v65 = sub_100216994();
      v67 = v66;
      v68 = sub_100005FB0(v65, v66, &aBlock);
      v67, v69, v70, v71, v72, v73, v74, v75, v177, v180, v183, v186, v188, v190, aBlock, v193, v194, v195;
      *(v52 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v50, v51, "isRecoveryKeySet failed for %{public}s: %{public}s", v52, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v199, v200);
    v76 = sub_100216144();
    (*(v187 + 2))(v187, 0, v76);

    v6, v77, v78, v79, v80, v81, v82, v83;
  }
}

void sub_1001CD37C(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "removeRecoveryKey for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D1BB0;
    *(v89 + 24) = v123;

    sub_10017BFB0(sub_1001D1B9C, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "removeRecoveryKey failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, 0, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001CD8A0(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "performATOPRVActions for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001A9270;
    *(v89 + 24) = v123;

    sub_10017F5C8(sub_1001D1C74, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "performATOPRVActions failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001CDDC0(void *a1, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, void *aBlock)
{
  v113 = a2;
  _Block_copy(aBlock);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029DBB0);
  v9 = a1;

  v10 = sub_100216754();
  v11 = sub_100216C54();
  a3, v12, v13, v14, v15, v16, v17, v18, v99, v102, v107, v109, a4, v113, v115, v117, v118, v119;

  v116 = aBlock;
  if (os_log_type_enabled(v10, v11))
  {
    v19 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v21 = sub_100216994();
    v23 = v22;
    v24 = a3;
    v25 = sub_100005FB0(v21, v22, &v118);
    v23, v26, v27, v28, v29, v30, v31, v32, v100, v103, v108, v110, v112, v114, v116, a1, v118, v119;
    *(v19 + 4) = v25;
    a3 = v24;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_100005FB0(v114, v24, &v118);
    _os_log_impl(&_mh_execute_header, v10, v11, "testSemaphore for %{public}s: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v104 = a3;
    v33 = v112[3];
    v34 = v9;
    v35 = [v34 cloudkitContainerName];
    v36 = sub_100216974();
    v38 = v37;

    v39 = [v34 octagonContextID];
    v40 = sub_100216974();
    v42 = v41;

    __chkstk_darwin(v43, v44);
    type metadata accessor for Container();
    sub_100216CD4();

    v42, v73, v74, v75, v76, v77, v78, v79, v89, v91, v33, v36, v38, v40, v42, v34, v100, v104;
    v38, v80, v81, v82, v83, v84, v85, v86, v90, v92, v93, v94, v95, v96, v97, v98, v101, v105;
    v87 = v118;
    v88 = v116;
    _Block_copy(v116);
    sub_1001A864C(v114, v106, v87, v116);
    _Block_release(v116);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v9;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v118 = v51;
      *v49 = 136446466;
      v52 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v53 = sub_100216994();
      v55 = v54;
      v56 = sub_100005FB0(v53, v54, &v118);
      v55, v57, v58, v59, v60, v61, v62, v63, v100, v103, v108, v110, v112, v114, v116, 0, v118, v119;
      *(v49 + 4) = v56;
      *(v49 + 12) = 2114;
      swift_errorRetain();
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 14) = v64;
      *v50 = v64;
      _os_log_impl(&_mh_execute_header, v47, v48, "testSemaphore failed for %{public}s: %{public}@", v49, 0x16u);
      sub_1000114D4(v50, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v51, v65, v66, v67, v68, v69, v70, v71);
    }

    v88 = v116;
    swift_getErrorValue();
    sub_1001ADD74(v120, v121);
    v72 = sub_100216144();
    (v88)[2](v88, v72);
  }

  _Block_release(v88);
}

void sub_1001CE2CC(void *a1, void *a2, void *a3, char *a4, void *a5, _TtC18TrustedPeersHelper6Client *a6, _TtC18TrustedPeersHelper6Client *a7)
{
  v194 = a4;
  v197 = a3;
  v192 = a2;
  v11 = swift_allocObject();
  *v11->endpoint = a7;
  _Block_copy(a7);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v12 = sub_100216774();
  v13 = sub_100002648(v12, qword_10029DBB0);
  v14 = a1;
  v199 = v13;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  v202 = v11;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v189 = a6;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v206 = a1;
    v19 = v14;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v20 = sub_100216994();
    v22 = v21;
    v23 = a5;
    v24 = sub_100005FB0(v20, v21, aBlock);
    v22, v25, v26, v27, v28, v29, v30, v31, v178, v181, v186, v189, v192, v194, v197, v199, v202, aBlock[0];
    *(v17 + 4) = v24;
    a5 = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "preflightRecoverOctagon for %{public}s", v17, 0xCu);
    sub_100006128(v18, v32, v33, v34, v35, v36, v37, v38);
    a6 = v188;
    v11 = v202;
  }

  if (a1)
  {
    v182 = a5;
    v39 = *a6->containerMap;
    v40 = v14;
    v41 = [v40 cloudkitContainerName];
    v42 = sub_100216974();
    v44 = v43;

    v45 = [v40 octagonContextID];
    v46 = sub_100216974();
    v48 = v47;

    __chkstk_darwin(v49, v50);
    type metadata accessor for Container();
    sub_100216CD4();

    v48, v88, v89, v90, v91, v92, v93, v94, v168, v170, v39, v42, v44, v46, v48, v40, v178, v182;
    v44, v95, v96, v97, v98, v99, v100, v101, v169, v171, v172, v173, v174, v175, v176, v177, v180, v184;
    v102 = aBlock[0];
    v103 = swift_allocObject();
    *v103->endpoint = sub_1001D1BB0;
    *v103->containerMap = v202;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v104 = v102;
    v191 = sub_10019C8E0(v104, 0xD00000000000003FLL, 0x8000000100238C10);

    v105 = swift_allocObject();
    *(v105 + 16) = v191;
    *(v105 + 24) = sub_1001D1B9C;
    *(v105 + 32) = v103;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_1001D05C4;
    *(v106 + 24) = v105;
    *(v106 + 32) = v104;
    *(v106 + 40) = v192;
    *(v106 + 48) = v197;
    *(v106 + 56) = v194;
    *(v106 + 64) = v185;
    v201 = *&v104[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = v104;
    *(v107 + 32) = sub_1001D05D0;
    *(v107 + 40) = v106;
    v108 = swift_allocObject();
    *v108->endpoint = sub_100056B20;
    *v108->containerMap = v107;
    aBlock[4] = sub_100056B30;
    v205 = v108;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100285FE0;
    v109 = _Block_copy(aBlock);
    v110 = v205;
    v196 = v104;

    v110, v111, v112, v113, v114, v115, v116, v117;
    [v201 performBlockAndWait:v109];
    _Block_release(v109);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v202, v119, v120, v121, v122, v123, v124, v125;

    v103, v126, v127, v128, v129, v130, v131, v132;
    v191, v133, v134, v135, v136, v137, v138, v139;
    v105, v140, v141, v142, v143, v144, v145, v146;
    v106, v147, v148, v149, v150, v151, v152, v153;
    v107, v154, v155, v156, v157, v158, v159, v160;
    v108, v161, v162, v163, v164, v165, v166, v167;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v51 = swift_allocError();
    *v52 = xmmword_100226AD0;
    *(v52 + 16) = 13;
    swift_willThrow();
    v53 = v14;
    swift_errorRetain();
    v54 = sub_100216754();
    v55 = sub_100216C74();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v56 = 136446466;
      v206 = 0;
      v57 = v53;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v58 = sub_100216994();
      v60 = v59;
      v61 = sub_100005FB0(v58, v59, aBlock);
      v60, v62, v63, v64, v65, v66, v67, v68, v178, v181, v186, v188, v192, v194, v197, v199, v202, aBlock[0];
      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v206 = v51;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v69 = sub_100216994();
      v71 = v70;
      v72 = sub_100005FB0(v69, v70, aBlock);
      v71, v73, v74, v75, v76, v77, v78, v79, v179, v183, v187, v190, v193, v195, v198, v200, v203, aBlock[0];
      *(v56 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v54, v55, "preflightRecoverOctagon failed for %{public}s: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v207, v208);
    v80 = sub_100216144();
    (*a7->endpoint)(a7, 0, v80);

    v11, v81, v82, v83, v84, v85, v86, v87;
  }
}

void sub_1001CEA60(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchTrustedPeerCount for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D1BAC;
    *(v89 + 24) = v123;

    sub_100161264(sub_1001D1B98, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "fetchTrustedPeerCount failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, 0, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001CEF84(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchTrustedFullPeerCount for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D1BAC;
    *(v89 + 24) = v123;

    sub_1001616AC(sub_1001D05A4, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "fetchTrustedFullPeerCount failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, 0, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001CF4A8(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "octagonContainsDistrustedRecoveryKeys for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D059C;
    *(v89 + 24) = v123;

    sub_100161E50(sub_1001D1B9C, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "octagonContainsDistrustedRecoveryKeys failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, 0, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001CF9CC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v122 = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v131 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  v9 = sub_100002648(v8, qword_10029DBB0);
  v10 = a1;
  v129 = v9;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v133 = v14;
    *v13 = 136446210;
    v15 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v16 = sub_100216994();
    v18 = v17;
    v19 = sub_100005FB0(v16, v17, &v133);
    v18, v20, v21, v22, v23, v24, v25, v26, v119, v122, v126, v129, v131, a1, v133, v134, v135, v136;
    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "fetchCurrentItem for %{public}s", v13, 0xCu);
    sub_100006128(v14, v27, v28, v29, v30, v31, v32, v33);
  }

  if (a1)
  {
    v127 = v7;
    v34 = *(a3 + 24);
    v35 = v10;
    v36 = [v35 cloudkitContainerName];
    v37 = sub_100216974();
    v39 = v38;

    v40 = [v35 octagonContextID];
    v41 = sub_100216974();
    v43 = v42;

    __chkstk_darwin(v44, v45);
    type metadata accessor for Container();
    sub_100216CD4();

    v43, v78, v79, v80, v81, v82, v83, v84, v109, v111, v34, v37, v39, v41, v43, v35, a1, v122;
    v39, v85, v86, v87, v88, v89, v90, v91, v110, v112, v113, v114, v115, v116, v117, v118, v121, v124;
    v92 = v133;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1001D0550;
    *(v93 + 24) = v127;

    sub_10017FD2C(v125, sub_1001D057C, v93);
    v127, v94, v95, v96, v97, v98, v99, v100;

    v108 = v93;
  }

  else
  {
    sub_1000561D0();
    v46 = swift_allocError();
    *v47 = xmmword_100226AD0;
    *(v47 + 16) = 13;
    swift_willThrow();
    v48 = v10;
    swift_errorRetain();
    v49 = sub_100216754();
    v50 = sub_100216C74();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v51 = 136446466;
      v52 = v48;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v53 = sub_100216994();
      v55 = v54;
      v56 = sub_100005FB0(v53, v54, &v133);
      v55, v57, v58, v59, v60, v61, v62, v63, v119, v122, v126, v129, v131, 0, v133, v134, v135, v136;
      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v64 = sub_100216994();
      v66 = v65;
      v67 = sub_100005FB0(v64, v65, &v133);
      v66, v68, v69, v70, v71, v72, v73, v74, v120, v123, v128, v130, v132, v46, v133, v134, v135, v136;
      *(v51 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v49, v50, "fetchCurrentItem failed for %{public}s: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v135, v136);
    sub_10000200C(0, &qword_10029DEA8, off_100275030);
    isa = sub_100216B14().super.isa;
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v76 = sub_100216B14().super.isa;
    v77 = sub_100216144();
    (*(v131 + 2))(v131, isa, v76, v77);

    v108 = v7;
  }

  v108, v101, v102, v103, v104, v105, v106, v107;
}

void sub_1001CFF68(void *a1, void *a2, uint64_t a3, void *a4)
{
  v122 = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v131 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  v9 = sub_100002648(v8, qword_10029DBB0);
  v10 = a1;
  v129 = v9;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v133 = v14;
    *v13 = 136446210;
    v15 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v16 = sub_100216994();
    v18 = v17;
    v19 = sub_100005FB0(v16, v17, &v133);
    v18, v20, v21, v22, v23, v24, v25, v26, v119, v122, v126, v129, v131, a1, v133, v134, v135, v136;
    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "fetchPCSIdentityByPublicKey for %{public}s", v13, 0xCu);
    sub_100006128(v14, v27, v28, v29, v30, v31, v32, v33);
  }

  if (a1)
  {
    v127 = v7;
    v34 = *(a3 + 24);
    v35 = v10;
    v36 = [v35 cloudkitContainerName];
    v37 = sub_100216974();
    v39 = v38;

    v40 = [v35 octagonContextID];
    v41 = sub_100216974();
    v43 = v42;

    __chkstk_darwin(v44, v45);
    type metadata accessor for Container();
    sub_100216CD4();

    v43, v78, v79, v80, v81, v82, v83, v84, v109, v111, v34, v37, v39, v41, v43, v35, a1, v122;
    v39, v85, v86, v87, v88, v89, v90, v91, v110, v112, v113, v114, v115, v116, v117, v118, v121, v124;
    v92 = v133;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1001D0504;
    *(v93 + 24) = v127;

    sub_1001810B8(v125, sub_1001D0548, v93);
    v127, v94, v95, v96, v97, v98, v99, v100;

    v108 = v93;
  }

  else
  {
    sub_1000561D0();
    v46 = swift_allocError();
    *v47 = xmmword_100226AD0;
    *(v47 + 16) = 13;
    swift_willThrow();
    v48 = v10;
    swift_errorRetain();
    v49 = sub_100216754();
    v50 = sub_100216C74();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v51 = 136446466;
      v52 = v48;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v53 = sub_100216994();
      v55 = v54;
      v56 = sub_100005FB0(v53, v54, &v133);
      v55, v57, v58, v59, v60, v61, v62, v63, v119, v122, v126, v129, v131, 0, v133, v134, v135, v136;
      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v64 = sub_100216994();
      v66 = v65;
      v67 = sub_100005FB0(v64, v65, &v133);
      v66, v68, v69, v70, v71, v72, v73, v74, v120, v123, v128, v130, v132, v46, v133, v134, v135, v136;
      *(v51 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v49, v50, "fetchPCSIdentityByPublicKey failed for %{public}s: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v135, v136);
    sub_10000200C(0, &qword_10029DE78, off_100275040);
    isa = sub_100216B14().super.isa;
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v76 = sub_100216B14().super.isa;
    v77 = sub_100216144();
    (*(v131 + 2))(v131, isa, v76, v77);

    v108 = v7;
  }

  v108, v101, v102, v103, v104, v105, v106, v107;
}

uint64_t sub_1001D05E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001D0674()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1002AF890;
  v7 = off_1002AF890;
  if (!off_1002AF890)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001D1904;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_1001D1904(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"_Bool soft_MetricsOverrideTestsAreEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:89 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001D078C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D0854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001D0994()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100137598(v3, v0 + v2, v4);
}

void sub_1001D0A40()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_100136644(v2, v3, v4, v5);
}

void sub_1001D0AEC()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100132674(*(v0 + 16), (v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001D1288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D1740()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D1880(void (*a1)(void))
{
  a1(*(v1 + 16));

  *(v1 + 40), v2, v3, v4, v5, v6, v7, v8;

  return _swift_deallocObject(v1, 48, 7);
}

void *sub_1001D1904(void *a1)
{
  v5[0] = 0;
  if (!qword_1002AF898)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001D1A88;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_100288A60;
    v7 = 0;
    qword_1002AF898 = _sl_dlopen();
  }

  v2 = qword_1002AF898;
  if (!qword_1002AF898)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:86 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MetricsOverrideTestsAreEnabled");
  *(*(a1[4] + 8) + 24) = result;
  off_1002AF890 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1001D1A88(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002AF898 = result;
  return result;
}

uint64_t sub_1001D1CCC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001148C(a2, a3);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v16 - v11;
  v13 = objc_allocWithZone(v5);
  sub_100019C6C(a1, v12, a2, a3);
  v14 = sub_100216404();
  sub_1000114D4(a1, a2, a3);
  return v14;
}

uint64_t CuttlefishAPI.FetchViableBottlesOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_1002984B8, &unk_100226B90);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984B8, &unk_100226B90);
  return v8;
}

uint64_t CuttlefishAPI.FetchPolicyDocumentsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_1002984A8, &qword_10021DF18);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984A8, &qword_10021DF18);
  return v8;
}

uint64_t CuttlefishAPI.GetSupportAppInfoOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298478, &unk_100226BB0);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298478, &unk_100226BB0);
  return v8;
}

uint64_t CuttlefishAPI.ResetAccountCdpcontentsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298468, &qword_10021DED8);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298468, &qword_10021DED8);
  return v8;
}

uint64_t CuttlefishAPI.AddCustodianRecoveryKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298458, &unk_100226BC0);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298458, &unk_100226BC0);
  return v8;
}

uint64_t CuttlefishAPI.FetchRecoverableTlksharesOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298448, &qword_10021DEB8);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298448, &qword_10021DEB8);
  return v8;
}

uint64_t CuttlefishAPI.RemoveRecoveryKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298438, &unk_100226BD0);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298438, &unk_100226BD0);
  return v8;
}

uint64_t CuttlefishAPI.PerformAtoprvactionsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298428, &qword_10021DE98);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298428, &qword_10021DE98);
  return v8;
}

uint64_t CuttlefishAPI.FetchCurrentItemOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298418, &unk_100226BE0);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298418, &unk_100226BE0);
  return v8;
}

uint64_t CuttlefishAPI.FetchPcsidentityByPublicKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_100298408, &qword_10021DE78);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_100298408, &qword_10021DE78);
  return v8;
}

uint64_t CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v6, &qword_1002983F8, &qword_100226BF0);
  v8 = sub_100216404();
  sub_1000114D4(a1, &qword_1002983F8, &qword_100226BF0);
  return v8;
}

uint64_t CuttlefishAPIAsync.updateTrust(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a7;
  v27 = a8;
  v30 = a13;
  v28 = a11;
  v29 = a12;
  v25 = a9;
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = v26;
  v38 = v27;
  v39 = a9;
  v40 = a10;
  sub_1001D63AC(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
  sub_100216654();
  (*(a14 + 32))(v23, v28, v29, v30, a14);
  return sub_1001E32F4(v23, type metadata accessor for UpdateTrustRequest);
}

uint64_t CuttlefishAPIAsync.getSupportAppInfo(metrics:accountInfo:page:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  __chkstk_darwin(SupportAppInfoRequest, v17);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v22 = a4 & 1;
  sub_1001D63AC(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest, &protocol conformance descriptor for GetSupportAppInfoRequest);
  sub_100216654();
  (*(a8 + 104))(v19, a5, a6, a7, a8);
  return sub_1001E32F4(v19, type metadata accessor for GetSupportAppInfoRequest);
}

uint64_t CuttlefishAPIAsync.performAtoprvactions(metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PerformATOPRVActionsRequest(0);
  __chkstk_darwin(v12, v13);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_1001D63AC(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest, &protocol conformance descriptor for PerformATOPRVActionsRequest);
  sub_100216654();
  (*(a6 + 128))(v15, a3, a4, a5, a6);
  return sub_1001E32F4(v15, type metadata accessor for PerformATOPRVActionsRequest);
}

uint64_t sub_1001D2D54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10001148C(a2, a3);
  __chkstk_darwin(v8 - 8, v9);
  sub_100019C6C(a1, &v13 - v10, a2, a3);
  v11 = sub_100216404();
  sub_1000114D4(a1, a2, a3);
  return v11;
}

uint64_t CuttlefishAPI.AddCustodianRecoveryKeyOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298458, &unk_100226BC0);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298458, &unk_100226BC0);
  return v5;
}

uint64_t CuttlefishAPI.FetchViableBottlesOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_1002984B8, &unk_100226B90);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984B8, &unk_100226B90);
  return v5;
}

uint64_t CuttlefishAPI.FetchRecoverableTlksharesOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298448, &qword_10021DEB8);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298448, &qword_10021DEB8);
  return v5;
}

uint64_t CuttlefishAPI.FetchPolicyDocumentsOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_1002984A8, &qword_10021DF18);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984A8, &qword_10021DF18);
  return v5;
}

uint64_t CuttlefishAPI.GetSupportAppInfoOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298478, &unk_100226BB0);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298478, &unk_100226BB0);
  return v5;
}

uint64_t CuttlefishAPI.ResetAccountCdpcontentsOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298468, &qword_10021DED8);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298468, &qword_10021DED8);
  return v5;
}

uint64_t CuttlefishAPI.RemoveRecoveryKeyOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298438, &unk_100226BD0);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298438, &unk_100226BD0);
  return v5;
}

uint64_t CuttlefishAPI.PerformAtoprvactionsOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298428, &qword_10021DE98);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298428, &qword_10021DE98);
  return v5;
}

uint64_t CuttlefishAPI.FetchPcsidentityByPublicKeyOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298408, &qword_10021DE78);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298408, &qword_10021DE78);
  return v5;
}

uint64_t CuttlefishAPI.FetchCurrentItemOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_100298418, &unk_100226BE0);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_100298418, &unk_100226BE0);
  return v5;
}

uint64_t CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  __chkstk_darwin(v2 - 8, v3);
  sub_100019C6C(a1, &v7 - v4, &qword_1002983F8, &qword_100226BF0);
  v5 = sub_100216404();
  sub_1000114D4(a1, &qword_1002983F8, &qword_100226BF0);
  return v5;
}

id _s18TrustedPeersHelper13CuttlefishAPIO14ResetOperationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t CuttlefishAPIAsync.reset(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a7;
  v29 = a12;
  v30 = a11;
  v27 = a8;
  v28 = a14;
  v20 = type metadata accessor for ResetRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2 & 0x1FF;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v26;
  v39 = v27;
  v40 = a9;
  v41 = a10;
  sub_1001D63AC(&qword_100298CE0, type metadata accessor for ResetRequest, &protocol conformance descriptor for ResetRequest);
  sub_100216654();
  (*(v28 + 8))(v23, v30, v29, v31);
  return sub_1001E32F4(v23, type metadata accessor for ResetRequest);
}

uint64_t CuttlefishAPIAsync.establish(peer:bottle:viewKeys:tlkShares:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a8;
  v22 = a7;
  v16 = type metadata accessor for EstablishRequest(0);
  __chkstk_darwin(v16, v17);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  sub_1001D63AC(&unk_10029D920, type metadata accessor for EstablishRequest, &protocol conformance descriptor for EstablishRequest);
  sub_100216654();
  (*(a10 + 16))(v19, v22, v23, a9, a10);
  return sub_1001E32F4(v19, type metadata accessor for EstablishRequest);
}

uint64_t CuttlefishAPIAsync.joinWithVoucher(changeToken:peer:bottle:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24 = a7;
  v25 = a8;
  v28 = a12;
  v26 = a10;
  v27 = a11;
  v19 = type metadata accessor for JoinWithVoucherRequest(0);
  __chkstk_darwin(v19, v20);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = v24;
  v36 = v25;
  v37 = a9;
  sub_1001D63AC(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest, &protocol conformance descriptor for JoinWithVoucherRequest);
  sub_100216654();
  (*(a13 + 24))(v22, v26, v27, v28, a13);
  return sub_1001E32F4(v22, type metadata accessor for JoinWithVoucherRequest);
}

uint64_t CuttlefishAPIAsync.setRecoveryKey(changeToken:peerID:recoverySigningPubKey:recoveryEncryptionPubKey:stableInfoAndSig:tlkShares:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a8;
  v31 = a13;
  v32 = a14;
  v29 = a15;
  v30 = a12;
  v27[1] = a10;
  v27[0] = a9;
  v22 = type metadata accessor for SetRecoveryKeyRequest(0);
  __chkstk_darwin(v22, v23);
  v25 = v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = v28;
  v41 = a9;
  v42 = a10;
  v43 = a11;
  sub_1001D63AC(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest, &protocol conformance descriptor for SetRecoveryKeyRequest);
  sub_100216654();
  (*(v29 + 40))(v25, v30, v31, v32);
  return sub_1001E32F4(v25, type metadata accessor for SetRecoveryKeyRequest);
}

uint64_t CuttlefishAPIAsync.addCustodianRecoveryKey(changeToken:peerID:peer:stableInfoAndSig:tlkShares:dynamicInfoAndSig:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a7;
  v27 = a8;
  v30 = a13;
  v28 = a11;
  v29 = a12;
  v25 = a9;
  v20 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = v26;
  v38 = v27;
  v39 = a9;
  v40 = a10;
  sub_1001D63AC(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest, &protocol conformance descriptor for AddCustodianRecoveryKeyRequest);
  sub_100216654();
  (*(a14 + 48))(v23, v28, v29, v30, a14);
  return sub_1001E32F4(v23, type metadata accessor for AddCustodianRecoveryKeyRequest);
}

uint64_t CuttlefishAPIAsync.fetchChanges(changeToken:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  __chkstk_darwin(ChangesRequest, v17);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  sub_1001D63AC(&unk_10029DA40, type metadata accessor for FetchChangesRequest, &protocol conformance descriptor for FetchChangesRequest);
  sub_100216654();
  (*(a8 + 56))(v19, a5, a6, a7, a8);
  return sub_1001E32F4(v19, type metadata accessor for FetchChangesRequest);
}

uint64_t CuttlefishAPIAsync.fetchViableBottles(filterRequest:metrics:accountInfo:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  __chkstk_darwin(ViableBottlesRequest, v17);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a1;
  v22 = a2 & 0x1FF;
  v23 = a3;
  v24 = a4;
  sub_1001D63AC(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest, &protocol conformance descriptor for FetchViableBottlesRequest);
  sub_100216654();
  (*(a8 + 64))(v19, a5, a6, a7, a8);
  return sub_1001E32F4(v19, type metadata accessor for FetchViableBottlesRequest);
}

uint64_t CuttlefishAPIAsync.fetchRecoverableTlkshares(peerID:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  __chkstk_darwin(RecoverableTLKSharesRequest, v17);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  sub_1001D63AC(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest, &protocol conformance descriptor for FetchRecoverableTLKSharesRequest);
  sub_100216654();
  (*(a8 + 72))(v19, a5, a6, a7, a8);
  return sub_1001E32F4(v19, type metadata accessor for FetchRecoverableTLKSharesRequest);
}

uint64_t sub_1001D4850(char *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v53 = a6;
  v49 = a4;
  v50 = a5;
  v48 = a2;
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for AccountInfo(0);
  v51 = *(v12 - 1);
  v52 = v12;
  v14 = __chkstk_darwin(v12, v13);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v46 - v17;
  v19 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for Metrics(0);
  v24 = *(v23 - 8);
  v26 = __chkstk_darwin(v23, v25);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v29);
  v31 = &v46 - v30;
  if (a3)
  {
    v32 = *(a1 + 1);

    v32, v33, v34, v35, v36, v37, v38, v39, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55;
    *a1 = v48;
    *(a1 + 1) = a3;
  }

  sub_100019C6C(v49, v22, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1000114D4(v22, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v22, v31, type metadata accessor for Metrics);
    sub_1001E3224(v31, v28, type metadata accessor for Metrics);
    v40 = *((v53)(0) + 24);
    sub_1000114D4(&a1[v40], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v28, &a1[v40], type metadata accessor for Metrics);
    (*(v24 + 56))(&a1[v40], 0, 1, v23);
  }

  sub_100019C6C(v50, v11, &unk_10029D6F0, &qword_100226B40);
  v42 = v51;
  v41 = v52;
  if ((*(v51 + 48))(v11, 1, v52) == 1)
  {
    return sub_1000114D4(v11, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1001E3224(v11, v18, type metadata accessor for AccountInfo);
  v44 = v47;
  sub_1001E3224(v18, v47, type metadata accessor for AccountInfo);
  v45 = *((v53)(0) + 28);
  sub_1000114D4(&a1[v45], &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v44, &a1[v45], type metadata accessor for AccountInfo);
  return (*(v42 + 56))(&a1[v45], 0, 1, v41);
}

uint64_t CuttlefishAPIAsync.fetchPolicyDocuments(keys:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v15);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_1001D63AC(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
  sub_100216654();
  (*(a7 + 80))(v17, a4, a5, a6, a7);
  return sub_1001E32F4(v17, type metadata accessor for FetchPolicyDocumentsRequest);
}

uint64_t CuttlefishAPIAsync.getRepairAction(peerID:requiresEscrowCheck:knownFederations:performCleanup:metrics:accountInfo:performDanglingPeerCleanup:updateIdms:performCaesarPeerCleanup:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a8;
  v24 = a7;
  v26 = a11;
  v27 = a10;
  v28 = a12;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  __chkstk_darwin(RepairActionRequest, v20);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = v24;
  v36 = v25;
  v37 = a9;
  sub_1001D63AC(&unk_10029D710, type metadata accessor for GetRepairActionRequest, &protocol conformance descriptor for GetRepairActionRequest);
  sub_100216654();
  (*(a13 + 88))(v22, v27, v26, v28, a13);
  return sub_1001E32F4(v22, type metadata accessor for GetRepairActionRequest);
}

uint64_t CuttlefishAPIAsync.getEscrowCheck(peerID:isBackgroundCheck:passcodeGeneration:knownFederations:metrics:accountInfo:disableWithError:disableRepair:requiresEscrowCheck:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v28 = a11;
  v29 = a10;
  v27 = a13;
  v19 = type metadata accessor for GetEscrowCheckRequest(0);
  __chkstk_darwin(v19, v20);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5 & 1;
  v36 = a6;
  v37 = v25;
  v38 = v26;
  v39 = a9;
  v40 = *(&a9 + 1);
  sub_1001D63AC(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest, &protocol conformance descriptor for GetEscrowCheckRequest);
  sub_100216654();
  (*(v27 + 96))(v22, v29, v28, v30);
  return sub_1001E32F4(v22, type metadata accessor for GetEscrowCheckRequest);
}

uint64_t CuttlefishAPIAsync.resetAccountCdpcontents(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a7;
  v29 = a12;
  v30 = a11;
  v27 = a8;
  v28 = a14;
  v20 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2 & 0x1FF;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v26;
  v39 = v27;
  v40 = a9;
  v41 = a10;
  sub_1001D63AC(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest, &protocol conformance descriptor for ResetAccountCDPContentsRequest);
  sub_100216654();
  (*(v28 + 112))(v23, v30, v29, v31);
  return sub_1001E32F4(v23, type metadata accessor for ResetAccountCDPContentsRequest);
}

uint64_t sub_1001D52C0(uint64_t a1, void *a2, __int16 a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t (*a12)(void))
{
  HIDWORD(v69) = a8;
  v67 = a4;
  v68 = a6;
  v64 = a2;
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v16 - 8, v17);
  v70 = &v63 - v18;
  v19 = type metadata accessor for Metrics(0);
  v71 = *(v19 - 1);
  v72 = v19;
  v21 = __chkstk_darwin(v19, v20);
  v66 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v65 = &v63 - v24;
  v25 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v25 - 8, v26);
  v28 = &v63 - v27;
  v29 = type metadata accessor for AccountInfo(0);
  v30 = *(v29 - 8);
  v32 = __chkstk_darwin(v29, v31);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v35);
  v37 = &v63 - v36;
  if ((a3 & 0x100) == 0)
  {
    *a1 = v64;
    *(a1 + 8) = a3 & 1;
  }

  if (a5)
  {
    v38 = *(a1 + 24);

    v38, v39, v40, v41, v42, v43, v44, v45, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;
    *(a1 + 16) = v67;
    *(a1 + 24) = a5;
  }

  if (a7)
  {
    v46 = *(a1 + 40);

    v46, v47, v48, v49, v50, v51, v52, v53, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;
    *(a1 + 32) = v68;
    *(a1 + 40) = a7;
  }

  if (BYTE4(v69) != 2)
  {
    *(a1 + 48) = BYTE4(v69) & 1;
  }

  sub_100019C6C(a9, v28, &unk_10029D6F0, &qword_100226B40);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1000114D4(v28, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    sub_1001E3224(v28, v37, type metadata accessor for AccountInfo);
    sub_1001E3224(v37, v34, type metadata accessor for AccountInfo);
    v54 = *(a12(0) + 40);
    sub_1000114D4(a1 + v54, &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v34, a1 + v54, type metadata accessor for AccountInfo);
    (*(v30 + 56))(a1 + v54, 0, 1, v29);
  }

  v55 = v70;
  v56 = v71;
  sub_100019C6C(a10, v70, &qword_100297FE0, &unk_10021E7F0);
  v57 = v72;
  if ((v56[6])(v55, 1, v72) == 1)
  {
    result = sub_1000114D4(v55, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v59 = v55;
    v60 = v65;
    sub_1001E3224(v59, v65, type metadata accessor for Metrics);
    v61 = v66;
    sub_1001E3224(v60, v66, type metadata accessor for Metrics);
    v62 = *(a12(0) + 44);
    sub_1000114D4(a1 + v62, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v61, a1 + v62, type metadata accessor for Metrics);
    result = v56[7](a1 + v62, 0, 1, v57);
  }

  if (a11 != 2)
  {
    *(a1 + 49) = a11 & 1;
  }

  return result;
}

uint64_t CuttlefishAPIAsync.removeRecoveryKey(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a9;
  v25 = a8;
  v26 = a10;
  v28 = a11;
  v19 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  __chkstk_darwin(v19, v20);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = v25;
  sub_1001D63AC(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest, &protocol conformance descriptor for RemoveRecoveryKeyRequest);
  sub_100216654();
  (*(a12 + 120))(v22, v27, v26, v28, a12);
  return sub_1001E32F4(v22, type metadata accessor for RemoveRecoveryKeyRequest);
}

uint64_t CuttlefishAPIAsync.fetchPcsidentityByPublicKey(pcsServices:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  __chkstk_darwin(Request, v15);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_1001D63AC(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest, &protocol conformance descriptor for DirectPCSIdentityFetchRequest);
  sub_100216654();
  (*(a7 + 136))(v17, a4, a5, a6, a7);
  return sub_1001E32F4(v17, type metadata accessor for DirectPCSIdentityFetchRequest);
}

uint64_t sub_1001D5C30(_TtC18TrustedPeersHelper6Client **a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v50 = a5;
  v46 = a3;
  v47 = a4;
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for AccountInfo(0);
  v48 = *(v11 - 1);
  v49 = v11;
  v13 = __chkstk_darwin(v11, v12);
  v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v17 = &v45 - v16;
  v18 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v45 - v20;
  v22 = type metadata accessor for Metrics(0);
  v23 = *(v22 - 8);
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v45 - v29;
  if (*a2->endpoint)
  {
    v31 = *a1;

    v31, v32, v33, v34, v35, v36, v37, v38, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54;
    *a1 = a2;
  }

  sub_100019C6C(v46, v21, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000114D4(v21, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v21, v30, type metadata accessor for Metrics);
    sub_1001E3224(v30, v27, type metadata accessor for Metrics);
    v39 = *(v50(0) + 24);
    sub_1000114D4(a1 + v39, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v27, a1 + v39, type metadata accessor for Metrics);
    (*(v23 + 56))(a1 + v39, 0, 1, v22);
  }

  sub_100019C6C(v47, v10, &unk_10029D6F0, &qword_100226B40);
  v41 = v48;
  v40 = v49;
  if ((*(v48 + 6))(v10, 1, v49) == 1)
  {
    return sub_1000114D4(v10, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1001E3224(v10, v17, type metadata accessor for AccountInfo);
  v43 = v45;
  sub_1001E3224(v17, v45, type metadata accessor for AccountInfo);
  v44 = *(v50(0) + 28);
  sub_1000114D4(a1 + v44, &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v43, a1 + v44, type metadata accessor for AccountInfo);
  return v41[7](a1 + v44, 0, 1, v40);
}

uint64_t CuttlefishAPIAsync.fetchCurrentItem(currentItems:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  __chkstk_darwin(Request, v15);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_1001D63AC(&qword_100299090, type metadata accessor for CurrentItemFetchRequest, &protocol conformance descriptor for CurrentItemFetchRequest);
  sub_100216654();
  (*(a7 + 144))(v17, a4, a5, a6, a7);
  return sub_1001E32F4(v17, type metadata accessor for CurrentItemFetchRequest);
}

uint64_t CuttlefishAPIAsync.performCkserverUnreadableDataRemoval(metrics:accountInfo:isDbrv2:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  __chkstk_darwin(v14, v15);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_1001D63AC(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest, &protocol conformance descriptor for RemoveUnreadableCKServerDataRequest);
  sub_100216654();
  (*(a7 + 152))(v17, a4, a5, a6, a7);
  return sub_1001E32F4(v17, type metadata accessor for RemoveUnreadableCKServerDataRequest);
}

uint64_t sub_1001D63AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CuttlefishAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void CuttlefishAPIAsyncClient.reset(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298518, &unk_100226B60);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for ResetRequest);
  v12 = type metadata accessor for ResetRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetOperation(0));
  sub_100019C6C(v11, v8, &qword_100298518, &unk_100226B60);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298518, &unk_100226B60);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.establish(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298508, &qword_10021DF78);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for EstablishRequest);
  v12 = type metadata accessor for EstablishRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.EstablishOperation(0));
  sub_100019C6C(v11, v8, &qword_100298508, &qword_10021DF78);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298508, &qword_10021DF78);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.joinWithVoucher(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_1002984F8, &unk_100226B70);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for JoinWithVoucherRequest);
  v12 = type metadata accessor for JoinWithVoucherRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.JoinWithVoucherOperation(0));
  sub_100019C6C(v11, v8, &qword_1002984F8, &unk_100226B70);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_1002984F8, &unk_100226B70);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.updateTrust(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_1002984E8, &qword_10021DF58);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for UpdateTrustRequest);
  updated = type metadata accessor for UpdateTrustRequest(0);
  (*(*(updated - 8) + 56))(v11, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.UpdateTrustOperation(0));
  sub_100019C6C(v11, v8, &qword_1002984E8, &qword_10021DF58);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_1002984E8, &qword_10021DF58);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.setRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_1002984D8, &unk_100226B80);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for SetRecoveryKeyRequest);
  v12 = type metadata accessor for SetRecoveryKeyRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.SetRecoveryKeyOperation(0));
  sub_100019C6C(v11, v8, &qword_1002984D8, &unk_100226B80);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_1002984D8, &unk_100226B80);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.addCustodianRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v12 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.AddCustodianRecoveryKeyOperation(0));
  sub_100019C6C(v11, v8, &qword_100298458, &unk_100226BC0);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298458, &unk_100226BC0);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchChanges(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_1002984C8, &qword_10021DF38);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for FetchChangesRequest);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  (*(*(ChangesRequest - 8) + 56))(v11, 0, 1, ChangesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchChangesOperation(0));
  sub_100019C6C(v11, v8, &qword_1002984C8, &qword_10021DF38);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_1002984C8, &qword_10021DF38);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchViableBottles(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for FetchViableBottlesRequest);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  (*(*(ViableBottlesRequest - 8) + 56))(v11, 0, 1, ViableBottlesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchViableBottlesOperation(0));
  sub_100019C6C(v11, v8, &qword_1002984B8, &unk_100226B90);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_1002984B8, &unk_100226B90);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchRecoverableTlkshares(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for FetchRecoverableTLKSharesRequest);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  (*(*(RecoverableTLKSharesRequest - 8) + 56))(v11, 0, 1, RecoverableTLKSharesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchRecoverableTlksharesOperation(0));
  sub_100019C6C(v11, v8, &qword_100298448, &qword_10021DEB8);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298448, &qword_10021DEB8);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchPolicyDocuments(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for FetchPolicyDocumentsRequest);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  (*(*(PolicyDocumentsRequest - 8) + 56))(v11, 0, 1, PolicyDocumentsRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPolicyDocumentsOperation(0));
  sub_100019C6C(v11, v8, &qword_1002984A8, &qword_10021DF18);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_1002984A8, &qword_10021DF18);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.getRepairAction(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298498, &unk_100226BA0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for GetRepairActionRequest);
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  (*(*(RepairActionRequest - 8) + 56))(v11, 0, 1, RepairActionRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetRepairActionOperation(0));
  sub_100019C6C(v11, v8, &qword_100298498, &unk_100226BA0);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298498, &unk_100226BA0);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.getEscrowCheck(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298488, &qword_10021DEF8);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for GetEscrowCheckRequest);
  v12 = type metadata accessor for GetEscrowCheckRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetEscrowCheckOperation(0));
  sub_100019C6C(v11, v8, &qword_100298488, &qword_10021DEF8);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298488, &qword_10021DEF8);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.getSupportAppInfo(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for GetSupportAppInfoRequest);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  (*(*(SupportAppInfoRequest - 8) + 56))(v11, 0, 1, SupportAppInfoRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetSupportAppInfoOperation(0));
  sub_100019C6C(v11, v8, &qword_100298478, &unk_100226BB0);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298478, &unk_100226BB0);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.resetAccountCdpcontents(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for ResetAccountCDPContentsRequest);
  v12 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetAccountCdpcontentsOperation(0));
  sub_100019C6C(v11, v8, &qword_100298468, &qword_10021DED8);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298468, &qword_10021DED8);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.removeRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for RemoveRecoveryKeyRequest);
  v12 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.RemoveRecoveryKeyOperation(0));
  sub_100019C6C(v11, v8, &qword_100298438, &unk_100226BD0);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298438, &unk_100226BD0);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.performAtoprvactions(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for PerformATOPRVActionsRequest);
  v12 = type metadata accessor for PerformATOPRVActionsRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformAtoprvactionsOperation(0));
  sub_100019C6C(v11, v8, &qword_100298428, &qword_10021DE98);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298428, &qword_10021DE98);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchPcsidentityByPublicKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for DirectPCSIdentityFetchRequest);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  (*(*(Request - 8) + 56))(v11, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPcsidentityByPublicKeyOperation(0));
  sub_100019C6C(v11, v8, &qword_100298408, &qword_10021DE78);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298408, &qword_10021DE78);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchCurrentItem(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for CurrentItemFetchRequest);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  (*(*(Request - 8) + 56))(v11, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchCurrentItemOperation(0));
  sub_100019C6C(v11, v8, &qword_100298418, &unk_100226BE0);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_100298418, &unk_100226BE0);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

void CuttlefishAPIAsyncClient.performCkserverUnreadableDataRemoval(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v15 - v10;
  sub_1001E328C(a1, &v15 - v10, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v12 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation(0));
  sub_100019C6C(v11, v8, &qword_1002983F8, &qword_100226BF0);
  v13 = sub_100216404();
  sub_1000114D4(v11, &qword_1002983F8, &qword_100226BF0);
  v14 = v13;

  sub_1002163E4();

  sub_100216C44();
}

uint64_t CuttlefishAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CuttlefishAPIAsyncOperation.reset(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v30 = a12;
  v31 = a11;
  v28 = a8;
  v29 = a14;
  v20 = type metadata accessor for ResetRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2 & 0x1FF;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = v27;
  v40 = v28;
  v41 = a9;
  v42 = a10;
  sub_1001D63AC(&qword_100298CE0, type metadata accessor for ResetRequest, &protocol conformance descriptor for ResetRequest);
  sub_100216654();
  v24 = (*(v29 + 8))(v23, v31, v30, v32);
  sub_1001E32F4(v23, type metadata accessor for ResetRequest);
  return v24;
}

uint64_t CuttlefishAPIAsyncOperation.establish(peer:bottle:viewKeys:tlkShares:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v23 = a7;
  v16 = type metadata accessor for EstablishRequest(0);
  __chkstk_darwin(v16, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  sub_1001D63AC(&unk_10029D920, type metadata accessor for EstablishRequest, &protocol conformance descriptor for EstablishRequest);
  sub_100216654();
  v20 = (*(a10 + 16))(v19, v23, v24, a9, a10);
  sub_1001E32F4(v19, type metadata accessor for EstablishRequest);
  return v20;
}

uint64_t sub_1001D8D28(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v161 = a7;
  v158 = a6;
  v173 = a5;
  v172 = a4;
  v156 = a3;
  v154 = a2;
  v166 = a1;
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v153 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v160 = &v150 - v12;
  v13 = type metadata accessor for AccountInfo(0);
  v164 = *(v13 - 8);
  v165 = v13;
  v15 = __chkstk_darwin(v13, v14);
  v163 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v162 = &v150 - v18;
  v19 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v152 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v157 = &v150 - v24;
  v25 = type metadata accessor for Metrics(0);
  v170 = *(v25 - 8);
  v171 = v25;
  v27 = __chkstk_darwin(v25, v26);
  v159 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v169 = &v150 - v30;
  v31 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v33 = __chkstk_darwin(v31 - 8, v32);
  v151 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v35);
  v37 = &v150 - v36;
  v38 = type metadata accessor for Bottle(0);
  v167 = *(v38 - 8);
  v168 = v38;
  v40 = __chkstk_darwin(v38, v39);
  v155 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v150 = &v150 - v43;
  v44 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v46 = __chkstk_darwin(v44 - 8, v45);
  v48 = &v150 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v49);
  v51 = &v150 - v50;
  v52 = type metadata accessor for Peer(0);
  v53 = *(v52 - 8);
  v55 = __chkstk_darwin(v52, v54);
  v57 = &v150 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v58);
  v60 = &v150 - v59;
  sub_100019C6C(v154, v51, &unk_10029D7A0, &qword_10021E858);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_1000114D4(v51, &unk_10029D7A0, &qword_10021E858);
    v61 = v166;
    v62 = v169;
  }

  else
  {
    sub_1001E3224(v51, v60, type metadata accessor for Peer);
    sub_1001E328C(v60, v57, type metadata accessor for Peer);
    v63 = *(type metadata accessor for EstablishRequest(0) + 20);
    v64 = v166;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v60, type metadata accessor for Peer);
      v65 = *(v64 + v63);
      v61 = v64;
    }

    else
    {
      v66 = *(v64 + v63);
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();

      v65 = sub_1000BDADC(v67);
      sub_1001E32F4(v60, type metadata accessor for Peer);
      v66, v68, v69, v70, v71, v72, v73, v74;
      v75 = v166;
      *(v166 + v63) = v65;
      v61 = v75;
    }

    v62 = v169;
    sub_1001E3224(v57, v48, type metadata accessor for Peer);
    (*(v53 + 56))(v48, 0, 1, v52);
    v76 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v48, v65 + v76, &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  sub_100019C6C(v156, v37, &unk_10029D880, &qword_10021E830);
  v77 = (*(v167 + 48))(v37, 1, v168);
  v78 = v162;
  v79 = v160;
  v80 = v157;
  if (v77 == 1)
  {
    sub_1000114D4(v37, &unk_10029D880, &qword_10021E830);
    v81 = v164;
  }

  else
  {
    v82 = v37;
    v83 = v150;
    sub_1001E3224(v82, v150, type metadata accessor for Bottle);
    sub_1001E328C(v83, v155, type metadata accessor for Bottle);
    v84 = *(type metadata accessor for EstablishRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v83, type metadata accessor for Bottle);
      v85 = *(v61 + v84);
    }

    else
    {
      v86 = *(v61 + v84);
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();

      v85 = sub_1000BDADC(v87);
      sub_1001E32F4(v83, type metadata accessor for Bottle);
      v86, v88, v89, v90, v91, v92, v93, v94;
      *(v61 + v84) = v85;
    }

    v81 = v164;
    v95 = v151;
    sub_1001E3224(v155, v151, type metadata accessor for Bottle);
    (*(v167 + 56))(v95, 0, 1, v168);
    v96 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v95, v85 + v96, &unk_10029D880, &qword_10021E830);
    swift_endAccess();
    v62 = v169;
  }

  if (*(v172 + 16))
  {
    v97 = *(type metadata accessor for EstablishRequest(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v61 + v97);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v99 = sub_1000BDADC(v99);
      *(v61 + v97) = v99;
    }

    v100 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v101 = *&v99->_TtCs12_SwiftObject_opaque[v100];
    *&v99->_TtCs12_SwiftObject_opaque[v100] = v172;

    v101, v102, v103, v104, v105, v106, v107, v108, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159;
  }

  if (*(v173 + 16))
  {
    v109 = *(type metadata accessor for EstablishRequest(0) + 20);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v61 + v109);
    if ((v110 & 1) == 0)
    {
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v111 = sub_1000BDADC(v111);
      *(v61 + v109) = v111;
    }

    v112 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v113 = *&v111->_TtCs12_SwiftObject_opaque[v112];
    *&v111->_TtCs12_SwiftObject_opaque[v112] = v173;

    v113, v114, v115, v116, v117, v118, v119, v120, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159;
  }

  sub_100019C6C(v158, v80, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v170 + 48))(v80, 1, v171) == 1)
  {
    sub_1000114D4(v80, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v80, v62, type metadata accessor for Metrics);
    sub_1001E328C(v62, v159, type metadata accessor for Metrics);
    v121 = v62;
    v122 = *(type metadata accessor for EstablishRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v121, type metadata accessor for Metrics);
      v123 = *(v61 + v122);
    }

    else
    {
      v124 = *(v61 + v122);
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();

      v123 = sub_1000BDADC(v125);
      sub_1001E32F4(v121, type metadata accessor for Metrics);
      v124, v126, v127, v128, v129, v130, v131, v132;
      *(v61 + v122) = v123;
    }

    v133 = v152;
    sub_1001E3224(v159, v152, type metadata accessor for Metrics);
    (*(v170 + 56))(v133, 0, 1, v171);
    v134 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v133, v123 + v134, &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  v135 = v165;
  sub_100019C6C(v161, v79, &unk_10029D6F0, &qword_100226B40);
  if ((*(v81 + 48))(v79, 1, v135) == 1)
  {
    return sub_1000114D4(v79, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1001E3224(v79, v78, type metadata accessor for AccountInfo);
  sub_1001E328C(v78, v163, type metadata accessor for AccountInfo);
  v137 = *(type metadata accessor for EstablishRequest(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1001E32F4(v78, type metadata accessor for AccountInfo);
    v138 = *(v61 + v137);
  }

  else
  {
    v139 = *(v61 + v137);
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();

    v138 = sub_1000BDADC(v140);
    sub_1001E32F4(v78, type metadata accessor for AccountInfo);
    v139, v141, v142, v143, v144, v145, v146, v147;
    *(v61 + v137) = v138;
  }

  v148 = v153;
  sub_1001E3224(v163, v153, type metadata accessor for AccountInfo);
  (*(v81 + 56))(v148, 0, 1, v135);
  v149 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v148, v138 + v149, &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

uint64_t CuttlefishAPIAsyncOperation.joinWithVoucher(changeToken:peer:bottle:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v29 = a12;
  v27 = a10;
  v28 = a11;
  v19 = type metadata accessor for JoinWithVoucherRequest(0);
  __chkstk_darwin(v19, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v25;
  v37 = v26;
  v38 = a9;
  sub_1001D63AC(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest, &protocol conformance descriptor for JoinWithVoucherRequest);
  sub_100216654();
  v23 = (*(a13 + 24))(v22, v27, v28, v29, a13);
  sub_1001E32F4(v22, type metadata accessor for JoinWithVoucherRequest);
  return v23;
}

uint64_t sub_1001D9BE8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v220 = a8;
  v219 = a7;
  v233 = a6;
  v217 = a5;
  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = __chkstk_darwin(v14 - 8, v15);
  v212 = &v204 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v223 = &v204 - v19;
  v226 = type metadata accessor for AccountInfo(0);
  v225 = *(v226 - 8);
  v21 = __chkstk_darwin(v226, v20);
  v224 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v211 = &v204 - v24;
  v25 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v27 = __chkstk_darwin(v25 - 8, v26);
  v210 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v234 = &v204 - v30;
  v222 = type metadata accessor for Metrics(0);
  v232 = *(v222 - 8);
  v32 = __chkstk_darwin(v222, v31);
  v221 = &v204 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v34);
  v227 = &v204 - v35;
  v36 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v38 = __chkstk_darwin(v36 - 8, v37);
  v209 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v40);
  v218 = &v204 - v41;
  v42 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v230 = *(v42 - 8);
  v231 = v42;
  v44 = __chkstk_darwin(v42, v43);
  v208 = &v204 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v46);
  v207 = &v204 - v47;
  v48 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v50 = __chkstk_darwin(v48 - 8, v49);
  v206 = &v204 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v52);
  v214 = &v204 - v53;
  v54 = type metadata accessor for Bottle(0);
  v228 = *(v54 - 8);
  v229 = v54;
  v56 = __chkstk_darwin(v54, v55);
  v216 = &v204 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56, v58);
  v215 = &v204 - v59;
  v60 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v62 = __chkstk_darwin(v60 - 8, v61);
  v64 = &v204 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62, v65);
  v67 = &v204 - v66;
  v68 = type metadata accessor for Peer(0);
  v69 = *(v68 - 8);
  v71 = __chkstk_darwin(v68, v70);
  v213 = &v204 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71, v73);
  v75 = &v204 - v74;
  if (a3)
  {
    v204 = v64;
    v205 = a4;
    v76 = type metadata accessor for JoinWithVoucherRequest(0);
    v77 = a3;
    v78 = a1;
    v79 = *(v76 + 20);
    v80 = v77;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v78 + v79);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v82 = sub_1000C12E8(v82);
      *(v78 + v79) = v82;
    }

    a1 = v78;
    swift_beginAccess();
    v83 = *v82->containerMap;
    *v82->endpoint = a2;
    *v82->containerMap = v80;
    v83, v84, v85, v86, v87, v88, v89, v90, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213;
    a4 = v205;
    v64 = v204;
  }

  sub_100019C6C(a4, v67, &unk_10029D7A0, &qword_10021E858);
  if ((*(v69 + 48))(v67, 1, v68) == 1)
  {
    sub_1000114D4(v67, &unk_10029D7A0, &qword_10021E858);
    v91 = v227;
  }

  else
  {
    sub_1001E3224(v67, v75, type metadata accessor for Peer);
    sub_1001E328C(v75, v213, type metadata accessor for Peer);
    v92 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v75, type metadata accessor for Peer);
      v93 = *(a1 + v92);
    }

    else
    {
      v94 = *(a1 + v92);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();

      v93 = sub_1000C12E8(v95);
      sub_1001E32F4(v75, type metadata accessor for Peer);
      v94, v96, v97, v98, v99, v100, v101, v102;
      *(a1 + v92) = v93;
    }

    v91 = v227;
    sub_1001E3224(v213, v64, type metadata accessor for Peer);
    (*(v69 + 56))(v64, 0, 1, v68);
    v103 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v64, v93 + v103, &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  v104 = v214;
  sub_100019C6C(v217, v214, &unk_10029D880, &qword_10021E830);
  v105 = (*(v228 + 48))(v104, 1, v229);
  v106 = v226;
  v107 = v225;
  v108 = v219;
  v109 = v215;
  if (v105 == 1)
  {
    sub_1000114D4(v104, &unk_10029D880, &qword_10021E830);
  }

  else
  {
    sub_1001E3224(v104, v215, type metadata accessor for Bottle);
    sub_1001E328C(v109, v216, type metadata accessor for Bottle);
    v110 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v109, type metadata accessor for Bottle);
      v111 = *(a1 + v110);
    }

    else
    {
      v112 = *(a1 + v110);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();

      v114 = sub_1000C12E8(v113);
      v115 = v109;
      v111 = v114;
      sub_1001E32F4(v115, type metadata accessor for Bottle);
      v112, v116, v117, v118, v119, v120, v121, v122;
      *(a1 + v110) = v111;
    }

    v123 = v206;
    sub_1001E3224(v216, v206, type metadata accessor for Bottle);
    (*(v228 + 56))(v123, 0, 1, v229);
    v124 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v123, v111 + v124, &unk_10029D880, &qword_10021E830);
    swift_endAccess();
  }

  v125 = v234;
  if (*(v233 + 16))
  {
    v126 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(a1 + v126);
    if ((v127 & 1) == 0)
    {
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v128 = sub_1000C12E8(v128);
      *(a1 + v126) = v128;
    }

    v129 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v130 = *&v128->_TtCs12_SwiftObject_opaque[v129];
    *&v128->_TtCs12_SwiftObject_opaque[v129] = v233;

    v130, v131, v132, v133, v134, v135, v136, v137, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213;
  }

  if (*(v108 + 16))
  {
    v138 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v140 = *(a1 + v138);
    if ((v139 & 1) == 0)
    {
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v140 = sub_1000C12E8(v140);
      *(a1 + v138) = v140;
    }

    v141 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v142 = *&v140->_TtCs12_SwiftObject_opaque[v141];
    *&v140->_TtCs12_SwiftObject_opaque[v141] = v108;

    v142, v143, v144, v145, v146, v147, v148, v149, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213;
    v125 = v234;
  }

  v150 = a10;
  v151 = v218;
  sub_100019C6C(v220, v218, &qword_10029D770, &qword_10021E860);
  if ((*(v230 + 48))(v151, 1, v231) == 1)
  {
    sub_1000114D4(v151, &qword_10029D770, &qword_10021E860);
  }

  else
  {
    v233 = a10;
    v152 = v107;
    v153 = v106;
    v154 = v207;
    sub_1001E3224(v151, v207, type metadata accessor for IdmsTrustedDevicesVersion);
    v155 = v208;
    sub_1001E328C(v154, v208, type metadata accessor for IdmsTrustedDevicesVersion);
    v156 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v154, type metadata accessor for IdmsTrustedDevicesVersion);
      v157 = *(a1 + v156);
    }

    else
    {
      v158 = *(a1 + v156);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();

      v157 = sub_1000C12E8(v159);
      sub_1001E32F4(v154, type metadata accessor for IdmsTrustedDevicesVersion);
      v160 = v158;
      v91 = v227;
      v160, v161, v162, v163, v164, v165, v166, v167;
      *(a1 + v156) = v157;
    }

    v168 = v155;
    v169 = v209;
    sub_1001E3224(v168, v209, type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v230 + 56))(v169, 0, 1, v231);
    v170 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
    swift_beginAccess();
    sub_1000F9E80(v169, v157 + v170, &qword_10029D770, &qword_10021E860);
    swift_endAccess();
    v125 = v234;
    v106 = v153;
    v107 = v152;
    v150 = v233;
  }

  sub_100019C6C(a9, v125, &qword_100297FE0, &unk_10021E7F0);
  v171 = v222;
  if ((*(v232 + 48))(v125, 1, v222) == 1)
  {
    sub_1000114D4(v125, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v125, v91, type metadata accessor for Metrics);
    sub_1001E328C(v91, v221, type metadata accessor for Metrics);
    v172 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v91, type metadata accessor for Metrics);
      v173 = *(a1 + v172);
    }

    else
    {
      v174 = *(a1 + v172);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();

      v173 = sub_1000C12E8(v175);
      sub_1001E32F4(v91, type metadata accessor for Metrics);
      v174, v176, v177, v178, v179, v180, v181, v182;
      *(a1 + v172) = v173;
    }

    v183 = v210;
    sub_1001E3224(v221, v210, type metadata accessor for Metrics);
    (*(v232 + 56))(v183, 0, 1, v171);
    v184 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v183, v173 + v184, &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  v185 = v223;
  sub_100019C6C(v150, v223, &unk_10029D6F0, &qword_100226B40);
  if ((*(v107 + 48))(v185, 1, v106) == 1)
  {
    return sub_1000114D4(v185, &unk_10029D6F0, &qword_100226B40);
  }

  v187 = v185;
  v188 = v211;
  sub_1001E3224(v187, v211, type metadata accessor for AccountInfo);
  sub_1001E328C(v188, v224, type metadata accessor for AccountInfo);
  v189 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1001E32F4(v188, type metadata accessor for AccountInfo);
    v190 = *(a1 + v189);
  }

  else
  {
    v191 = *(a1 + v189);
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();

    v193 = sub_1000C12E8(v192);
    v194 = v188;
    v190 = v193;
    sub_1001E32F4(v194, type metadata accessor for AccountInfo);
    v191, v195, v196, v197, v198, v199, v200, v201;
    *(a1 + v189) = v190;
  }

  v202 = v212;
  sub_1001E3224(v224, v212, type metadata accessor for AccountInfo);
  (*(v107 + 56))(v202, 0, 1, v106);
  v203 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v202, v190 + v203, &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

uint64_t CuttlefishAPIAsyncOperation.updateTrust(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v28 = a8;
  v31 = a13;
  v29 = a11;
  v30 = a12;
  v26 = a9;
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v27;
  v39 = v28;
  v40 = a9;
  v41 = a10;
  sub_1001D63AC(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
  sub_100216654();
  v24 = (*(a14 + 32))(v23, v29, v30, v31, a14);
  sub_1001E32F4(v23, type metadata accessor for UpdateTrustRequest);
  return v24;
}

uint64_t sub_1001DAEC8(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v144 = a8;
  v138 = a7;
  v139 = a5;
  v140 = a6;
  v135 = a2;
  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v15 - 8, v16);
  v148 = &v126 - v17;
  v150 = type metadata accessor for AccountInfo(0);
  v149 = *(v150 - 8);
  v19 = __chkstk_darwin(v150, v18);
  v134 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v133 = &v126 - v22;
  v23 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v23 - 8, v24);
  v145 = &v126 - v25;
  v26 = type metadata accessor for Metrics(0);
  v146 = *(v26 - 8);
  v147 = v26;
  v28 = __chkstk_darwin(v26, v27);
  v132 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v131 = &v126 - v31;
  v32 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v32 - 8, v33);
  v141 = &v126 - v34;
  v35 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v142 = *(v35 - 8);
  v143 = v35;
  v37 = __chkstk_darwin(v35, v36);
  v130 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v39);
  v129 = &v126 - v40;
  v41 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v41 - 8, v42);
  v44 = &v126 - v43;
  v45 = type metadata accessor for SignedPeerDynamicInfo(0);
  v136 = *(v45 - 8);
  v137 = v45;
  v47 = __chkstk_darwin(v45, v46);
  v128 = &v126 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47, v49);
  v127 = &v126 - v50;
  v51 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v51 - 8, v52);
  v54 = &v126 - v53;
  v55 = type metadata accessor for SignedPeerStableInfo(0);
  v56 = *(v55 - 8);
  v58 = __chkstk_darwin(v55, v57);
  v60 = &v126 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58, v61);
  v63 = &v126 - v62;
  if (a3)
  {
    v64 = *(a1 + 1);

    v64, v65, v66, v67, v68, v69, v70, v71, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135;
    *a1 = v135;
    *(a1 + 1) = a3;
  }

  v72 = v139;
  if (v139)
  {
    v73 = *(a1 + 3);

    v73, v74, v75, v76, v77, v78, v79, v80, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135;
    *(a1 + 2) = a4;
    *(a1 + 3) = v72;
  }

  sub_100019C6C(v140, v54, &qword_1002985A8, &unk_100226650);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    sub_1000114D4(v54, &qword_1002985A8, &unk_100226650);
  }

  else
  {
    sub_1001E3224(v54, v63, type metadata accessor for SignedPeerStableInfo);
    sub_1001E3224(v63, v60, type metadata accessor for SignedPeerStableInfo);
    v81 = *(type metadata accessor for UpdateTrustRequest(0) + 36);
    sub_1000114D4(&a1[v81], &qword_1002985A8, &unk_100226650);
    sub_1001E3224(v60, &a1[v81], type metadata accessor for SignedPeerStableInfo);
    (*(v56 + 56))(&a1[v81], 0, 1, v55);
  }

  v82 = v146;
  v83 = v143;
  v84 = v136;
  sub_100019C6C(v138, v44, &unk_10029D760, &qword_10021E810);
  v85 = v137;
  if ((*(v84 + 48))(v44, 1, v137) == 1)
  {
    sub_1000114D4(v44, &unk_10029D760, &qword_10021E810);
  }

  else
  {
    v86 = v44;
    v87 = v127;
    sub_1001E3224(v86, v127, type metadata accessor for SignedPeerDynamicInfo);
    v88 = v128;
    sub_1001E3224(v87, v128, type metadata accessor for SignedPeerDynamicInfo);
    v89 = *(type metadata accessor for UpdateTrustRequest(0) + 40);
    sub_1000114D4(&a1[v89], &unk_10029D760, &qword_10021E810);
    sub_1001E3224(v88, &a1[v89], type metadata accessor for SignedPeerDynamicInfo);
    (*(v84 + 56))(&a1[v89], 0, 1, v85);
  }

  v90 = v144;
  if (*(v144 + 16))
  {
    v91 = *(a1 + 4);

    v91, v92, v93, v94, v95, v96, v97, v98, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135;
    *(a1 + 4) = v90;
  }

  if (*(a9 + 16))
  {
    v99 = *(a1 + 5);

    v99, v100, v101, v102, v103, v104, v105, v106, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135;
    *(a1 + 5) = a9;
  }

  v107 = v141;
  sub_100019C6C(a10, v141, &qword_10029D770, &qword_10021E860);
  v108 = v142;
  if ((*(v142 + 48))(v107, 1, v83) == 1)
  {
    sub_1000114D4(v107, &qword_10029D770, &qword_10021E860);
  }

  else
  {
    v109 = v107;
    v110 = v129;
    sub_1001E3224(v109, v129, type metadata accessor for IdmsTrustedDevicesVersion);
    v111 = v130;
    sub_1001E3224(v110, v130, type metadata accessor for IdmsTrustedDevicesVersion);
    v112 = *(type metadata accessor for UpdateTrustRequest(0) + 44);
    sub_1000114D4(&a1[v112], &qword_10029D770, &qword_10021E860);
    sub_1001E3224(v111, &a1[v112], type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v108 + 56))(&a1[v112], 0, 1, v83);
  }

  v113 = v147;
  v114 = v145;
  sub_100019C6C(a11, v145, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v82 + 48))(v114, 1, v113) == 1)
  {
    sub_1000114D4(v114, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v115 = v114;
    v116 = v131;
    sub_1001E3224(v115, v131, type metadata accessor for Metrics);
    v117 = v132;
    sub_1001E3224(v116, v132, type metadata accessor for Metrics);
    v118 = *(type metadata accessor for UpdateTrustRequest(0) + 48);
    sub_1000114D4(&a1[v118], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v117, &a1[v118], type metadata accessor for Metrics);
    (*(v82 + 56))(&a1[v118], 0, 1, v113);
  }

  v119 = v148;
  v120 = v149;
  sub_100019C6C(a12, v148, &unk_10029D6F0, &qword_100226B40);
  if ((*(v120 + 48))(v119, 1, v150) == 1)
  {
    return sub_1000114D4(v119, &unk_10029D6F0, &qword_100226B40);
  }

  v122 = v119;
  v123 = v133;
  sub_1001E3224(v122, v133, type metadata accessor for AccountInfo);
  v124 = v134;
  sub_1001E3224(v123, v134, type metadata accessor for AccountInfo);
  v125 = *(type metadata accessor for UpdateTrustRequest(0) + 52);
  sub_1000114D4(&a1[v125], &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v124, &a1[v125], type metadata accessor for AccountInfo);
  return (*(v120 + 56))(&a1[v125], 0, 1, v150);
}

uint64_t CuttlefishAPIAsyncOperation.setRecoveryKey(changeToken:peerID:recoverySigningPubKey:recoveryEncryptionPubKey:stableInfoAndSig:tlkShares:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v29 = a8;
  v32 = a13;
  v33 = a14;
  v30 = a15;
  v31 = a12;
  v28[1] = a10;
  v28[0] = a9;
  v22 = type metadata accessor for SetRecoveryKeyRequest(0);
  __chkstk_darwin(v22, v23);
  v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = v29;
  v42 = a9;
  v43 = a10;
  v44 = a11;
  sub_1001D63AC(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest, &protocol conformance descriptor for SetRecoveryKeyRequest);
  sub_100216654();
  v26 = (*(v30 + 40))(v25, v31, v32, v33);
  sub_1001E32F4(v25, type metadata accessor for SetRecoveryKeyRequest);
  return v26;
}

void sub_1001DBB44(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v120 = a8;
  v130 = a2;
  v20 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v20 - 8, v21);
  v129 = &v118 - v22;
  v131 = type metadata accessor for AccountInfo(0);
  v23 = *(v131 - 8);
  v25 = __chkstk_darwin(v131, v24);
  v124 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v123 = &v118 - v28;
  v29 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v29 - 8, v30);
  v127 = &v118 - v31;
  v128 = type metadata accessor for Metrics(0);
  v32 = *(v128 - 8);
  v34 = __chkstk_darwin(v128, v33);
  v122 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v36);
  v121 = &v118 - v37;
  v38 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v38 - 8, v39);
  v41 = &v118 - v40;
  v42 = type metadata accessor for SignedPeerStableInfo(0);
  v125 = *(v42 - 1);
  v126 = v42;
  v44 = __chkstk_darwin(v42, v43);
  v119 = &v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v46);
  v118 = &v118 - v47;
  if (a3)
  {
    v48 = *(a1 + 1);

    v48, v49, v50, v51, v52, v53, v54, v55, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127;
    *a1 = v130;
    *(a1 + 1) = a3;
  }

  v130 = v23;
  if (a5)
  {
    v56 = *(a1 + 3);

    v56, v57, v58, v59, v60, v61, v62, v63, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127;
    *(a1 + 2) = a4;
    *(a1 + 3) = a5;
  }

  if (a7 >> 60 != 15)
  {
    v65 = *(a1 + 4);
    v64 = *(a1 + 5);
    sub_100012558(a6, a7);
    sub_100002BF0(v65, v64, v66, v67, v68, v69, v70, v71);
    *(a1 + 4) = a6;
    *(a1 + 5) = a7;
  }

  if (a9 >> 60 != 15)
  {
    v72 = v120;
    v73 = v32;
    v75 = *(a1 + 6);
    v74 = *(a1 + 7);
    sub_100012558(v120, a9);
    v76 = v74;
    v32 = v73;
    sub_100002BF0(v75, v76, v77, v78, v79, v80, v81, v82);
    *(a1 + 6) = v72;
    *(a1 + 7) = a9;
  }

  sub_100019C6C(a10, v41, &qword_1002985A8, &unk_100226650);
  v84 = v125;
  v83 = v126;
  if ((*(v125 + 6))(v41, 1, v126) == 1)
  {
    sub_1000114D4(v41, &qword_1002985A8, &unk_100226650);
  }

  else
  {
    v85 = v41;
    v86 = v118;
    sub_1001E3224(v85, v118, type metadata accessor for SignedPeerStableInfo);
    v87 = v119;
    sub_1001E3224(v86, v119, type metadata accessor for SignedPeerStableInfo);
    v88 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 44);
    sub_1000114D4(&a1[v88], &qword_1002985A8, &unk_100226650);
    sub_1001E3224(v87, &a1[v88], type metadata accessor for SignedPeerStableInfo);
    v84[7](&a1[v88], 0, 1, v83);
  }

  v89 = v127;
  if (*(a11 + 16))
  {
    v90 = *(a1 + 8);

    v90, v91, v92, v93, v94, v95, v96, v97, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127;
    *(a1 + 8) = a11;
  }

  sub_100019C6C(a12, v89, &qword_100297FE0, &unk_10021E7F0);
  v98 = v128;
  if ((*(v32 + 48))(v89, 1, v128) == 1)
  {
    sub_1000114D4(v89, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v99 = v89;
    v100 = v121;
    sub_1001E3224(v99, v121, type metadata accessor for Metrics);
    v101 = v122;
    sub_1001E3224(v100, v122, type metadata accessor for Metrics);
    v102 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 48);
    sub_1000114D4(&a1[v102], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v101, &a1[v102], type metadata accessor for Metrics);
    (*(v32 + 56))(&a1[v102], 0, 1, v98);
  }

  v104 = v130;
  v103 = v131;
  v105 = v129;
  sub_100019C6C(a13, v129, &unk_10029D6F0, &qword_100226B40);
  if ((*(v104 + 48))(v105, 1, v103) != 1)
  {
    v106 = v105;
    v107 = v123;
    sub_1001E3224(v106, v123, type metadata accessor for AccountInfo);
    v108 = v124;
    sub_1001E3224(v107, v124, type metadata accessor for AccountInfo);
    v109 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 52);
    sub_1000114D4(&a1[v109], &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v108, &a1[v109], type metadata accessor for AccountInfo);
    (*(v104 + 56))(&a1[v109], 0, 1, v103);
    if (!*(a14 + 16))
    {
      return;
    }

    goto LABEL_21;
  }

  sub_1000114D4(v105, &unk_10029D6F0, &qword_100226B40);
  if (*(a14 + 16))
  {
LABEL_21:
    v110 = *(a1 + 9);

    v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127;
    *(a1 + 9) = a14;
  }
}

uint64_t CuttlefishAPIAsyncOperation.addCustodianRecoveryKey(changeToken:peerID:peer:stableInfoAndSig:tlkShares:dynamicInfoAndSig:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v28 = a8;
  v31 = a13;
  v29 = a11;
  v30 = a12;
  v26 = a9;
  v20 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v27;
  v39 = v28;
  v40 = a9;
  v41 = a10;
  sub_1001D63AC(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest, &protocol conformance descriptor for AddCustodianRecoveryKeyRequest);
  sub_100216654();
  v24 = (*(a14 + 48))(v23, v29, v30, v31, a14);
  sub_1001E32F4(v23, type metadata accessor for AddCustodianRecoveryKeyRequest);
  return v24;
}

void sub_1001DC440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v233 = a8;
  v230 = a7;
  v227 = a6;
  v225 = a4;
  v245 = a1;
  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v17 = __chkstk_darwin(v15 - 8, v16);
  v224 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v237 = &v213 - v20;
  v21 = type metadata accessor for AccountInfo(0);
  v239 = *(v21 - 8);
  v240 = v21;
  v23 = __chkstk_darwin(v21, v22);
  v238 = &v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v223 = &v213 - v26;
  v27 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v29 = __chkstk_darwin(v27 - 8, v28);
  v222 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v31);
  v234 = &v213 - v32;
  v236 = type metadata accessor for Metrics(0);
  v244 = *(v236 - 8);
  v34 = __chkstk_darwin(v236, v33);
  v235 = &v213 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v36);
  v221 = &v213 - v37;
  v38 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v40 = __chkstk_darwin(v38 - 8, v39);
  v220 = &v213 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v231 = &v213 - v43;
  v44 = type metadata accessor for SignedPeerDynamicInfo(0);
  v242 = *(v44 - 8);
  v243 = v44;
  v46 = __chkstk_darwin(v44, v45);
  v232 = &v213 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v48);
  v219 = &v213 - v49;
  v50 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v52 = __chkstk_darwin(v50 - 8, v51);
  v218 = &v213 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52, v54);
  v56 = &v213 - v55;
  v229 = type metadata accessor for SignedPeerStableInfo(0);
  v241 = *(v229 - 8);
  v58 = __chkstk_darwin(v229, v57);
  v228 = &v213 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58, v60);
  v217 = &v213 - v61;
  v62 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v64 = __chkstk_darwin(v62 - 8, v63);
  v66 = &v213 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64, v67);
  v69 = &v213 - v68;
  v70 = type metadata accessor for Peer(0);
  v71 = *(v70 - 1);
  v73 = __chkstk_darwin(v70, v72);
  v216 = &v213 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73, v75);
  v226 = &v213 - v76;
  if (a3)
  {
    v214 = v71;
    v215 = v70;
    v77 = v66;
    v78 = v56;
    v79 = a5;
    v80 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v81 = a3;

    v82 = v245;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v82 + v80);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v84 = sub_1000CB2E0(v84);
      *(v82 + v80) = v84;
    }

    swift_beginAccess();
    v85 = *v84->containerMap;
    *v84->endpoint = a2;
    *v84->containerMap = v81;
    v85, v86, v87, v88, v89, v90, v91, v92, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222;
    a5 = v79;
    v56 = v78;
    v66 = v77;
    v70 = v215;
    v71 = v214;
  }

  if (a5)
  {
    v93 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v94 = a5;

    v95 = v245;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v95 + v93);
    if ((v96 & 1) == 0)
    {
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v97 = sub_1000CB2E0(v97);
      *(v95 + v93) = v97;
    }

    swift_beginAccess();
    v98 = *(v97 + 5);
    *(v97 + 4) = v225;
    *(v97 + 5) = v94;
    v98, v99, v100, v101, v102, v103, v104, v105, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222;
  }

  sub_100019C6C(v227, v69, &unk_10029D7A0, &qword_10021E858);
  if ((*(v71 + 6))(v69, 1, v70) == 1)
  {
    sub_1000114D4(v69, &unk_10029D7A0, &qword_10021E858);
    v106 = v245;
  }

  else
  {
    v107 = v226;
    sub_1001E3224(v69, v226, type metadata accessor for Peer);
    v108 = v216;
    sub_1001E328C(v107, v216, type metadata accessor for Peer);
    v109 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v106 = v245;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v107, type metadata accessor for Peer);
      v110 = *(v106 + v109);
    }

    else
    {
      v111 = *(v106 + v109);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();

      v110 = sub_1000CB2E0(v112);
      sub_1001E32F4(v226, type metadata accessor for Peer);
      v111, v113, v114, v115, v116, v117, v118, v119;
      *(v106 + v109) = v110;
    }

    sub_1001E3224(v108, v66, type metadata accessor for Peer);
    (*(v71 + 7))(v66, 0, 1, v70);
    v120 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v66, &v110[v120], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  v121 = v229;
  sub_100019C6C(v230, v56, &qword_1002985A8, &unk_100226650);
  v122 = (*(v241 + 48))(v56, 1, v121);
  v123 = v239;
  v124 = v236;
  if (v122 == 1)
  {
    sub_1000114D4(v56, &qword_1002985A8, &unk_100226650);
    v125 = v233;
  }

  else
  {
    v126 = v217;
    sub_1001E3224(v56, v217, type metadata accessor for SignedPeerStableInfo);
    sub_1001E328C(v126, v228, type metadata accessor for SignedPeerStableInfo);
    v127 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v126, type metadata accessor for SignedPeerStableInfo);
      v128 = *(v106 + v127);
    }

    else
    {
      v129 = *(v106 + v127);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();

      v128 = sub_1000CB2E0(v130);
      sub_1001E32F4(v126, type metadata accessor for SignedPeerStableInfo);
      v129, v131, v132, v133, v134, v135, v136, v137;
      *(v106 + v127) = v128;
    }

    v125 = v233;
    v138 = v218;
    sub_1001E3224(v228, v218, type metadata accessor for SignedPeerStableInfo);
    (*(v241 + 56))(v138, 0, 1, v121);
    v139 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v138, &v128[v139], &qword_1002985A8, &unk_100226650);
    swift_endAccess();
  }

  if (*(v125 + 16))
  {
    v140 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v142 = *(v106 + v140);
    if ((v141 & 1) == 0)
    {
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v142 = sub_1000CB2E0(v142);
      *(v106 + v140) = v142;
    }

    v143 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v144 = *&v142->_TtCs12_SwiftObject_opaque[v143];
    *&v142->_TtCs12_SwiftObject_opaque[v143] = v125;

    v144, v145, v146, v147, v148, v149, v150, v151, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222;
  }

  v152 = v231;
  sub_100019C6C(a9, v231, &unk_10029D760, &qword_10021E810);
  if ((*(v242 + 48))(v152, 1, v243) == 1)
  {
    sub_1000114D4(v152, &unk_10029D760, &qword_10021E810);
  }

  else
  {
    v153 = v152;
    v154 = v219;
    sub_1001E3224(v153, v219, type metadata accessor for SignedPeerDynamicInfo);
    sub_1001E328C(v154, v232, type metadata accessor for SignedPeerDynamicInfo);
    v155 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v154, type metadata accessor for SignedPeerDynamicInfo);
      v156 = *(v106 + v155);
    }

    else
    {
      v157 = *(v106 + v155);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();

      v159 = sub_1000CB2E0(v158);
      v160 = v154;
      v156 = v159;
      sub_1001E32F4(v160, type metadata accessor for SignedPeerDynamicInfo);
      v157, v161, v162, v163, v164, v165, v166, v167;
      *(v106 + v155) = v156;
    }

    v168 = v220;
    sub_1001E3224(v232, v220, type metadata accessor for SignedPeerDynamicInfo);
    (*(v242 + 56))(v168, 0, 1, v243);
    v169 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v168, &v156[v169], &unk_10029D760, &qword_10021E810);
    swift_endAccess();
  }

  v170 = v234;
  sub_100019C6C(a10, v234, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v244 + 48))(v170, 1, v124) == 1)
  {
    sub_1000114D4(v170, &qword_100297FE0, &unk_10021E7F0);
    v171 = v240;
  }

  else
  {
    v172 = v221;
    sub_1001E3224(v170, v221, type metadata accessor for Metrics);
    sub_1001E328C(v172, v235, type metadata accessor for Metrics);
    v173 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v172, type metadata accessor for Metrics);
      v174 = *(v106 + v173);
    }

    else
    {
      v175 = *(v106 + v173);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();

      v174 = sub_1000CB2E0(v176);
      sub_1001E32F4(v172, type metadata accessor for Metrics);
      v175, v177, v178, v179, v180, v181, v182, v183;
      *(v106 + v173) = v174;
    }

    v171 = v240;
    v184 = v222;
    sub_1001E3224(v235, v222, type metadata accessor for Metrics);
    (*(v244 + 56))(v184, 0, 1, v124);
    v185 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v184, &v174[v185], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  v186 = v237;
  sub_100019C6C(a11, v237, &unk_10029D6F0, &qword_100226B40);
  if ((*(v123 + 48))(v186, 1, v171) == 1)
  {
    sub_1000114D4(v186, &unk_10029D6F0, &qword_100226B40);
    if (!*(a12 + 16))
    {
      return;
    }

    goto LABEL_44;
  }

  v187 = v223;
  sub_1001E3224(v186, v223, type metadata accessor for AccountInfo);
  sub_1001E328C(v187, v238, type metadata accessor for AccountInfo);
  v188 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1001E32F4(v187, type metadata accessor for AccountInfo);
    v189 = *(v106 + v188);
  }

  else
  {
    v190 = *(v106 + v188);
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();

    v189 = sub_1000CB2E0(v191);
    sub_1001E32F4(v187, type metadata accessor for AccountInfo);
    v190, v192, v193, v194, v195, v196, v197, v198;
    *(v106 + v188) = v189;
  }

  v199 = v224;
  sub_1001E3224(v238, v224, type metadata accessor for AccountInfo);
  (*(v123 + 56))(v199, 0, 1, v171);
  v200 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v199, &v189[v200], &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
  if (*(a12 + 16))
  {
LABEL_44:
    v201 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v202 = swift_isUniquelyReferenced_nonNull_native();
    v203 = *(v106 + v201);
    if ((v202 & 1) == 0)
    {
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v203 = sub_1000CB2E0(v203);
      *(v106 + v201) = v203;
    }

    v204 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v205 = *&v203->_TtCs12_SwiftObject_opaque[v204];
    *&v203->_TtCs12_SwiftObject_opaque[v204] = a12;

    v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222;
  }
}