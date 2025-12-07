void sub_1005228A4()
{
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094BB90);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10094BBA8, &qword_1007B0128);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

void sub_100522A90(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v787 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029344(a1, a2);
  sub_10015E2E4(a1, a2, &v808);
  v803 = v11;
  v804 = v7;
  v805 = a3;
  v23 = v808;
  v22 = v809;
  v25 = v810;
  v24 = v811;
  v806 = v812;
  v807 = v3;
  sub_100226C14(&v852);
  v801 = v25;
  v802 = v23;
  if (!v852)
  {
    v842 = v802;
    sub_1000050A4(&v842, &unk_10093B300, &unk_100797780);
    v855 = v22;
    sub_1000050A4(&v855, &qword_100939A08, &unk_100796A80);
    v819 = v801;
    sub_1000050A4(&v819, &unk_100945230, &qword_1007A2590);
    *&v815 = v24;
    sub_1000050A4(&v815, &qword_10093E9C0, qword_100794F90);
    v814[0] = v806;
    sub_1000050A4(v814, &unk_100945240, &qword_1007A0A70);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v27 = v807;
    [v807 setETag:isa];

    v28 = Data._bridgeToObjectiveC()().super.isa;
    [v27 setHintData:v28];

    [v27 setSerializationVersion:1];
    return;
  }

  v855 = v852;
  v856 = v853;
  v857 = v854;
  sub_100451CD4(v813);
  v798 = v8;
  v789 = v22;
  v790 = v24;
  v795 = v813[2];
  v799 = v813[3];
  v800 = v813[0];
  v794 = v813[1];
  v797 = v813[4];
  sub_1004AB2C4(&v808, 0, v814);
  v824 = v855;
  sub_1000050A4(&v824, &unk_10093B300, &unk_100797780);
  v825 = v856;
  sub_1000050A4(&v825, &qword_100939A08, &unk_100796A80);
  v826 = *(&v856 + 1);
  sub_1000050A4(&v826, &unk_100945230, &qword_1007A2590);
  v827 = v857;
  sub_1000050A4(&v827, &qword_10093E9C0, qword_100794F90);
  v828 = *(&v857 + 1);
  sub_1000050A4(&v828, &unk_100945240, &qword_1007A0A70);
  v90 = [objc_opt_self() sharedConfiguration];
  [v90 manualSortHintClientSideExpiration];

  sub_100452DF0(&v815);
  v841 = v814[0];
  sub_1000050A4(&v841, &unk_10093B300, &unk_100797780);
  v840 = v814[1];
  sub_1000050A4(&v840, &qword_100939A08, &unk_100796A80);
  v839 = v814[2];
  sub_1000050A4(&v839, &unk_100945230, &qword_1007A2590);
  v838 = v814[3];
  sub_1000050A4(&v838, &qword_10093E9C0, qword_100794F90);
  v837 = v814[4];
  sub_1000050A4(&v837, &unk_100945240, &qword_1007A0A70);
  sub_100451CD4(&v819);
  v93 = v819;
  v94 = v820;
  v95 = v800;
  if (!v800)
  {
    if (!v819)
    {
      v842 = v808;
      sub_1000050A4(&v842, &unk_10093B300, &unk_100797780);
      v836 = v809;
      sub_1000050A4(&v836, &qword_100939A08, &unk_100796A80);
      v835 = v810;
      sub_1000050A4(&v835, &unk_100945230, &qword_1007A2590);
      v834 = v811;
      sub_1000050A4(&v834, &qword_10093E9C0, qword_100794F90);
      v833 = v812;
      sub_1000050A4(&v833, &unk_100945240, &qword_1007A0A70);
      v832 = v815;
      sub_1000050A4(&v832, &unk_10093B300, &unk_100797780);
      *(&v831 + 1) = *(&v815 + 1);
      sub_1000050A4(&v831 + 8, &qword_100939A08, &unk_100796A80);
      *&v831 = v816;
      sub_1000050A4(&v831, &unk_100945230, &qword_1007A2590);
      v830 = v817;
      sub_1000050A4(&v830, &qword_10093E9C0, qword_100794F90);
      v829 = v818;
      sub_1000050A4(&v829, &unk_100945240, &qword_1007A0A70);
      return;
    }

    goto LABEL_16;
  }

  if (!v819)
  {
LABEL_16:
    v842 = v800;
    v843 = v794;
    v844 = v795;
    v91 = v798;
    v845 = v799;
    v846 = v797;
    v847 = v819;
    v848 = v820;
    v849 = v821;
    v850 = v822;
    v851 = v823;
    v791 = v821;
    v792 = v823;
    v793 = v822;
    sub_10052482C(v819, v820, v821, v822, v823);
    sub_1000050A4(&v842, &qword_10094BBC8, &qword_1007B0138);
    goto LABEL_17;
  }

  v96 = v821;
  v97 = v820;
  v98 = v822;
  v99 = v819;
  v100 = v823;
  v101 = sub_1003AD2E8(v800, v819);
  v788 = v99;
  v796 = v97;
  sub_10052482C(v99, v97, v96, v98, v100);
  v800 = v95;
  v102 = v95;
  v104 = v794;
  v103 = v795;
  v105 = v799;
  v106 = v797;
  sub_10052482C(v102, v794, v795, v799, v797);
  v791 = v96;
  v792 = v100;
  v793 = v98;
  if ((v101 & 1) == 0)
  {
    v100, v107, v108, v109, v110, v111, v112, v113;
    v98, v404, v405, v406, v407, v408, v409, v410;
    v96, v411, v412, v413, v414, v415, v416, v417;
    v94 = v796;
    v796, v418, v419, v420, v421, v422, v423, v424;
    v93 = v788;
    v788, v425, v426, v427, v428, v429, v430, v431;
    v435 = v800;
    v436 = v800;
    v437 = v104;
    v438 = v103;
    v439 = v105;
LABEL_41:
    sub_100524898(v436, v437, v438, v439, v106, v432, v433, v434);
    v106, v514, v515, v516, v517, v518, v519, v520;
    v105, v521, v522, v523, v524, v525, v526, v527;
    v535 = v103;
LABEL_42:
    v535, v528, v529, v530, v531, v532, v533, v534;
    v104, v536, v537, v538, v539, v540, v541, v542;
    v435, v543, v544, v545, v546, v547, v548, v549;
    v91 = v798;
    goto LABEL_17;
  }

  v799 = v105;
  v114 = v788;
  v94 = v796;
  sub_1004ADA04(v104, v796);
  if ((v122 & 1) == 0)
  {
    v792, v115, v116, v117, v118, v119, v120, v121;
    v793, v486, v487, v488, v489, v490, v491, v492;
    v791, v493, v494, v495, v496, v497, v498, v499;
    v94, v500, v501, v502, v503, v504, v505, v506;
    v93 = v114;
    v114, v507, v508, v509, v510, v511, v512, v513;
    v105 = v799;
    v435 = v800;
    v436 = v800;
    v437 = v104;
    v438 = v103;
    v439 = v799;
    v106 = v797;
    goto LABEL_41;
  }

  v123 = v103;
  v124 = v791;
  v93 = v114;
  if ((sub_1004ADBAC(v103, v791) & 1) == 0)
  {
    v792, v125, v126, v127, v128, v129, v130, v131;
    v793, v647, v648, v649, v650, v651, v652, v653;
    v124, v654, v655, v656, v657, v658, v659, v660;
    v94, v661, v662, v663, v664, v665, v666, v667;
    v114, v668, v669, v670, v671, v672, v673, v674;
    v132 = v799;
    v435 = v800;
LABEL_67:
    v769 = v797;
    sub_100524898(v435, v104, v123, v132, v797, v675, v676, v677);
    v769, v770, v771, v772, v773, v774, v775, v776;
    v132, v777, v778, v779, v780, v781, v782, v783;
    v535 = v123;
    goto LABEL_42;
  }

  v132 = v799;
  sub_1004ADD50(v799, v793);
  if ((v140 & 1) == 0)
  {
    v792, v133, v134, v135, v136, v137, v138, v139;
    v793, v741, v742, v743, v744, v745, v746, v747;
    v124, v748, v749, v750, v751, v752, v753, v754;
    v94, v755, v756, v757, v758, v759, v760, v761;
    v114, v762, v763, v764, v765, v766, v767, v768;
    v435 = v800;
    goto LABEL_67;
  }

  v141 = v123;
  v142 = v797;
  v143 = v792;
  v144 = sub_1005A544C(v797, v792);
  v145 = v124;
  v146 = v144;
  v147 = v143;
  v148 = v145;
  v147, v149, v150, v151, v152, v153, v154, v155;
  v793, v156, v157, v158, v159, v160, v161, v162;
  v148, v163, v164, v165, v166, v167, v168, v169;
  v94, v170, v171, v172, v173, v174, v175, v176;
  v93, v177, v178, v179, v180, v181, v182, v183;
  v184 = v800;
  sub_100524898(v800, v104, v141, v132, v142, v185, v186, v187);
  v142, v188, v189, v190, v191, v192, v193, v194;
  v132, v195, v196, v197, v198, v199, v200, v201;
  v141, v202, v203, v204, v205, v206, v207, v208;
  v104, v209, v210, v211, v212, v213, v214, v215;
  v184, v216, v217, v218, v219, v220, v221, v222;
  if (v146)
  {
    v842 = v808;
    sub_1000050A4(&v842, &unk_10093B300, &unk_100797780);
    v836 = v809;
    sub_1000050A4(&v836, &qword_100939A08, &unk_100796A80);
    v835 = v810;
    sub_1000050A4(&v835, &unk_100945230, &qword_1007A2590);
    v834 = v811;
    v223 = v93;
    v224 = v796;
    sub_1000050A4(&v834, &qword_10093E9C0, qword_100794F90);
    v833 = v812;
    sub_1000050A4(&v833, &unk_100945240, &qword_1007A0A70);
    v832 = v815;
    sub_1000050A4(&v832, &unk_10093B300, &unk_100797780);
    *(&v831 + 1) = *(&v815 + 1);
    sub_1000050A4(&v831 + 8, &qword_100939A08, &unk_100796A80);
    *&v831 = v816;
    sub_1000050A4(&v831, &unk_100945230, &qword_1007A2590);
    v830 = v817;
    sub_1000050A4(&v830, &qword_10093E9C0, qword_100794F90);
    v829 = v818;
    sub_1000050A4(&v829, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v223, v224, v148, v793, v792, v225, v226, v227);
    return;
  }

  v91 = v798;
  v94 = v796;
LABEL_17:
  v796 = v94;
  v92 = sub_10015D850();
  v800 = 0;
  v228 = v802;
  v230 = v789;
  v229 = v790;
  v231 = v807;
  v232 = v92;
  v234 = v233;
  v235 = v93;
  v236 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BBA0(v232, v234);
  [v231 setHintData:v236];

  v237 = v235;
  v238 = v231;
  [v231 setSerializationVersion:1];
  if (!v235)
  {
    v842 = 0;
    v843 = v796;
    v844 = v791;
    v845 = v793;
    v846 = v792;
    v847 = v228;
    v848 = v230;
    v849 = v801;
    v850 = v229;
    v851 = v806;
    sub_1000050A4(&v842, &qword_10094BBC8, &qword_1007B0138);
LABEL_37:
    v355 = v803;
    v354 = v804;
    v254 = v238;
    goto LABEL_46;
  }

  v239 = v808;
  v240 = sub_1003AD2E8(v235, v808);
  v241 = v235;
  v242 = v796;
  if ((v240 & 1) == 0)
  {

    v356 = v791;

    v357 = v793;

    v358 = v792;

    v239, v359, v360, v361, v362, v363, v364, v365;
    v842 = v809;
    sub_1000050A4(&v842, &qword_100939A08, &unk_100796A80);
    v836 = v810;
    sub_1000050A4(&v836, &unk_100945230, &qword_1007A2590);
    v835 = v811;
    sub_1000050A4(&v835, &qword_10093E9C0, qword_100794F90);
    v834 = v812;
    sub_1000050A4(&v834, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v241, v242, v356, v357, v358, v366, v367, v368);
    v358, v369, v370, v371, v372, v373, v374, v375;
    v357, v376, v377, v378, v379, v380, v381, v382;
    v356, v383, v384, v385, v386, v387, v388, v389;
    v242, v390, v391, v392, v393, v394, v395, v396;
    v241, v397, v398, v399, v400, v401, v402, v403;
    goto LABEL_37;
  }

  v243 = v809;

  v244 = v791;

  v245 = v793;

  v246 = v792;

  sub_1004ADA04(v242, v243);
  v254 = v238;
  if ((v255 & 1) == 0)
  {
    v243, v247, v248, v249, v250, v251, v252, v253;
    v239, v440, v441, v442, v443, v444, v445, v446;
    v842 = v810;
    sub_1000050A4(&v842, &unk_100945230, &qword_1007A2590);
    v836 = v811;
    sub_1000050A4(&v836, &qword_10093E9C0, qword_100794F90);
    v835 = v812;
    sub_1000050A4(&v835, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v237, v242, v244, v245, v246, v447, v448, v449);
    v246, v450, v451, v452, v453, v454, v455, v456;
    v245, v457, v458, v459, v460, v461, v462, v463;
    v244, v464, v465, v466, v467, v468, v469, v470;
    v242, v471, v472, v473, v474, v475, v476, v477;
    v485 = v237;
LABEL_44:
    v485, v478, v479, v480, v481, v482, v483, v484;
    v91 = v798;
LABEL_45:
    v355 = v803;
    v354 = v804;
    goto LABEL_46;
  }

  v788 = v237;
  v256 = v810;
  if ((sub_1004ADBAC(v244, v810) & 1) == 0)
  {
    v256, v257, v258, v259, v260, v261, v262, v263;
    v243, v550, v551, v552, v553, v554, v555, v556;
    v239, v557, v558, v559, v560, v561, v562, v563;
    v842 = v811;
    sub_1000050A4(&v842, &qword_10093E9C0, qword_100794F90);
    v836 = v812;
    sub_1000050A4(&v836, &unk_100945240, &qword_1007A0A70);
    v564 = v788;
    v566 = v792;
    v565 = v793;
    sub_100524898(v788, v242, v244, v793, v792, v567, v568, v569);
    v566, v570, v571, v572, v573, v574, v575, v576;
    v565, v577, v578, v579, v580, v581, v582, v583;
    v244, v584, v585, v586, v587, v588, v589, v590;
    v242, v591, v592, v593, v594, v595, v596, v597;
    v485 = v564;
    goto LABEL_44;
  }

  v264 = v811;
  v265 = v793;
  sub_1004ADD50(v793, v811);
  v91 = v798;
  if ((v273 & 1) == 0)
  {
    v264, v266, v267, v268, v269, v270, v271, v272;
    v256, v678, v679, v680, v681, v682, v683, v684;
    v243, v685, v686, v687, v688, v689, v690, v691;
    v239, v692, v693, v694, v695, v696, v697, v698;
    v842 = v812;
    sub_1000050A4(&v842, &unk_100945240, &qword_1007A0A70);
    v699 = v788;
    v700 = v796;
    v701 = v791;
    v702 = v792;
    sub_100524898(v788, v796, v791, v265, v792, v703, v704, v705);
    v702, v706, v707, v708, v709, v710, v711, v712;
    v265, v713, v714, v715, v716, v717, v718, v719;
    v701, v720, v721, v722, v723, v724, v725, v726;
    v700, v727, v728, v729, v730, v731, v732, v733;
    v699, v734, v735, v736, v737, v738, v739, v740;
    goto LABEL_45;
  }

  v274 = v812;
  v275 = v792;
  v276 = sub_1005A544C(v792, v812);
  v277 = v274;
  v91 = v798;
  v277, v278, v279, v280, v281, v282, v283, v284;
  v264, v285, v286, v287, v288, v289, v290, v291;
  v256, v292, v293, v294, v295, v296, v297, v298;
  v243, v299, v300, v301, v302, v303, v304, v305;
  v239, v306, v307, v308, v309, v310, v311, v312;
  v313 = v788;
  v314 = v796;
  v315 = v791;
  sub_100524898(v788, v796, v791, v265, v275, v316, v317, v318);
  v275, v319, v320, v321, v322, v323, v324, v325;
  v265, v326, v327, v328, v329, v330, v331, v332;
  v315, v333, v334, v335, v336, v337, v338, v339;
  v314, v340, v341, v342, v343, v344, v345, v346;
  v313, v347, v348, v349, v350, v351, v352, v353;
  v355 = v803;
  v354 = v804;
  if (v276)
  {
    (*(v91 + 16))(v803, v805, v804);
    goto LABEL_47;
  }

LABEL_46:
  UUID.init()();
LABEL_47:
  v598 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v91 + 8))(v355, v354);
  [v254 setETag:v598];

  v599 = v818;
  v833 = v818;
  v600 = *(v818 + 32);
  v601 = v600 & 0x3F;
  v805 = ((1 << v600) + 63) >> 6;
  v602 = 8 * v805;

  if (v601 <= 0xD)
  {
    goto LABEL_48;
  }

  v784 = v805;

  if (swift_stdlib_isStackAllocationSafe())
  {
    v603 = sub_1000050A4(&v833, &unk_100945240, &qword_1007A0A70);
LABEL_48:
    v804 = &v787;
    __chkstk_darwin(v603, v604);
    v605 = &v787 - ((v602 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v605, v602);
    v806 = 0;
    v606 = 0;
    v607 = 1 << *(v599 + 32);
    v608 = -1;
    if (v607 < 64)
    {
      v608 = ~(-1 << v607);
    }

    v609 = v608 & *(v599 + 56);
    v610 = (v607 + 63) >> 6;
    while (v609)
    {
      v611 = __clz(__rbit64(v609));
      v609 &= v609 - 1;
LABEL_58:
      v614 = v611 | (v606 << 6);
      v615 = *(*(v599 + 48) + 16 * v614 + 8);

      v616._countAndFlagsBits = 0x7C6C61636F6CLL;
      v616._object = 0xE600000000000000;
      v617 = String.hasPrefix(_:)(v616);
      v615, v618, v619, v620, v621, v622, v623, v624;
      if (v617)
      {
        *&v605[(v614 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v614;
        v625 = __OFADD__(v806, 1);
        v806 = (v806 + 1);
        if (v625)
        {
          __break(1u);
LABEL_62:
          v626 = sub_1001A0BCC(v605, v805, v806, v599);
          goto LABEL_63;
        }
      }
    }

    v612 = v606;
    while (1)
    {
      v606 = v612 + 1;
      if (__OFADD__(v612, 1))
      {
        break;
      }

      if (v606 >= v610)
      {
        goto LABEL_62;
      }

      v613 = *(v599 + 56 + 8 * v606);
      ++v612;
      if (v613)
      {
        v611 = __clz(__rbit64(v613));
        v609 = (v613 - 1) & v613;
        goto LABEL_58;
      }
    }

    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094BB90);
    v13 = v599;
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v807 = swift_slowAlloc();
      v855 = v807;
      *v16 = 136447234;
      v17 = [v13 ckIdentifier];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v842 = v19;
      v843 = v21;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = sub_10000668C(v29, v30, &v855);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v16 + 4) = v32;
      *(v16 + 12) = 2080;
      [v13 listTypeRawValue];
      v40 = REMManualOrderingListType.init(intValue:)();
      LOWORD(v842) = v40;
      BYTE2(v842) = BYTE2(v40) & 1;
      sub_1000F5104(&qword_10094BBB8, &qword_1007B0130);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      v44 = sub_10000668C(v41, v42, &v855);
      v43, v45, v46, v47, v48, v49, v50, v51;
      *(v16 + 14) = v44;
      *(v16 + 22) = 2080;
      v52 = [v13 listID];
      if (v52)
      {
        v53 = v52;
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;
      }

      else
      {
        v54 = 0;
        v56 = 0;
      }

      v842 = v54;
      v843 = v56;
      v57 = String.init<A>(describing:)();
      v59 = v58;
      v60 = sub_10000668C(v57, v58, &v855);
      v59, v61, v62, v63, v64, v65, v66, v67;
      *(v16 + 24) = v60;
      *(v16 + 32) = 2080;
      LOWORD(v842) = 1;
      sub_1005247D8();
      v68 = BinaryInteger.description.getter();
      v70 = v69;
      v71 = sub_10000668C(v68, v69, &v855);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v16 + 34) = v71;
      *(v16 + 42) = 2082;
      swift_getErrorValue();
      v79 = Error.localizedDescription.getter();
      v81 = v80;
      v82 = sub_10000668C(v79, v80, &v855);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v16 + 44) = v82;
      _os_log_impl(&_mh_execute_header, v14, v15, "mergeData: Invalid remoteHintData for REMCDManualSortHint {ckIdentifier: %{public}s, list type: %s, listID: %s, dataSerializationVersion: %s, error: %{public}s}", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v785 = swift_slowAlloc();
  v786 = sub_1004ADE8C(v785, v784, v599, sub_1004FD8D0);
  sub_1000050A4(&v833, &unk_100945240, &qword_1007A0A70);

  v626 = v786;
LABEL_63:
  sub_1002D6764(v626, v627, v628, v629, v630, v631, v632, v633);
  v832 = v816;
  v831 = v815;
  sub_1004FE558(1, v815, *(&v815 + 1), v816, v634, v635, v636, v637);
  v639 = v638;
  sub_1000050A4(&v831, &unk_10093B300, &unk_100797780);
  sub_1000050A4(&v831 + 8, &qword_100939A08, &unk_100796A80);
  sub_1000050A4(&v832, &unk_100945230, &qword_1007A2590);
  v830 = v817;
  sub_1000050A4(&v830, &qword_10093E9C0, qword_100794F90);
  sub_1000050A4(&v833, &unk_100945240, &qword_1007A0A70);
  sub_1002D6778(v639, v640, v641, v642, v643, v644, v645, v646);
}

uint64_t sub_1005244E8()
{
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094BB90);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10094BBA8, &qword_1007B0128);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_100524660()
{
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094BB90);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10094BBA8, &qword_1007B0128);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

unint64_t sub_1005247D8()
{
  result = qword_10094BBC0;
  if (!qword_10094BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BBC0);
  }

  return result;
}

double sub_10052482C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

double sub_100524898(_TtC7remindd19RDXPCStorePerformer *a1, char *a2, _TtC7remindd19RDXPCStorePerformer *a3, _TtC7remindd19RDXPCStorePerformer *a4, _TtC7remindd19RDXPCStorePerformer *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a2, v12, v13, v14, v15, v16, v17, v18;
    a3, v19, v20, v21, v22, v23, v24, v25;
    a4, v26, v27, v28, v29, v30, v31, v32;

    a5, v33, v34, v35, v36, v37, v38, v39;
  }

  return result;
}

uint64_t sub_100524910()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BBD0);
  v1 = sub_100006654(v0, qword_10094BBD0);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100524AC4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v9 = *(v0 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter);
    [v9 setDelegate:v0];
    [v9 setWantsNotificationResponsesDelivered];
    v10 = sub_1002DC288();
    v11 = sub_1001A571C(v10);
    v10, v12, v13, v14, v15, v16, v17, v18;
    sub_1000060C8(0, &unk_100943A40, UNNotificationCategory_ptr);
    sub_10052DB40();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v11, v20, v21, v22, v23, v24, v25, v26;
    [v9 setNotificationCategories:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100524C70(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = sub_10052DCC4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6188;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v23[1] = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_100524F34(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  *&v9 = __chkstk_darwin(v6, v8).n128_u64[0];
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 authorizationStatus];
  if ((v12 - 2) < 3)
  {
    v13 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
    *v11 = v13;
    (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    v15 = *(v7 + 8);
    v7 += 8;
    v15(v11, v6);
    if (v13)
    {
      v16 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter);
      return a3(v16);
    }

    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_13;
  }

  v17 = &qword_100936000;
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_17;
    }

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094BBD0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "User denied notification access", v21, 2u);
    }

    v22 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
    *v11 = v22;
    (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    v24 = *(v7 + 8);
    v7 += 8;
    v24(v11, v6);
    if (v22)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  if (v17[122] != -1)
  {
    goto LABEL_25;
  }

LABEL_13:
  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_10094BBD0);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "User hasn't been prompted for notification access", v28, 2u);
  }

  v29 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v11 = v29;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v31 = *(v7 + 8);
  v7 += 8;
  v31(v11, v6);
  if (v29)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_17:
  if (v17[122] != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_10094BBD0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Unknown notification authorization status", v35, 2u);
  }

  v36 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v11 = v36;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if (v36)
  {
LABEL_22:
    v16 = 0;
    return a3(v16);
  }

  __break(1u);
  return result;
}

id RDUserNotificationCenter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDUserNotificationCenter();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10052554C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = *&v5[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = sub_100342BC4;
  v13[4] = v11;
  v18[4] = sub_10052DDE4;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1004CB24C;
  v18[3] = &unk_1008F6098;
  v14 = _Block_copy(v18);
  v15 = v5;
  sub_10014D92C(a4, a5);

  v16 = a3;

  [v12 getNotificationSettingsWithCompletionHandler:v14];
  _Block_release(v14);
}

void sub_1005256BC(void *a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6, uint64_t a7)
{
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v20 = a1;
    v21 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() requestWithIdentifier:v21 content:a7 trigger:0];

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094BBD0);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    a6, v26, v27, v28, v29, v30, v31, v32;
    if (os_log_type_enabled(v24, v25))
    {
      v33 = swift_slowAlloc();
      v44 = v22;
      v34 = a4;
      v35 = v20;
      v36 = v33;
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_10000668C(a5, a6, aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "Issuing: showNotification notificationCenter.add(request) {identifier: %{public}s}", v36, 0xCu);
      sub_10000607C(v37);

      v20 = v35;
      a4 = v34;
      v22 = v44;
    }

    v38 = swift_allocObject();
    v38[2] = a2;
    v38[3] = a3;
    v38[4] = a4;
    aBlock[4] = sub_10052DC08;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008F60E8;
    v39 = _Block_copy(aBlock);
    v40 = a2;
    sub_10014D92C(a3, a4);

    [v20 addNotificationRequest:v22 withCompletionHandler:v39];
    _Block_release(v39);
  }

  else
  {
    v41 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    *v19 = v41;
    (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
    v42 = v41;
    LOBYTE(v41) = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v19, v14);
    if (v41)
    {
      if (a3)
      {
        a3(0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100525A4C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v13 = *&v2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = a2;
    aBlock[4] = sub_10052DBA8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F5FD0;
    v15 = _Block_copy(aBlock);
    v16 = v2;

    [v13 getDeliveredNotificationsWithCompletionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100525C30(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  aBlock[4] = sub_10052DBB4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6020;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  v22[1] = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_100525EF8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v12 = v13;
  (*(v8 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v7, v10);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    return a2(a4);
  }

  __break(1u);
  return result;
}

double sub_10052602C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000060C8(0, &qword_10094BCC0, UNNotification_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

void sub_1005260B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = (aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v14 = v15;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v9);
  if (v15)
  {
    v17 = *&v4[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v18 = swift_allocObject();
    v18[2] = v4;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = a1;
    v18[6] = a2;
    aBlock[4] = sub_10052D96C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F5C60;
    v19 = _Block_copy(aBlock);
    v20 = v4;

    [v17 getDeliveredNotificationsWithCompletionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005262B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  __chkstk_darwin(v25, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a1;
  v20[6] = a5;
  v20[7] = a6;
  aBlock[4] = sub_10052D984;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F5CB0;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);
}

uint64_t sub_100526590(uint64_t a1, void (*a2)(_TtC7remindd19RDXPCStorePerformer *), uint64_t a3, unint64_t a4, uint64_t a5, const char *a6)
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if ((v18 & 1) == 0)
  {
    goto LABEL_32;
  }

  v66 = a3;
  v74 = &_swiftEmptyArrayStorage;
  if (a4 >> 62)
  {
LABEL_33:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v20 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_4:
      v65 = a2;
      a2 = 0;
      v69 = a4 & 0xFFFFFFFFFFFFFF8;
      v70 = a4 & 0xC000000000000001;
      v64[1] = a4;
      v67 = a4 + 32;
      v68 = 0x80000001007FC090;
      while (1)
      {
        if (v70)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v69 + 16))
          {
            goto LABEL_31;
          }

          v21 = *(v67 + 8 * a2);
        }

        v22 = v21;
        v23 = __OFADD__(a2, 1);
        a2 = (a2 + 1);
        if (v23)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v24 = [v21 request];
        a4 = [v24 content];

        v25 = [a4 userInfo];
        v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v73[0] = 0xD000000000000025;
        v73[1] = v68;
        AnyHashable.init<A>(_:)();
        if (*(v26 + 16) && (v34 = sub_10001B0D8(v72), (v27 & 1) != 0))
        {
          sub_100005EF0(*(v26 + 56) + 32 * v34, v73);
          sub_10001B2CC(v72);
          v26, v35, v36, v37, v38, v39, v40, v41;
          sub_1000F5104(&unk_10093B300, &unk_100797780);
          if (swift_dynamicCast())
          {
            v42 = v71;
            goto LABEL_16;
          }
        }

        else
        {
          v26, v27, v28, v29, v30, v31, v32, v33;
          sub_10001B2CC(v72);
        }

        v42 = &_swiftEmptyArrayStorage;
LABEL_16:
        v43 = sub_1001A5660(v42);

        v42, v44, v45, v46, v47, v48, v49, v50;
        if (*(v43 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v58 = Hasher._finalize()(), v59 = -1 << *(v43 + 32), a4 = v58 & ~v59, ((*(v43 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0))
        {
          v60 = ~v59;
          while (1)
          {
            v61 = (*(v43 + 48) + 16 * a4);
            v51 = v61[1];
            v62 = *v61 == a5 && v51 == a6;
            if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            a4 = (a4 + 1) & v60;
            if (((*(v43 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v43, v51, v52, v53, v54, v55, v56, v57;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          a4 = *v74->clientIdentity;
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (a2 == v20)
          {
LABEL_29:
            v65(v74);
          }
        }

        else
        {
LABEL_5:
          v43, v51, v52, v53, v54, v55, v56, v57;

          if (a2 == v20)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  a2(&_swiftEmptyArrayStorage);
}

uint64_t sub_1005269F4()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v10 = sub_10001B0D8(v28), (v3 & 1) == 0))
  {
    v2, v3, v4, v5, v6, v7, v8, v9;
    sub_10001B2CC(v28);
    goto LABEL_6;
  }

  sub_100005EF0(*(v2 + 56) + 32 * v10, v29);
  sub_10001B2CC(v28);
  v2, v11, v12, v13, v14, v15, v16, v17;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v18 = &_swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v18 = 0xD000000000000025;
LABEL_7:
  v19 = sub_1001A5660(v18);
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19;
}

uint64_t sub_100526B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a6;
  v33 = a4;
  v34 = a5;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v8[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v19, v14);
  if (v20)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v8;
    *(v23 + 24) = a7;
    v24 = a8;
    *(v23 + 32) = a8;
    *(v23 + 40) = a1;
    *(v23 + 48) = a2;
    *(v23 + 56) = a3;
    v25 = v34;
    *(v23 + 64) = v33;
    *(v23 + 72) = v25;
    *(v23 + 80) = v32 & 1;
    v26 = *&v8[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v27 = swift_allocObject();
    v27[2] = v8;
    v27[3] = sub_10052D9AC;
    v27[4] = v23;
    aBlock[4] = sub_10052DDE4;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004CB24C;
    aBlock[3] = &unk_1008F5DA0;
    v28 = _Block_copy(aBlock);
    v29 = v8;
    sub_10014D92C(a7, v24);

    v30 = v25;

    [v26 getNotificationSettingsWithCompletionHandler:v28];
    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100526DB4(void *a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  v33 = a7;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v20 = __chkstk_darwin(v17, v19);
  v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a5;
    *(v23 + 32) = a6;
    *(v23 + 40) = a3;
    v24 = a4;
    v25 = v33;
    *(v23 + 48) = a4;
    *(v23 + 56) = v25;
    *(v23 + 64) = a8;
    *(v23 + 72) = a9;
    *(v23 + 80) = a1;
    *(v23 + 88) = a10 & 1;
    aBlock[4] = sub_10052D9E8;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F5DF0;
    v26 = _Block_copy(aBlock);
    v27 = a1;
    v28 = a2;

    sub_10014D92C(a3, v24);

    v29 = a9;

    [v27 getDeliveredNotificationsWithCompletionHandler:v26];
    _Block_release(v26);
  }

  else
  {
    v30 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    *v22 = v30;
    (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v17, v20);
    v31 = v30;
    LOBYTE(v30) = _dispatchPreconditionTest(_:)();
    (*(v18 + 8))(v22, v17);
    if (v30)
    {
      if (a3)
      {
        a3(0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100527020(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, unsigned __int8 a11)
{
  v35 = a7;
  v36 = a8;
  v34 = a11;
  v33 = a9;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v38 - 8);
  __chkstk_darwin(v38, v17);
  v37 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = a1;
  *(v22 + 40) = a5;
  v23 = v35;
  v24 = v36;
  *(v22 + 48) = a6;
  *(v22 + 56) = v23;
  v25 = v33;
  *(v22 + 64) = v24;
  *(v22 + 72) = v25;
  *(v22 + 80) = a2;
  *(v22 + 88) = a10;
  *(v22 + 96) = v34;
  aBlock[4] = sub_10052DA28;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F5E40;
  v26 = _Block_copy(aBlock);

  sub_10014D92C(a5, a6);

  v27 = v25;
  v28 = a2;
  v29 = a10;
  static DispatchQoS.unspecified.getter();
  v43 = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v31 = v37;
  v30 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v42 + 8))(v31, v30);
  (*(v39 + 8))(v21, v41);
}

void sub_10052734C(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3, void (*a4)(void), uint64_t a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer *a7, uint64_t a8, char *a9, void *a10, char a11)
{
  v523 = a7;
  v522 = a6;
  v525 = a5;
  v526 = a4;
  v529 = a1;
  v510 = type metadata accessor for DispatchPredicate();
  v509 = *(v510 - 8);
  __chkstk_darwin(v510, v14);
  v508 = (&v503 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Date();
  v519 = *&v16[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v16, v17);
  v506 = &v503 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v512 = &v503 - v21;
  __chkstk_darwin(v22, v23);
  v505 = &v503 - v24;
  v513 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v513, v25);
  v516 = &v503 - v26;
  v27 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v27 - 8, v28);
  v511 = &v503 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v514 = &v503 - v32;
  __chkstk_darwin(v33, v34);
  v507 = &v503 - v35;
  __chkstk_darwin(v36, v37);
  v515 = &v503 - v38;
  __chkstk_darwin(v39, v40);
  v518 = &v503 - v41;
  if (qword_1009363D0 != -1)
  {
LABEL_98:
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_100006654(v42, qword_10094BBD0);

  v527 = v43;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  a3, v46, v47, v48, v49, v50, v51, v52;
  a2, v53, v54, v55, v56, v57, v58, v59;
  v60 = os_log_type_enabled(v44, v45);
  v61 = a3 >> 62;
  v528 = a2;
  v524 = a8;
  v517 = v16;
  v62 = a3;
  if (v60)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v63 = 136315394;
    *(v63 + 4) = sub_10000668C(v529, a2, &aBlock);
    *(v63 + 12) = 2080;
    if (v61)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v65 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = &_swiftEmptyArrayStorage;
    if (v65)
    {
      v537 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v65 & ~(v65 >> 63), 0);
      if (v65 < 0)
      {
        __break(1u);
        goto LABEL_114;
      }

      v503 = v64;
      v504 = v63;
      LODWORD(v520) = v45;
      v521 = (a3 >> 62);
      v530 = v44;
      v67 = 0;
      v66 = v537;
      v68 = a3 & 0xC000000000000001;
      do
      {
        if (v68)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v69 = *&a3->clientIdentity[8 * v67 + 16];
        }

        v70 = v69;
        v71 = [v69 request];
        v72 = [v71 identifier];

        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v537 = v66;
        v77 = *v66->clientIdentity;
        v76 = *&v66->clientIdentity[8];
        if (v77 >= v76 >> 1)
        {
          sub_100026EF4((v76 > 1), v77 + 1, 1);
          v66 = v537;
        }

        ++v67;
        *v66->clientIdentity = v77 + 1;
        v78 = v66 + 16 * v77;
        *(v78 + 4) = v73;
        *(v78 + 5) = v75;
        a3 = v62;
      }

      while (v65 != v67);
      v44 = v530;
      v61 = v521;
      LOBYTE(v45) = v520;
      v63 = v504;
    }

    v16 = Array.description.getter();
    v80 = v79;
    v66, v79, v81, v82, v83, v84, v85, v86;
    v87 = sub_10000668C(v16, v80, &aBlock);
    v80, v88, v89, v90, v91, v92, v93, v94;
    *(v63 + 14) = v87;
    _os_log_impl(&_mh_execute_header, v44, v45, "Determine useReplaceInsteadOfAdd {identifier: %s, deliveredNotifications: %s}", v63, 0x16u);
    swift_arrayDestroy();

    a2 = v528;
  }

  else
  {
  }

  v521 = a9;
  v520 = a10;
  if (v61)
  {
    a8 = _CocoaArrayWrapper.endIndex.getter();
    if (a8)
    {
      goto LABEL_19;
    }

LABEL_100:

    v428 = Logger.logObject.getter();
    v429 = static os_log_type_t.default.getter();
    a2, v430, v431, v432, v433, v434, v435, v436;
    v437 = os_log_type_enabled(v428, v429);
    v128 = v524;
    if (v437)
    {
      v438 = swift_slowAlloc();
      v439 = swift_slowAlloc();
      aBlock = v439;
      *v438 = 136446210;
      *(v438 + 4) = sub_10000668C(v529, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v428, v429, "Strategy: no existing notification {identifier: %{public}s, useReplaceInsteadOfAdd: false}", v438, 0xCu);
      sub_10000607C(v439);
    }

    v537 = sub_1005269F4();
    v440 = v523;

    sub_100378434(&aBlock, v522, v440);
    v532, v441, v442, v443, v444, v445, v446, v447;
    v448 = v537;
    sub_100528F7C(v537);
    v448, v449, v450, v451, v452, v453, v454, v455;
    v340 = a11;
    if ((a11 & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_103;
  }

  a8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a8)
  {
    goto LABEL_100;
  }

LABEL_19:
  v95 = 0;
  v96 = a3 & 0xC000000000000001;
  v97 = a3 & 0xFFFFFFFFFFFFFF8;
  while (v96)
  {
    v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v106 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      goto LABEL_32;
    }

LABEL_23:
    v530 = v98;
    v107 = [v98 request];
    v108 = [v107 identifier];

    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v110;

    v111 = v109;
    a2 = v528;
    v100 = v529;
    if (v111 == v529 && v16 == v528)
    {
      goto LABEL_33;
    }

    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16, v114, v115, v116, v117, v118, v119, v120;
    if (v113)
    {
      goto LABEL_34;
    }

    ++v95;
    a3 = v62;
    if (v106 == a8)
    {
      goto LABEL_100;
    }
  }

  if (v95 >= *(v97 + 16))
  {
    __break(1u);
    goto LABEL_98;
  }

  v98 = *&a3->clientIdentity[8 * v95 + 16];
  v106 = v95 + 1;
  if (!__OFADD__(v95, 1))
  {
    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  v16, v99, v100, v101, v102, v103, v104, v105;
LABEL_34:
  v121 = v530;
  v122 = [v530 request];
  v123 = [v122 content];

  [v123 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000060C8(0, &qword_10094BCC8, UNMutableNotificationContent_ptr);
  if (!swift_dynamicCast())
  {
    p_super = v121;
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v162 = 138412290;
      v164 = [p_super request];
      v165 = [v164 content];

      *(v162 + 4) = v165;
      *v163 = v165;
      _os_log_impl(&_mh_execute_header, v160, v161, "Unable to get UNMutableNotificationContent from UNNotificationContent {notification: %@}", v162, 0xCu);
      sub_1000050A4(v163, &unk_100938E70, &unk_100797230);
    }

    if (v526)
    {
      v526(0);
    }

    goto LABEL_111;
  }

  v124 = v537;
  v125 = sub_1005269F4();
  v126 = v522;
  v127 = v523;
  LODWORD(v504) = sub_100240BDC(v522, v523, v125);
  v128 = v524;
  v129 = sub_1005269F4();
  sub_1007255AC(v125, v129);
  v131 = v130;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v126;
  *(inited + 40) = v127;

  v133 = sub_1001A5660(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  sub_1007255AC(v133, v131);
  v135 = v134;
  v136 = [v128 title];
  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v139 = v138;

  v140 = [(RDXPCStorePerformer *)v124 title];
  v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v143 = v142;

  v503 = v124;
  if (v137 != v141 || v139 != v143)
  {
    v166 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v139, v167, v168, v169, v170, v171, v172, v173;
    v143, v174, v175, v176, v177, v178, v179, v180;
    a2 = v528;
    v158 = v517;
    if (v166)
    {
      goto LABEL_43;
    }

    goto LABEL_62;
  }

  v139, v144, v145, v146, v147, v148, v149, v150;
  v143, v151, v152, v153, v154, v155, v156, v157;
  v158 = v517;
LABEL_43:
  v181 = [v128 subtitle];
  v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v184 = v183;

  v185 = [(RDXPCStorePerformer *)v124 subtitle];
  v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v188 = v187;

  if (v182 != v186 || v184 != v188)
  {
    v203 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v184, v204, v205, v206, v207, v208, v209, v210;
    v188, v211, v212, v213, v214, v215, v216, v217;
    a2 = v528;
    if (v203)
    {
      goto LABEL_47;
    }

    goto LABEL_62;
  }

  v184, v189, v190, v191, v192, v193, v194, v195;
  v188, v196, v197, v198, v199, v200, v201, v202;
LABEL_47:
  v218 = [v128 body];
  v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v221 = v220;

  v222 = [(RDXPCStorePerformer *)v124 body];
  v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v225 = v224;

  if (v219 == v223 && v221 == v225)
  {
    v221, v226, v227, v228, v229, v230, v231, v232;
    v225, v233, v234, v235, v236, v237, v238, v239;
    goto LABEL_51;
  }

  v240 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v221, v241, v242, v243, v244, v245, v246, v247;
  v225, v248, v249, v250, v251, v252, v253, v254;
  a2 = v528;
  if ((v240 & 1) == 0)
  {
LABEL_62:
    if (v504)
    {
      v273 = 1;
      goto LABEL_64;
    }

    goto LABEL_85;
  }

LABEL_51:
  v255 = [v128 date];
  if (v255)
  {
    v256 = v518;
    v257 = v255;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v258 = v256;
    v259 = 0;
    v260 = v519;
  }

  else
  {
    v259 = 1;
    v260 = v519;
    v258 = v518;
  }

  v261 = *(v260 + 56);
  v262 = 1;
  v261(v258, v259, 1, v158);
  v263 = [(RDXPCStorePerformer *)v124 date];
  v523 = v135;
  v264 = v515;
  if (v263)
  {
    v265 = v263;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v262 = 0;
  }

  v261(v264, v262, 1, v158);
  v266 = *(v513 + 48);
  v267 = v518;
  v268 = v516;
  sub_10012F78C(v518, v516);
  sub_10012F78C(v264, v268 + v266);
  v269 = *(v260 + 48);
  if (v269(v268, 1, v158) != 1)
  {
    v272 = v507;
    sub_10012F78C(v268, v507);
    if (v269(v268 + v266, 1, v158) == 1)
    {
      sub_1000050A4(v515, &unk_100938850, qword_100795AE0);
      v270 = v516;
      sub_1000050A4(v518, &unk_100938850, qword_100795AE0);
      (*(v519 + 8))(v272, v158);
      a2 = v528;
      v124 = v503;
      goto LABEL_61;
    }

    v347 = v519;
    v348 = v268 + v266;
    v349 = v505;
    (*(v519 + 32))(v505, v348, v158);
    sub_100054724(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v350 = v268;
    v351 = dispatch thunk of static Equatable.== infix(_:_:)();
    v352 = *(v347 + 8);
    v352(v349, v158);
    sub_1000050A4(v515, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v518, &unk_100938850, qword_100795AE0);
    v352(v272, v158);
    sub_1000050A4(v350, &unk_100938850, qword_100795AE0);
    a2 = v528;
    v135 = v523;
    v124 = v503;
    if (v351)
    {
      goto LABEL_79;
    }

    goto LABEL_62;
  }

  sub_1000050A4(v264, &unk_100938850, qword_100795AE0);
  v270 = v516;
  sub_1000050A4(v267, &unk_100938850, qword_100795AE0);
  v271 = v269(v270 + v266, 1, v158);
  a2 = v528;
  v124 = v503;
  if (v271 != 1)
  {
LABEL_61:
    sub_1000050A4(v270, &qword_100938C18, &qword_1007957A0);
    v135 = v523;
    goto LABEL_62;
  }

  sub_1000050A4(v270, &unk_100938850, qword_100795AE0);
  v135 = v523;
LABEL_79:
  v353 = [v128 categoryIdentifier];
  v354 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v356 = v355;

  v357 = [(RDXPCStorePerformer *)v124 categoryIdentifier];
  v358 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v360 = v359;

  if (v354 != v358 || v356 != v360)
  {
    v375 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v356, v376, v377, v378, v379, v380, v381, v382;
    v360, v383, v384, v385, v386, v387, v388, v389;
    a2 = v528;
    if ((v504 & 1) == 0)
    {
      goto LABEL_85;
    }

    v273 = v375 ^ 1;
LABEL_64:
    v274 = v514;
    UNNotificationContent.lastRecurringFireDate.getter();

    v275 = v519;
    v276 = *(v519 + 48);
    if (v276(v274, 1, v158) == 1)
    {
      sub_1000050A4(v274, &unk_100938850, qword_100795AE0);
      p_super = &v503->super;
      if (v273)
      {
LABEL_66:

        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.default.getter();
        a2, v286, v287, v288, v289, v290, v291, v292;
        if (os_log_type_enabled(v284, v285))
        {
          v293 = swift_slowAlloc();
          v294 = swift_slowAlloc();
          aBlock = v294;
          *v293 = 136446210;
          *(v293 + 4) = sub_10000668C(v529, a2, &aBlock);
          _os_log_impl(&_mh_execute_header, v284, v285, "Strategy: alreadyRetained && contentChanged {identifier: %{public}s, useReplaceInsteadOfAdd: true}", v293, 0xCu);
          sub_10000607C(v294);
        }

        v295 = v530;
        sub_100528F7C(v135);
        v135, v296, v297, v298, v299, v300, v301, v302;

        v303 = Logger.logObject.getter();
        v304 = static os_log_type_t.default.getter();
        a2, v305, v306, v307, v308, v309, v310, v311;
        if (os_log_type_enabled(v303, v304))
        {
          v312 = swift_slowAlloc();
          v313 = swift_slowAlloc();
          aBlock = v313;
          *v312 = 136446210;
          *(v312 + 4) = sub_10000668C(v529, a2, &aBlock);
          _os_log_impl(&_mh_execute_header, v303, v304, "Issuing: replaceContentForRequest() {identifier: %{public}s}", v312, 0xCu);
          sub_10000607C(v313);
        }

        p_super = String._bridgeToObjectiveC()();
        v341 = swift_allocObject();
        v342 = v521;
        v343 = v525;
        v344 = v526;
        v341[2] = v521;
        v341[3] = v344;
        v341[4] = v343;
        v535 = sub_10052DAAC;
        v536 = v341;
        aBlock = _NSConcreteStackBlock;
        v532 = 1107296256;
        v533 = sub_100042968;
        v534 = &unk_1008F5EE0;
        v345 = _Block_copy(&aBlock);
        v346 = v342;
        sub_10014D92C(v344, v343);

        [v520 replaceContentForRequestWithIdentifier:p_super replacementContent:v128 completionHandler:v345];
        goto LABEL_110;
      }
    }

    else
    {
      LODWORD(v522) = v273;
      v523 = v135;
      v314 = v512;
      v315 = *(v275 + 32);
      v315(v512, v274, v158);
      v316 = v511;
      UNNotificationContent.lastRecurringFireDate.getter();
      if (v276(v316, 1, v158) == 1)
      {
        (*(v275 + 8))(v314, v158);
        sub_1000050A4(v316, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v317 = v506;
        v315(v506, v316, v158);
        if (static Date.> infix(_:_:)())
        {
          a2 = v528;

          v318 = Logger.logObject.getter();
          v319 = static os_log_type_t.default.getter();
          a2, v320, v321, v322, v323, v324, v325, v326;
          v327 = os_log_type_enabled(v318, v319);
          v328 = v523;
          v329 = v503;
          if (v327)
          {
            v330 = swift_slowAlloc();
            v331 = swift_slowAlloc();
            aBlock = v331;
            *v330 = 136446210;
            *(v330 + 4) = sub_10000668C(v529, a2, &aBlock);
            _os_log_impl(&_mh_execute_header, v318, v319, "Strategy: alreadyRetained && recurring reminder {identifier: %{public}s, useReplaceInsteadOfAdd: false}", v330, 0xCu);
            sub_10000607C(v331);

            v317 = v506;
          }

          sub_100528F7C(v328);
          v328, v332, v333, v334, v335, v336, v337, v338;
          v339 = *(v519 + 8);
          v339(v317, v158);
          v339(v512, v158);
          v340 = a11;
          if ((a11 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_103;
        }

        v410 = *(v519 + 8);
        v410(v317, v158);
        v410(v314, v158);
      }

      a2 = v528;
      v135 = v523;
      p_super = &v503->super;
      if (v522)
      {
        goto LABEL_66;
      }
    }

    v135, v277, v278, v279, v280, v281, v282, v283;

    v411 = Logger.logObject.getter();
    v412 = static os_log_type_t.default.getter();
    a2, v413, v414, v415, v416, v417, v418, v419;
    if (os_log_type_enabled(v411, v412))
    {
      v420 = swift_slowAlloc();
      v421 = swift_slowAlloc();
      aBlock = v421;
      *v420 = 136446210;
      *(v420 + 4) = sub_10000668C(v529, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v411, v412, "Strategy: alreadyRetained && !contentChanged, nothing to do {identifier: %{public}s}", v420, 0xCu);
      sub_10000607C(v421);
    }

    v422 = *&v521[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    v423 = v508;
    *v508 = v422;
    v424 = v509;
    v425 = v510;
    (*(v509 + 104))(v423, enum case for DispatchPredicate.onQueue(_:), v510);
    v426 = v422;
    LOBYTE(v422) = _dispatchPreconditionTest(_:)();
    (*(v424 + 8))(v423, v425);
    if (v422)
    {
      v427 = v530;
      if (v526)
      {
        v526(0);
      }

      goto LABEL_111;
    }

LABEL_114:
    __break(1u);
    return;
  }

  v356, v361, v362, v363, v364, v365, v366, v367;
  v360, v368, v369, v370, v371, v372, v373, v374;
  a2 = v528;
  if (v504)
  {
    v273 = 0;
    goto LABEL_64;
  }

LABEL_85:

  v390 = Logger.logObject.getter();
  v391 = static os_log_type_t.default.getter();
  a2, v392, v393, v394, v395, v396, v397, v398;
  if (os_log_type_enabled(v390, v391))
  {
    v399 = swift_slowAlloc();
    v400 = swift_slowAlloc();
    aBlock = v400;
    *v399 = 136446210;
    *(v399 + 4) = sub_10000668C(v529, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v390, v391, "Strategy: !alreadyRetained {identifier: %{public}s, useReplaceInsteadOfAdd: false}", v399, 0xCu);
    sub_10000607C(v400);
  }

  v401 = v530;
  sub_100528F7C(v135);
  v135, v402, v403, v404, v405, v406, v407, v408;

  v340 = a11;
  if ((a11 & 1) == 0)
  {
LABEL_88:
    v409 = 15;
    goto LABEL_104;
  }

LABEL_103:
  [v128 setSound:{0, v503}];
  v409 = 6;
LABEL_104:
  v456 = v529;
  v457 = String._bridgeToObjectiveC()();
  p_super = [objc_opt_self() requestWithIdentifier:v457 content:v128 trigger:0 destinations:v409];

  v458 = v128;
  v459 = Logger.logObject.getter();
  v460 = static os_log_type_t.default.getter();

  a2, v461, v462, v463, v464, v465, v466, v467;
  if (os_log_type_enabled(v459, v460))
  {
    v468 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v468 = 136446722;
    *(v468 + 4) = sub_10000668C(v456, a2, &aBlock);
    *(v468 + 12) = 2082;
    if (v340)
    {
      v469 = 89;
    }

    else
    {
      v469 = 78;
    }

    v470 = sub_10000668C(v469, 0xE100000000000000, &aBlock);
    0xE100000000000000, v471, v472, v473, v474, v475, v476, v477;
    *(v468 + 14) = v470;
    *(v468 + 22) = 2080;
    v478 = [v458 userInfo];
    v479 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v480 = Dictionary.description.getter();
    v482 = v481;
    v479, v481, v483, v484, v485, v486, v487, v488;
    v489 = sub_10000668C(v480, v482, &aBlock);
    v482, v490, v491, v492, v493, v494, v495, v496;
    *(v468 + 24) = v489;
    _os_log_impl(&_mh_execute_header, v459, v460, "Issuing: notificationCenter.add(request) {identifier: %{public}s, skipBanner: %{public}s, userInfo: %s}", v468, 0x20u);
    swift_arrayDestroy();
  }

  v497 = v520;
  v498 = swift_allocObject();
  v499 = v521;
  v500 = v525;
  v501 = v526;
  v498[2] = v521;
  v498[3] = v501;
  v498[4] = v500;
  v535 = sub_10052DA68;
  v536 = v498;
  aBlock = _NSConcreteStackBlock;
  v532 = 1107296256;
  v533 = sub_100042968;
  v534 = &unk_1008F5E90;
  v345 = _Block_copy(&aBlock);
  v502 = v499;
  sub_10014D92C(v501, v500);

  [v497 addNotificationRequest:p_super withCompletionHandler:v345];
LABEL_110:
  _Block_release(v345);
LABEL_111:
}

void sub_100528F7C(uint64_t a1)
{
  v2 = v1;
  *&v22 = 0xD000000000000025;
  *(&v22 + 1) = 0x80000001007FC090;
  AnyHashable.init<A>(_:)();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1003689CC(*(a1 + 16), 0);
    v6 = sub_1002791DC(&v22, &v5->clientIdentity[16], v4, a1);
    v7 = v22;

    sub_10001B860(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_5:
  v8 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  v23 = v8;
  *&v22 = v5;
  v9 = [v2 userInfo];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v10;
  if (v8)
  {
    sub_100005EE0(&v22, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C7E48(v20, v24, isUniquelyReferenced_nonNull_native);
    sub_10001B2CC(v24);
  }

  else
  {
    sub_1000050A4(&v22, &qword_100939ED0, &qword_100791B10);
    sub_1003690E0(v24, v20);
    sub_1000050A4(v20, &qword_100939ED0, &qword_100791B10);
    sub_10001B2CC(v24);
    v10 = v21;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10, v13, v14, v15, v16, v17, v18, v19;
  [v2 setUserInfo:isa];
}

uint64_t sub_1005291A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v16 = *(v27 - 8);
  __chkstk_darwin(v27, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);
  swift_errorRetain();
  v22 = a2;
  sub_10014D92C(a3, a4);
  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v15, v12);
  (*(v16 + 8))(v19, v27);
}

uint64_t sub_100529468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, const char *a5)
{
  v37 = a5;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094BBD0);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v34 = a2;
    v36 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315138;
    v35 = a4;
    if (a1)
    {
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v22 = sub_10000668C(v19, v21, &v38);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, v37, v17, 0xCu);
    sub_10000607C(v18);

    a3 = v36;
    a2 = v34;
  }

  else
  {
  }

  v30 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v13 = v30;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v30)
  {
    if (a3)
    {
      return a3(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RDUserNotificationCenter.releaseNotification(identifier:reference:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v6[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v21 = swift_allocObject();
    v21[2] = v6;
    v21[3] = a5;
    v21[4] = a6;
    v21[5] = a1;
    v21[6] = a2;
    v21[7] = a3;
    v21[8] = v27;
    v22 = *&v6[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v23 = swift_allocObject();
    v23[2] = v6;
    v23[3] = sub_100529CE4;
    v23[4] = v21;
    aBlock[4] = sub_100342BD4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004CB24C;
    aBlock[3] = &unk_1008F5B98;
    v24 = _Block_copy(aBlock);
    v25 = v6;
    sub_10014D92C(a5, a6);

    [v22 getNotificationSettingsWithCompletionHandler:v24];
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100529A98(void *a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a5;
    v21[4] = a6;
    v21[5] = a3;
    v21[6] = a4;
    v21[7] = a7;
    v21[8] = v28;
    v21[9] = a1;
    aBlock[4] = sub_10052DCD0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F61D8;
    v22 = _Block_copy(aBlock);
    v23 = a1;
    v24 = a2;

    sub_10014D92C(a3, a4);

    [v23 getDeliveredNotificationsWithCompletionHandler:v22];
    _Block_release(v22);
  }

  else
  {
    v25 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    *v20 = v25;
    (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
    v26 = v25;
    LOBYTE(v25) = _dispatchPreconditionTest(_:)();
    (*(v16 + 8))(v20, v15);
    if (v25)
    {
      if (a3)
      {
        a3(0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100529CF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v29 = a7;
  v30 = a8;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v31 - 8);
  __chkstk_darwin(v31, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a2;
  v21[6] = a5;
  v21[7] = a6;
  v22 = a6;
  v23 = v30;
  v21[8] = v29;
  v21[9] = v23;
  v21[10] = a9;
  aBlock[4] = sub_10052DD04;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6228;
  v24 = _Block_copy(aBlock);

  v25 = a2;
  sub_10014D92C(a5, v22);

  v26 = a9;
  static DispatchQoS.unspecified.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v27 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v35 + 8))(v17, v27);
  (*(v32 + 8))(v20, v34);
}

void sub_10052A008(unint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3, char *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v155 = a7;
  v157 = a6;
  v162 = a4;
  v164 = a2;
  v16 = type metadata accessor for DispatchPredicate();
  v159 = *(v16 - 8);
  v160 = v16;
  v18 = __chkstk_darwin(v16, v17);
  v158 = (&v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = a5;
  v156 = a8;
  if (a1 >> 62)
  {
LABEL_43:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_44:
    v150 = *&v162[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    v9 = v158;
    v151 = v159;
    v158->super.isa = v150;
    v152 = v160;
    (*(v151 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v160, v18);
    v153 = v150;
    v46 = _dispatchPreconditionTest(_:)();
    (*(v151 + 8))(v9, v152);
    if (v46)
    {
      if (v161)
      {
        v161(0);
      }

      return;
    }

    __break(1u);
LABEL_49:
    swift_once();
LABEL_20:
    v62 = type metadata accessor for Logger();
    v63 = sub_100006654(v62, qword_10094BBD0);
    v64 = v46;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    v10, v67, v68, v69, v70, v71, v72, v73;
    if (os_log_type_enabled(v65, v66))
    {
      v74 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock[0] = v155;
      *v74 = 136446466;
      *(v74 + 4) = sub_10000668C(v164, v10, aBlock);
      *(v74 + 12) = 2080;
      v75 = [v64 userInfo];
      v163 = v64;
      v156 = v63;
      v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = Dictionary.description.getter();
      v79 = v78;
      v76, v78, v80, v81, v82, v83, v84, v85;
      v86 = v77;
      a3 = v9;
      v87 = sub_10000668C(v86, v79, aBlock);
      v64 = v163;
      v79, v88, v89, v90, v91, v92, v93, v94;
      *(v74 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v65, v66, "releaseNotification: {identifier: %{public}s, userInfo = %s}", v74, 0x16u);
      swift_arrayDestroy();
    }

    v95 = sub_1005269F4();
    v96 = *(v95 + 16);
    v95, v97, v98, v99, v100, v101, v102, v103;

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    v10, v106, v107, v108, v109, v110, v111, v112;
    v113 = os_log_type_enabled(v104, v105);
    if (v96)
    {
      if (v113)
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        aBlock[0] = v115;
        *v114 = 136446210;
        v116 = v164;
        *(v114 + 4) = sub_10000668C(v164, v10, aBlock);
        _os_log_impl(&_mh_execute_header, v104, v105, "Issuing: replaceContentForRequest {identifier: %{public}s}", v114, 0xCu);
        sub_10000607C(v115);
      }

      else
      {

        v116 = v164;
      }

      v129 = String._bridgeToObjectiveC()();
      v130 = swift_allocObject();
      v131 = v162;
      v130[2] = v162;
      v130[3] = v116;
      v132 = v161;
      v130[4] = v10;
      v130[5] = v132;
      v133 = v157;
      v130[6] = v157;
      aBlock[4] = sub_10052DD3C;
      aBlock[5] = v130;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008F6278;
      v134 = _Block_copy(aBlock);

      v135 = v131;
      sub_10014D92C(v132, v133);

      [v154 replaceContentForRequestWithIdentifier:v129 replacementContent:v64 completionHandler:v134];
      _Block_release(v134);

      return;
    }

    if (v113)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock[0] = v127;
      *v126 = 136446210;
      v128 = v164;
      *(v126 + 4) = sub_10000668C(v164, v10, aBlock);
      _os_log_impl(&_mh_execute_header, v104, v105, "Issuing: removeDeliveredNotifications since retain count is zero {identifier: %{public}s}", v126, 0xCu);
      sub_10000607C(v127);
    }

    else
    {

      v128 = v164;
    }

    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_100791300;
    *(v136 + 32) = v128;
    *(v136 + 40) = v10;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v136, v138, v139, v140, v141, v142, v143, v144;
    [v154 removeDeliveredNotificationsWithIdentifiers:isa];

    v145 = *&v162[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    v147 = v158;
    v146 = v159;
    v158->super.isa = v145;
    v148 = v160;
    (*(v146 + 104))(v147, enum case for DispatchPredicate.onQueue(_:), v160);
    v149 = v145;
    LOBYTE(v145) = _dispatchPreconditionTest(_:)();
    (*(v146 + 8))(v147, v148);
    if (v145)
    {
      if (v161)
      {
        v161(0);
      }

      return;
    }

LABEL_51:
    __break(1u);
    return;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_44;
  }

LABEL_3:
  v21 = 0;
  v154 = a9;
  v163 = a1 & 0xC000000000000001;
  while (v163)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v9 = v22;
    v31 = [(RDXPCStorePerformer *)v22 request:v154];
    v10 = a3;
    v32 = [v31 identifier];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v34;

    v24 = v164;
    if (v33 == v164 && v11 == v10)
    {
      goto LABEL_17;
    }

    a3 = v10;
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11, v37, v38, v39, v40, v41, v42, v43;
    if (v36)
    {
      goto LABEL_18;
    }

    ++v21;
    if (v30 == v20)
    {
      goto LABEL_44;
    }
  }

  if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_43;
  }

  v22 = *(a1 + 8 * v21 + 32);
  v30 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v11, v23, v24, v25, v26, v27, v28, v29;
LABEL_18:
  a3 = v9;
  v44 = [(RDXPCStorePerformer *)v9 request];
  v45 = [v44 content];

  [v45 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000060C8(0, &qword_10094BCC8, UNMutableNotificationContent_ptr);
  if (swift_dynamicCast())
  {
    v46 = aBlock[6];
    aBlock[0] = sub_1005269F4();
    sub_10019EC58(v155, v156);
    v47, v47, v48, v49, v50, v51, v52, v53;
    v54 = aBlock[0];
    sub_100528F7C(aBlock[0]);
    v54, v55, v56, v57, v58, v59, v60, v61;
    if (qword_1009363D0 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_20;
  }

  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for Logger();
  sub_100006654(v117, qword_10094BBD0);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&_mh_execute_header, v118, v119, "Unable to create UNMutableNotificationContent from UNNotificationContent", v120, 2u);
  }

  v121 = *&v162[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v123 = v158;
  v122 = v159;
  v158->super.isa = v121;
  v124 = v160;
  (*(v122 + 104))(v123, enum case for DispatchPredicate.onQueue(_:), v160);
  v125 = v121;
  LOBYTE(v121) = _dispatchPreconditionTest(_:)();
  (*(v122 + 8))(v123, v124);
  if ((v121 & 1) == 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v161)
  {
    v161(0);
  }
}

uint64_t sub_10052AA54(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  __chkstk_darwin(v25, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a5;
  v20[7] = a6;
  aBlock[4] = sub_10052DD6C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F62C8;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  v22 = a2;
  sub_10014D92C(a5, a6);
  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);
}

uint64_t sub_10052AD38(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v43 = a1;
  v44 = a6;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094BBD0);

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  a2, v18, v19, v20, v21, v22, v23, v24;

  if (os_log_type_enabled(v16, v17))
  {
    v41 = a4;
    v42 = a5;
    v25 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_10000668C(v43, a2, &v45);
    *(v25 + 12) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_10000668C(v26, v28, &v45);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "releaseNotification: replaced content {identifier: %{public}s, error: %s}", v25, 0x16u);
    swift_arrayDestroy();

    a4 = v41;
    a5 = v42;
  }

  else
  {
  }

  v37 = *(a4 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v14 = v37;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v37)
  {
    if (a5)
    {
      return a5(a3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RDUserNotificationCenter.userNotificationCenter(_:willPresent:withCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094BBD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "userNotificationCenter willPresent", v7, 2u);
  }

  return a3(27);
}

uint64_t RDUserNotificationCenter.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v183 = a3;
  v184 = a4;
  v5 = sub_1000F5104(&qword_10094BBF8, &qword_1007B0140);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v176 - v7;
  v9 = type metadata accessor for RDUserNotificationType();
  v182 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v181 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v180 = &v176 - v14;
  v15 = sub_1000F5104(&unk_10094BC00, &unk_1007B0148);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v176 - v17;
  v19 = type metadata accessor for RDUserNotificationAction();
  v20 = *(v19 - 8);
  *&v22 = __chkstk_darwin(v19, v21).n128_u64[0];
  v24 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a2 actionIdentifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  RDUserNotificationAction.init(rawValue:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000050A4(v18, &unk_10094BC00, &unk_1007B0148);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10094BBD0);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v28, v32, v33, v34, v35, v36, v37, v38;
    if (os_log_type_enabled(v30, v31))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v185 = v47;
      *v46 = 136315138;
      v48 = sub_10000668C(v26, v28, &v185);
      v28, v49, v50, v51, v52, v53, v54, v55;
      *(v46 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unknown notification action. {actionIdentifier: %s}", v46, 0xCu);
      sub_10000607C(v47);
    }

    else
    {
      v28, v39, v40, v41, v42, v43, v44, v45;
    }

    return v183(v77);
  }

  v56 = v20;
  v57 = *(v20 + 32);
  v178 = v24;
  v57(v24, v18, v19);
  v177 = a2;
  v58 = [a2 notification];
  v59 = [v58 request];

  v60 = [v59 content];
  v61 = v60;
  RDUserNotificationType.init(notificationContent:)();
  v62 = v182;
  if ((*(v182 + 48))(v8, 1, v9) == 1)
  {
    v28, v63, v64, v65, v66, v67, v68, v69;
    sub_1000050A4(v8, &qword_10094BBF8, &qword_1007B0140);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100006654(v70, qword_10094BBD0);
    v71 = v61;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = v71;
      v76 = v71;
      _os_log_impl(&_mh_execute_header, v72, v73, "Unknown notification type from content. {content: %@}", v74, 0xCu);
      sub_1000050A4(v75, &unk_100938E70, &unk_100797230);
    }

    else
    {
      v76 = v72;
      v72 = v71;
    }

    v77 = (*(v56 + 8))(v178, v19);
    return v183(v77);
  }

  v78 = v9;
  v79 = v62;
  v80 = v180;
  (*(v62 + 32))(v180, v8, v78);
  v81 = *(v62 + 16);
  v82 = v181;
  v81(v181, v80, v78);
  v83 = (*(v79 + 88))(v82, v78);
  if (v83 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    v91 = v179;
    v28, v84, v85, v86, v87, v88, v89, v90;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_100006654(v92, qword_10094BBD0);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Forwarding .reminderAlarm notification response to reminderAlarmDelegate", v95, 2u);
    }

    v96 = v91 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v97 = *(v96 + 8);
      ObjectType = swift_getObjectType();
      v99 = v91;
      v100 = v178;
      (*(v97 + 8))(v99, v177, v80, v178, v183, v184, ObjectType, v97);

      swift_unknownObjectRelease();
    }

    else
    {

      v100 = v178;
    }

    v128 = *(v79 + 8);
    v128(v80, v78);
    (*(v56 + 8))(v100, v19);
    return (v128)(v181, v78);
  }

  v102 = v56;
  if (v83 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    v103 = v179;
    v28, v84, v85, v86, v87, v88, v89, v90;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_100006654(v104, qword_10094BBD0);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.info.getter();
    v107 = os_log_type_enabled(v105, v106);
    v108 = v177;
    if (v107)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Forwarding .todayNotificationForSingleReminder notification response to todayNotificationDelegate", v109, 2u);
    }

    v110 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
LABEL_29:
    v111 = v103 + v110;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v112 = *(v111 + 8);
      v113 = swift_getObjectType();
      v114 = v103;
      v115 = v108;
      v116 = v180;
      v117 = v178;
      (*(v112 + 8))(v114, v115, v180, v178, v183, v184, v113, v112);

      swift_unknownObjectRelease();
    }

    else
    {

      v117 = v178;
      v116 = v180;
    }

    v128 = *(v79 + 8);
    v128(v116, v78);
    (*(v102 + 8))(v117, v19);
    return (v128)(v181, v78);
  }

  if (v83 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {
    v28, v84, v85, v86, v87, v88, v89, v90;
    v118 = *(v79 + 8);
    v182 = v79 + 8;
    v119 = v118;
    v118(v181, v78);
    v120 = v178;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    sub_100006654(v121, qword_10094BBD0);
    v122 = v177;
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v125 = 138412290;
      *(v125 + 4) = v122;
      *v126 = v122;
      v127 = v122;
      _os_log_impl(&_mh_execute_header, v123, v124, "remindd didn't expect to receive actions from .caldavSharedList. {response: %@}", v125, 0xCu);
      sub_1000050A4(v126, &unk_100938E70, &unk_100797230);
      v102 = v56;

      v120 = v178;
    }

    v119(v180, v78);
LABEL_37:
    v77 = (*(v102 + 8))(v120, v19);
    return v183(v77);
  }

  if (v83 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    v129 = v179;
    v28, v84, v85, v86, v87, v88, v89, v90;
    v130 = *(v79 + 8);
    v130(v181, v78);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    sub_100006654(v131, qword_10094BBD0);
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&_mh_execute_header, v132, v133, "Forwarding .assignmentNotification response to assignmentNotificationDelegate", v134, 2u);
    }

    v135 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate;
LABEL_55:
    v140 = v129 + v135;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v141 = *(v140 + 8);
      v142 = swift_getObjectType();
      v143 = v129;
      v144 = v178;
      v145 = v180;
      (*(v141 + 8))(v143, v177, v180, v178, v183, v184, v142, v141);

      swift_unknownObjectRelease();
    }

    else
    {

      v144 = v178;
      v145 = v180;
    }

    v130(v145, v78);
    return (*(v56 + 8))(v144, v19);
  }

  if (v83 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    v129 = v179;
    v28, v84, v85, v86, v87, v88, v89, v90;
    v130 = *(v79 + 8);
    v130(v181, v78);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v136 = type metadata accessor for Logger();
    sub_100006654(v136, qword_10094BBD0);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&_mh_execute_header, v137, v138, "Forwarding .shareListUpdateNotification response to sharedListUpdateNotificationDelegate", v139, 2u);
    }

    v135 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_sharedListUpdateNotificationDelegate;
    goto LABEL_55;
  }

  if (v83 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    v103 = v179;
    v28, v84, v85, v86, v87, v88, v89, v90;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v146 = type metadata accessor for Logger();
    sub_100006654(v146, qword_10094BBD0);
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.info.getter();
    v149 = os_log_type_enabled(v147, v148);
    v108 = v177;
    if (v149)
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v147, v148, "Forwarding .dueDateDeltaAlarm notification response to reminderAlarmDelegate", v150, 2u);
    }

    v110 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate;
    goto LABEL_29;
  }

  if (v83 == enum case for RDUserNotificationType.todayNotification(_:))
  {
    v151 = v179;
    v28, v84, v85, v86, v87, v88, v89, v90;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v152 = type metadata accessor for Logger();
    sub_100006654(v152, qword_10094BBD0);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.info.getter();
    v155 = os_log_type_enabled(v153, v154);
    v156 = v177;
    if (v155)
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v153, v154, "Forwarding .todayNotification notification response to todayNotificationDelegate", v157, 2u);
    }

    v158 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
  }

  else
  {
    v120 = v178;
    if (v83 == enum case for RDUserNotificationType.todayNotificationBadge(_:))
    {
      v28, v84, v85, v86, v87, v88, v89, v90;
      if (qword_1009363D0 != -1)
      {
        swift_once();
      }

      v159 = type metadata accessor for Logger();
      sub_100006654(v159, qword_10094BBD0);
      v160 = v177;
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v163 = 138412290;
        *(v163 + 4) = v160;
        *v164 = v160;
        v165 = v160;
        _os_log_impl(&_mh_execute_header, v161, v162, "remindd didn't expect to receive actions from .todayNotificationBadge. {response: %@}", v163, 0xCu);
        sub_1000050A4(v164, &unk_100938E70, &unk_100797230);
        v102 = v56;

        v120 = v178;
      }

      (*(v79 + 8))(v180, v78);
      goto LABEL_37;
    }

    v156 = v177;
    if (v83 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v151 = v179;
    v28, v84, v85, v86, v87, v88, v89, v90;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    sub_100006654(v166, qword_10094BBD0);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&_mh_execute_header, v167, v168, "Forwarding .beforeFirstUnlock notification response to beforeFirstUnlockReminderDelegate", v169, 2u);
    }

    v158 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate;
  }

  v170 = v151 + v158;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v171 = *(v170 + 8);
    v172 = swift_getObjectType();
    v173 = v151;
    v174 = v180;
    v175 = v178;
    (*(v171 + 8))(v173, v156, v180, v178, v183, v184, v172, v171);

    swift_unknownObjectRelease();
  }

  else
  {

    v175 = v178;
    v174 = v180;
  }

  (*(v79 + 8))(v174, v78);
  return (*(v102 + 8))(v175, v19);
}

uint64_t sub_10052C578(uint64_t a1)
{
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094BBD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "userNotificationCenter willPresent", v5, 2u);
  }

  v6 = *(a1 + 16);

  return v6(a1, 27);
}

uint64_t sub_10052C674(void *a1, char *a2, void (**a3)(void))
{
  v165 = a2;
  v5 = sub_1000F5104(&qword_10094BBF8, &qword_1007B0140);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v161 - v7;
  v9 = type metadata accessor for RDUserNotificationType();
  v167 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v166 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v164 = &v161 - v14;
  v15 = sub_1000F5104(&unk_10094BC00, &unk_1007B0148);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v161 - v17;
  v19 = type metadata accessor for RDUserNotificationAction();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v168 = a3;
  v169 = v24;
  *(v24 + 16) = a3;
  _Block_copy(a3);
  v25 = [a1 actionIdentifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  RDUserNotificationAction.init(rawValue:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000050A4(v18, &unk_10094BC00, &unk_1007B0148);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10094BBD0);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v28, v32, v33, v34, v35, v36, v37, v38;
    if (os_log_type_enabled(v30, v31))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v170 = v47;
      *v46 = 136315138;
      v48 = sub_10000668C(v26, v28, &v170);
      v28, v49, v50, v51, v52, v53, v54, v55;
      *(v46 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unknown notification action. {actionIdentifier: %s}", v46, 0xCu);
      sub_10000607C(v47);
    }

    else
    {
      v28, v39, v40, v41, v42, v43, v44, v45;
    }

    goto LABEL_23;
  }

  v163 = v20;
  (*(v20 + 32))(v23, v18, v19);
  v162 = a1;
  v56 = [a1 notification];
  v57 = [v56 request];

  v58 = [v57 content];
  v59 = v58;
  RDUserNotificationType.init(notificationContent:)();
  v60 = v167;
  v68 = v23;
  if ((*(v167 + 48))(v8, 1, v9) == 1)
  {
    v28, v61, v62, v63, v64, v65, v66, v67;
    sub_1000050A4(v8, &qword_10094BBF8, &qword_1007B0140);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100006654(v69, qword_10094BBD0);
    v70 = v59;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      *(v73 + 4) = v70;
      *v74 = v70;
      v75 = v70;
      _os_log_impl(&_mh_execute_header, v71, v72, "Unknown notification type from content. {content: %@}", v73, 0xCu);
      sub_1000050A4(v74, &unk_100938E70, &unk_100797230);

      v68 = v23;
    }

    else
    {
      v75 = v71;
      v71 = v70;
    }

LABEL_22:
    (*(v163 + 8))(v68, v19);
LABEL_23:
    v168[2]();
  }

  v76 = v9;
  v77 = v164;
  (*(v60 + 32))(v164, v8, v76);
  v78 = v166;
  (*(v60 + 16))(v166, v77, v76);
  v79 = (*(v60 + 88))(v78, v76);
  if (v79 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    v28, v80, v81, v82, v83, v84, v85, v86;
    v87 = v165;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100006654(v88, qword_10094BBD0);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v169;
    if (!v91)
    {
      goto LABEL_19;
    }

    v93 = v59;
    v94 = swift_slowAlloc();
    *v94 = 0;
    v95 = "Forwarding .reminderAlarm notification response to reminderAlarmDelegate";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v89, v90, v95, v94, 2u);
    v59 = v93;
    v87 = v165;

LABEL_19:

    v96 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate;
LABEL_31:
    v104 = &v87[v96];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v105 = *(v104 + 1);
      ObjectType = swift_getObjectType();
      (*(v105 + 8))(v87, v162, v77, v68, sub_10052D99C, v92, ObjectType, v105);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v107 = *(v60 + 8);
    v107(v77, v76);
    (*(v163 + 8))(v68, v19);
    v107(v166, v76);
  }

  v98 = v162;
  v87 = v165;
  if (v79 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    v28, v80, v81, v82, v83, v84, v85, v86;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_100006654(v99, qword_10094BBD0);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    v102 = os_log_type_enabled(v100, v101);
    v92 = v169;
    if (v102)
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Forwarding .todayNotificationForSingleReminder notification response to todayNotificationDelegate", v103, 2u);
      v87 = v165;
    }

    v96 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
    goto LABEL_31;
  }

  if (v79 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {
    v165 = v59;
    v28, v80, v81, v82, v83, v84, v85, v86;
    v108 = *(v60 + 8);
    v167 = v60 + 8;
    v108(v166, v76);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    sub_100006654(v109, qword_10094BBD0);
    v110 = v98;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = v68;
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      *(v114 + 4) = v110;
      *v115 = v110;
      v116 = v110;
      _os_log_impl(&_mh_execute_header, v111, v112, "remindd didn't expect to receive actions from .caldavSharedList. {response: %@}", v114, 0xCu);
      sub_1000050A4(v115, &unk_100938E70, &unk_100797230);
      v77 = v164;

      v68 = v113;
    }

    v108(v77, v76);
    (*(v163 + 8))(v68, v19);
    goto LABEL_23;
  }

  if (v79 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    v168 = v68;
    v28, v80, v81, v82, v83, v84, v85, v86;
    v117 = *(v60 + 8);
    v117(v166, v76);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    sub_100006654(v118, qword_10094BBD0);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.info.getter();
    v121 = os_log_type_enabled(v119, v120);
    v122 = v169;
    if (v121)
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "Forwarding .assignmentNotification response to assignmentNotificationDelegate", v123, 2u);
      v87 = v165;
    }

    v124 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate;
LABEL_53:
    v130 = &v87[v124];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v131 = *(v130 + 1);
      v132 = swift_getObjectType();
      v133 = v87;
      v134 = v59;
      v135 = v168;
      (*(v131 + 8))(v133, v162, v77, v168, sub_10052D99C, v122, v132, v131);

      swift_unknownObjectRelease();
    }

    else
    {

      v135 = v168;
    }

    v117(v77, v76);
    (*(v163 + 8))(v135, v19);
  }

  if (v79 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    v168 = v68;
    v28, v80, v81, v82, v83, v84, v85, v86;
    v117 = *(v60 + 8);
    v117(v166, v76);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    sub_100006654(v125, qword_10094BBD0);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.info.getter();
    v128 = os_log_type_enabled(v126, v127);
    v122 = v169;
    if (v128)
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "Forwarding .shareListUpdateNotification response to sharedListUpdateNotificationDelegate", v129, 2u);
      v87 = v165;
    }

    v124 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_sharedListUpdateNotificationDelegate;
    goto LABEL_53;
  }

  if (v79 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    v28, v80, v81, v82, v83, v84, v85, v86;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v136 = type metadata accessor for Logger();
    sub_100006654(v136, qword_10094BBD0);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    v137 = os_log_type_enabled(v89, v90);
    v92 = v169;
    if (!v137)
    {
      goto LABEL_19;
    }

    v93 = v59;
    v94 = swift_slowAlloc();
    *v94 = 0;
    v95 = "Forwarding .dueDateDeltaAlarm notification response to reminderAlarmDelegate";
    goto LABEL_18;
  }

  if (v79 == enum case for RDUserNotificationType.todayNotification(_:))
  {
    v28, v80, v81, v82, v83, v84, v85, v86;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_100006654(v138, qword_10094BBD0);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.info.getter();
    v141 = os_log_type_enabled(v139, v140);
    v142 = v169;
    if (v141)
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "Forwarding .todayNotification notification response to todayNotificationDelegate", v143, 2u);
      v87 = v165;
    }

    v144 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
LABEL_80:
    v158 = &v87[v144];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v159 = *(v158 + 1);
      v160 = swift_getObjectType();
      (*(v159 + 8))(v87, v162, v77, v68, sub_10052D99C, v142, v160, v159);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v60 + 8))(v77, v76);
    (*(v163 + 8))(v68, v19);
  }

  if (v79 == enum case for RDUserNotificationType.todayNotificationBadge(_:))
  {
    v165 = v59;
    v28, v80, v81, v82, v83, v84, v85, v86;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    sub_100006654(v145, qword_10094BBD0);
    v146 = v98;
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = v68;
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *v150 = 138412290;
      *(v150 + 4) = v146;
      *v151 = v146;
      v152 = v146;
      _os_log_impl(&_mh_execute_header, v147, v148, "remindd didn't expect to receive actions from .todayNotificationBadge. {response: %@}", v150, 0xCu);
      sub_1000050A4(v151, &unk_100938E70, &unk_100797230);
      v77 = v164;

      v68 = v149;
    }

    (*(v60 + 8))(v77, v76);
    goto LABEL_22;
  }

  if (v79 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
  {
    v28, v80, v81, v82, v83, v84, v85, v86;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v153 = type metadata accessor for Logger();
    sub_100006654(v153, qword_10094BBD0);
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.info.getter();
    v156 = os_log_type_enabled(v154, v155);
    v142 = v169;
    if (v156)
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v154, v155, "Forwarding .beforeFirstUnlock notification response to beforeFirstUnlockReminderDelegate", v157, 2u);
      v87 = v165;
    }

    v144 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate;
    goto LABEL_80;
  }

  _Block_release(v168);
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void _s7remindd24RDUserNotificationCenterC04usercD0_15openSettingsForySo06UNUsercD0C_So14UNNotificationCSgtF_0()
{
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094BBD0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "userNotificationCenter openSettingsForNotification, but we don't have any settings pane yet so bye ;)", v2, 2u);
  }
}

unint64_t sub_10052DB40()
{
  result = qword_10094BCD0;
  if (!qword_10094BCD0)
  {
    sub_1000060C8(255, &unk_100943A40, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BCD0);
  }

  return result;
}

uint64_t sub_10052DBC0()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10052DC4C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10052DE34()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BCE0);
  v1 = sub_100006654(v0, qword_10094BCE0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_TtC7remindd19RDXPCStorePerformer *sub_10052DEFC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = v3;
  v120 = a2;
  v6 = type metadata accessor for REMSmartListSection.PredefinedSectionType.Today();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v121 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v119 = &v116 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v116 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v116 - v19;
  v21 = static REMSmartListSection.PredefinedSectionType.Today.allCases.getter();
  v29 = v21;
  v30 = *(v21 + 16);
  v125 = v7;
  if (v30)
  {
    v117 = a1;
    v118 = v3;
    v126 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v32 = *(v7 + 16);
    v31 = v7 + 16;
    v33 = *(v31 + 64);
    v116 = v29;
    v34 = v29 + ((v33 + 32) & ~v33);
    v122 = *(v31 + 56);
    v123 = v32;
    v124 = v31;
    v35 = (v31 - 8);
    do
    {
      v36 = v123;
      v123(v20, v34, v6);
      REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
      v36(v16, v20, v6);
      sub_1000F5104(&qword_10094BD20, &unk_1007B0210);
      swift_allocObject();
      REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
      (*v35)(v20, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += v122;
      --v30;
    }

    while (v30);
    v116, v37, v38, v39, v40, v41, v42, v43;
    v45 = v126;
    a1 = v117;
    v4 = v118;
  }

  else
  {
    v21, v22, v23, v24, v25, v26, v27, v28;
    v45 = &_swiftEmptyArrayStorage;
  }

  v46 = REMSmartListTypeToday;
  v47 = v121;
  if (qword_1009367E0 != -1)
  {
    v115 = REMSmartListTypeToday;
    swift_once();
    v46 = v115;
  }

  v48 = sub_100717244(v46, 0, a1, qword_1009752F0, v44);
  if (!v4)
  {
    v49 = v48;
    v50 = [v49 sectionIDsOrderingAsData];
    if (!v50)
    {
      v123 = 0;

      goto LABEL_17;
    }

    v51 = v50;
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    sub_10052E704();
    static REMJSONRepresentable.fromJSONData(_:)();
    sub_10001BBA0(v52, v54);
    v55 = v126;
    sub_1000F5104(&qword_10094BD20, &unk_1007B0210);
    v107 = REMOrderedIdentifierMap.reorder<A>(objects:)();
    v123 = 0;
    v45, v108, v109, v110, v111, v112, v113, v114;

    v45 = v107;
    v47 = v121;
    if (v107 >> 62)
    {
      goto LABEL_27;
    }

LABEL_18:
    v80 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v80)
    {
      goto LABEL_19;
    }

LABEL_28:
    v45, v73, v74, v75, v76, v77, v78, v79;
    return REMRemindersListDataView.TodaySectionOrderingModel.init(sectionOrdering:)();
  }

  v123 = 0;
  if (qword_1009363D8 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100006654(v56, qword_10094BCE0);
  swift_errorRetain();
  v49 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v49, v57))
  {

    if (v45 >> 62)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v58 = swift_slowAlloc();
  v59 = v6;
  v60 = swift_slowAlloc();
  v126 = v60;
  *v58 = 136446210;
  swift_getErrorValue();
  v61 = Error.rem_errorDescription.getter();
  v63 = v62;
  v64 = v45;
  v65 = sub_10000668C(v61, v62, &v126);
  v63, v66, v67, v68, v69, v70, v71, v72;
  *(v58 + 4) = v65;
  v45 = v64;
  _os_log_impl(&_mh_execute_header, v49, v57, "TodaySectionOrderingInvocation: error upon retrieving ordering, use default ordering {error: %{public}s}", v58, 0xCu);
  sub_10000607C(v60);
  v6 = v59;

  v47 = v121;

LABEL_17:

  if (!(v45 >> 62))
  {
    goto LABEL_18;
  }

LABEL_27:
  v80 = _CocoaArrayWrapper.endIndex.getter();
  if (!v80)
  {
    goto LABEL_28;
  }

LABEL_19:
  v126 = &_swiftEmptyArrayStorage;
  result = sub_1002535D8(0, v80 & ~(v80 >> 63), 0);
  if ((v80 & 0x8000000000000000) == 0)
  {
    v82 = v126;
    v83 = v45;
    if ((v45 & 0xC000000000000001) != 0)
    {
      v84 = 0;
      v124 = v125 + 32;
      v85 = v119;
      do
      {
        v86 = v83;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();
        swift_unknownObjectRelease();
        v126 = v82;
        v88 = *v82->clientIdentity;
        v87 = *&v82->clientIdentity[8];
        if (v88 >= v87 >> 1)
        {
          sub_1002535D8((v87 > 1), v88 + 1, 1);
          v82 = v126;
        }

        ++v84;
        *v82->clientIdentity = v88 + 1;
        (*(v125 + 32))(v82 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v88, v85, v6);
        v83 = v86;
      }

      while (v80 != v84);
      v86, v86, v89, v90, v91, v92, v93, v94;
    }

    else
    {
      v95 = v45;
      v124 = v125 + 32;
      v96 = 32;
      do
      {

        REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();

        v126 = v82;
        v97 = v47;
        v99 = *v82->clientIdentity;
        v98 = *&v82->clientIdentity[8];
        if (v99 >= v98 >> 1)
        {
          sub_1002535D8((v98 > 1), v99 + 1, 1);
          v82 = v126;
        }

        *v82->clientIdentity = v99 + 1;
        (*(v125 + 32))(v82 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v99, v97, v6);
        v96 += 8;
        --v80;
        v47 = v97;
      }

      while (v80);
      v95, v100, v101, v102, v103, v104, v105, v106;
    }

    return REMRemindersListDataView.TodaySectionOrderingModel.init(sectionOrdering:)();
  }

  __break(1u);
  return result;
}

unint64_t sub_10052E684(uint64_t a1)
{
  result = sub_10052E6AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10052E6AC()
{
  result = qword_10094BD18;
  if (!qword_10094BD18)
  {
    type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BD18);
  }

  return result;
}

unint64_t sub_10052E704()
{
  result = qword_10093C660;
  if (!qword_10093C660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093C660);
  }

  return result;
}

void sub_10052E750(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  for (i = (a1 + 64); ; i += 5)
  {
    if (!*a2)
    {
      goto LABEL_6;
    }

    v28 = *(i - 4);
    v29 = *(i - 2);
    v30 = *(i - 1);
    v31 = *i;
    swift_bridgeObjectRetain_n();

    v32 = [a3 hashtagContext];
    if (v32)
    {
      break;
    }

    v56 = sub_100005F4C(v30, v31);
    v58 = v57;
    v31, v57, v59, v60, v61, v62, v63, v64;
    if (v58)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = *a2;
      v93 = *a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100373664();
        v73 = v93;
      }

      *(*(v73 + 48) + 16 * v56 + 8), v66, v67, v68, v69, v70, v71, v72;
      *(*(v73 + 56) + 16 * v56 + 8), v6, v7, v8, v9, v10, v11, v12;
      sub_1003328B8(v56, v73);
      *a2 = v73;
    }

    v31, v13, v14, v15, v16, v17, v18, v19;
    v27 = v29;
LABEL_5:
    v27, v20, v21, v22, v23, v24, v25, v26;
LABEL_6:
    if (!--v3)
    {
      return;
    }
  }

  v33 = v32;
  v89 = v29;
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 addHashtagWithType:v28 name:v34];

  v36 = [v35 objectIdentifier];
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v37;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v39 = a2;
  v40 = v38;
  v41 = v39;
  v42 = *v39;
  v92 = *v39;
  v50 = sub_100005F4C(v30, v31);
  v51 = *(v42 + 16);
  v52 = (v43 & 1) == 0;
  v53 = v51 + v52;
  if (!__OFADD__(v51, v52))
  {
    v54 = v43;
    if (*(v42 + 24) >= v53)
    {
      if ((v40 & 1) == 0)
      {
        sub_100373664();
      }
    }

    else
    {
      sub_10036A8F0(v53, v40);
      v55 = sub_100005F4C(v30, v31);
      if ((v54 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v50 = v55;
    }

    a2 = v41;
    if (v54)
    {
      v74 = (v92[7] + 16 * v50);
      v75 = v74[1];
      *v74 = v90;
      v74[1] = v91;
      v31, v43, v44, v45, v46, v47, v48, v49;
      v75, v76, v77, v78, v79, v80, v81, v82;
    }

    else
    {
      v92[(v50 >> 6) + 8] |= 1 << v50;
      v83 = (v92[6] + 16 * v50);
      *v83 = v30;
      v83[1] = v31;
      v84 = (v92[7] + 16 * v50);
      *v84 = v90;
      v84[1] = v91;
      v85 = v92[2];
      v86 = __OFADD__(v85, 1);
      v87 = v85 + 1;
      if (v86)
      {
        goto LABEL_25;
      }

      v92[2] = v87;
    }

    *v41 = v92;
    v31, v43, v44, v45, v46, v47, v48, v49;
    v27 = v89;
    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10052EA40(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v6 - 8, v7);
  v223 = &v209 - v8;
  v9 = type metadata accessor for TimeZone();
  v226 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v230 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for Date();
  v231 = *(v228 - 8);
  __chkstk_darwin(v228, v12);
  v222 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v227 = &v209 - v16;
  v233 = type metadata accessor for DateComponents();
  v234 = *(v233 - 8);
  __chkstk_darwin(v233, v17);
  v219 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v221 = &v209 - v21;
  __chkstk_darwin(v22, v23);
  v218 = &v209 - v24;
  __chkstk_darwin(v25, v26);
  v229 = &v209 - v27;
  __chkstk_darwin(v28, v29);
  v217 = &v209 - v30;
  __chkstk_darwin(v31, v32);
  v220 = (&v209 - v33);
  v34 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v34 - 8, v35);
  v224 = (&v209 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37, v38);
  v225 = &v209 - v39;
  __chkstk_darwin(v40, v41);
  v232 = &v209 - v42;
  __chkstk_darwin(v43, v44);
  v46 = &v209 - v45;
  __chkstk_darwin(v47, v48);
  v50 = &v209 - v49;
  v238 = 0;
  v236 = type metadata accessor for RDSavedReminder(0);
  v51 = *&a1[*(v236 + 36)];
  if (v51)
  {
    v238 = sub_10038E004(&_swiftEmptyArrayStorage);
    v52 = a2;
    sub_10052E750(v51, &v238, v52);

    if (v2)
    {
LABEL_21:
      v93 = v238;
      goto LABEL_22;
    }

    v216 = v46;
    v215 = v9;
    v3 = 0;
  }

  else
  {
    v216 = v46;
    v215 = v9;
  }

  v60 = [a2 storage];
  v61 = [v60 titleReplicaIDSource];

  v62 = &a1[*(v236 + 60)];
  v63 = a1;
  v64 = *v62;
  v65 = v62[1];
  v66 = objc_allocWithZone(REMCRMergeableStringDocument);
  sub_100029344(v64, v65);
  v67 = v3;
  v68 = sub_1002F937C(v61);
  sub_10001BBA0(v64, v65);

  if (v67)
  {
    goto LABEL_21;
  }

  v214 = v63;
  v235 = a2;
  v69 = v238;
  if (v238)
  {
    v70 = v68;
    v68 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();
  }

  v71 = v214;
  v72 = v236;
  v213 = v68;
  v73 = [v68 attributedString];
  v74 = v235;
  [v235 setTitle:v73];

  v75 = &v71[v72[10]];
  v76 = *(v75 + 1);
  if (v76 >> 60 == 15)
  {
    v211 = v69;
    v77 = v74;
    v78 = v216;
  }

  else
  {
    v79 = *v75;
    sub_100029344(*v75, *(v75 + 1));
    v80 = [v74 storage];
    v81 = [v80 notesReplicaIDSource];

    v82 = objc_allocWithZone(REMCRMergeableStringDocument);
    sub_100029344(v79, v76);
    v83 = sub_1002F937C(v81);
    sub_100031A14(v79, v76);

    v211 = v69;
    if (v69)
    {
      v84 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();

      v83 = v84;
    }

    v77 = v235;
    v78 = v216;
    v85 = [v83 attributedString];
    [v77 setNotes:v85];
    sub_100031A14(v79, v76);

    v71 = v214;
  }

  [v77 setPriority:*&v71[v72[11]]];
  [v77 setFlagged:*&v71[v72[8]]];
  sub_10053004C(&v71[v72[13]], v50);
  v86 = v234;
  v87 = *(v234 + 48);
  v88 = v233;
  v212 = v234 + 48;
  v216 = v87;
  if ((v87)(v50, 1, v233) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v86 + 8))(v50, v88);
  }

  [v77 setStartDateComponents:isa];

  v90 = v72[7];
  sub_10053004C(&v71[v90], v78);
  if ((v216)(v78, 1, v88) == 1)
  {
    v91 = 0;
  }

  else
  {
    v91 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v234 + 8))(v78, v88);
  }

  [v77 setDueDateComponents:v91];

  v92 = &v71[v72[5]];
  if (*v92)
  {
    sub_1000FDB20(*v92, v92[1], v92[2], v92[3]);
  }

  v94 = &v71[v90];
  v95 = v232;
  sub_10053004C(v94, v232);
  if ((v216)(v95, 1, v88) == 1)
  {
    v96 = 0;
  }

  else
  {
    v96 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v234 + 8))(v95, v88);
  }

  [v77 setDueDateComponents:v96];

  v98 = *&v71[v72[6]];
  if (v98)
  {
    v99 = [v77 dueDateDeltaAlertContext];
    if (v99)
    {
      v88 = v99;
      v100 = sub_1001ADDE4(v98);

      v100, v101, v102, v103, v104, v105, v106, v107;
    }
  }

  v108 = *&v71[v72[12]];
  if (v108)
  {
    v232 = 0;
    v109 = *(v108 + 16);
    if (v109)
    {
      v110 = 0;
      v77 = (v108 + 32);
      do
      {
        if (v110 >= *(v108 + 16))
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v111 = v77[1];
        v239[0] = *v77;
        v239[1] = v111;
        v112 = v77[2];
        v113 = v77[3];
        v114 = v77[4];
        v240 = *(v77 + 10);
        v239[3] = v113;
        v239[4] = v114;
        v239[2] = v112;
        ++v110;
        sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
        v115 = objc_opt_self();
        sub_1004B12D8(v239, v237);
        sub_1004B12D8(v239, v237);
        v71 = [v115 newObjectID];
        v88 = v235;
        v72 = [v235 accountID];
        v116 = sub_10031174C(v239, v71, v72, [v88 objectID]);
        [v88 addRecurrenceRule:v116];

        sub_100311E40(v239);
        v77 = (v77 + 88);
      }

      while (v109 != v110);
      v77 = v235;
      v117 = [v235 isOverdue];
      v109 = v232;
      if (!v117)
      {
        v71 = v214;
        goto LABEL_52;
      }

      v118 = [v77 dueDateComponents];
      v71 = v214;
      if (v118)
      {
        v119 = v220;
        v120 = v118;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v121.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
        (*(v234 + 8))(v119, v233);
      }

      else
      {
        v121.super.isa = 0;
      }

      v72 = v215;
      v122 = v226;
      v123 = v225;
      v124 = v227;
      static Date.now.getter();
      v125 = Date._bridgeToObjectiveC()().super.isa;
      v210 = *(v231 + 8);
      v231 += 8;
      v210(v124, v228);
      [v77 nextRecurrentAdvanceAmountForDateComponents:v121.super.isa afterDate:v125];
      v127 = v126;

      v88 = v233;
      v128 = v224;
      if (v127 > 0.0)
      {
        v129 = [v77 dueDateComponents];
        if (v129)
        {
          v130 = v217;
          v131 = v129;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v132 = DateComponents._bridgeToObjectiveC()().super.isa;
          v133 = [(objc_class *)v132 rem_dateComponentsByAddingTimeInterval:v127];

          v134 = v229;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v88 = v233;
          v135 = DateComponents._bridgeToObjectiveC()().super.isa;
          v136 = *(v234 + 8);
          v136(v134, v88);
          [v235 setDueDateComponents:v135];

          v123 = v225;
          v137 = v130;
          v122 = v226;
          v136(v137, v88);
          v128 = v224;
          v77 = v235;
        }

        v138 = [v77 startDateComponents];
        if (v138)
        {
          v139 = v218;
          v140 = v138;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v141 = DateComponents._bridgeToObjectiveC()().super.isa;
          v142 = [(objc_class *)v141 rem_dateComponentsByAddingTimeInterval:v127];

          v143 = v229;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v88 = v233;
          v144 = DateComponents._bridgeToObjectiveC()().super.isa;
          v145 = *(v234 + 8);
          v146 = v143;
          v123 = v225;
          v145(v146, v88);
          [v235 setStartDateComponents:v144];

          v147 = v139;
          v122 = v226;
          v145(v147, v88);
          v128 = v224;
          v77 = v235;
        }
      }

      v148 = [v77 dueDateComponents];
      if (v148)
      {
        v149 = v148;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v150 = 0;
      }

      else
      {
        v150 = 1;
      }

      v151 = v223;
      (*(v234 + 56))(v128, v150, 1, v88);
      sub_1005300BC(v128, v123);
      if ((v216)(v123, 1, v88))
      {
        sub_1000050A4(v123, &qword_10093B790, &qword_100798D88);
        (*(v122 + 56))(v151, 1, 1, v72);
        goto LABEL_51;
      }

      DateComponents.timeZone.getter();
      v151 = v223;
      sub_1000050A4(v123, &qword_10093B790, &qword_100798D88);
      if ((*(v122 + 48))(v151, 1, v72) == 1)
      {
LABEL_51:
        sub_1000050A4(v151, &qword_10093F970, &unk_1007A7670);
        goto LABEL_52;
      }

      v157 = v230;
      (*(v122 + 32))(v230, v151, v72);
      v158 = [v77 alarms];
      if (v158)
      {
        v159 = v158;
        sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
        v160 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v97 = v160;
        if (!(v160 >> 62))
        {
          v167 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_60;
        }

LABEL_83:
        v207 = v97;
        v208 = _CocoaArrayWrapper.endIndex.getter();
        v97 = v207;
        v167 = v208;
LABEL_60:
        if (v167)
        {
          v168 = 0;
          v223 = (v97 & 0xC000000000000001);
          v212 = v97 & 0xFFFFFFFFFFFFFF8;
          v224 = (v234 + 8);
          v215 = v72;
          v220 = v97;
          v216 = v167;
          while (1)
          {
            if (v223)
            {
              v170 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v168 >= *(v212 + 16))
              {
                goto LABEL_82;
              }

              v170 = *(v97 + 8 * v168 + 32);
            }

            v232 = v109;
            v72 = (v168 + 1);
            if (__OFADD__(v168, 1))
            {
              goto LABEL_81;
            }

            v171 = v88;
            v172 = v170;
            v173 = [v170 trigger];
            objc_opt_self();
            v174 = swift_dynamicCastObjCClass();
            if (!v174)
            {
              break;
            }

            v225 = v173;
            v235 = v172;
            v234 = v168 + 1;
            v175 = v174;
            v176 = v171;
            v177 = objc_opt_self();
            v218 = v175;
            v178 = [v175 dateComponents];
            v179 = v229;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v180 = DateComponents._bridgeToObjectiveC()().super.isa;
            v181 = *v224;
            (*v224)(v179, v176);
            v182 = TimeZone._bridgeToObjectiveC()().super.isa;
            v183 = [v177 rem_dateWithDateComponents:v180 timeZone:v182];

            if (!v183)
            {

              v109 = v232;
              v71 = v214;
              v88 = v233;
              v167 = v216;
              v72 = v234;
              goto LABEL_63;
            }

            v217 = v181;
            v184 = v222;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v185 = Date._bridgeToObjectiveC()().super.isa;
            v186 = TimeZone._bridgeToObjectiveC()().super.isa;
            v187 = [v177 rem_dateComponentsWithDate:v185 timeZone:v186 isAllDay:0];

            v188 = v221;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v189 = DateComponents._bridgeToObjectiveC()().super.isa;
            v190 = v227;
            static Date.now.getter();
            v191 = Date._bridgeToObjectiveC()().super.isa;
            v192 = v190;
            v193 = v228;
            v194 = v210;
            v210(v192, v228);
            [v77 nextRecurrentAdvanceAmountForDateComponents:v189 afterDate:v191];
            v196 = v195;

            v109 = v232;
            if (v196 <= 0.0)
            {

              v88 = v233;
              (v217)(v188, v233);
              v194(v184, v193);
              v71 = v214;
            }

            else
            {
              v197 = v235;
              [v77 removeAlarm:v235];
              v198 = [v218 dateComponents];
              v71 = v214;
              if (!v198)
              {
                __break(1u);
                return;
              }

              v199 = v198;
              v200 = [v198 rem_dateComponentsByAddingTimeInterval:v196];

              v201 = v219;
              static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

              v202 = objc_allocWithZone(REMAlarmDateTrigger);
              v203 = DateComponents._bridgeToObjectiveC()().super.isa;
              v204 = [v202 initWithDateComponents:v203];

              v205 = [v77 addAlarmWithTrigger:v204];
              v88 = v233;
              v206 = v217;
              (v217)(v201, v233);
              v206(v221, v88);
              v210(v222, v193);
            }

            v97 = v220;
            v167 = v216;
            v72 = v234;
LABEL_64:
            ++v168;
            v169 = v72 == v167;
            v72 = v215;
            if (v169)
            {
              goto LABEL_78;
            }
          }

          v109 = v232;
          v88 = v171;
LABEL_63:
          v97 = v220;
          goto LABEL_64;
        }

LABEL_78:
        v97, v97, v161, v162, v163, v164, v165, v166;
        (*(v226 + 8))(v230, v72);
      }

      else
      {
        (*(v122 + 8))(v157, v72);
      }

LABEL_52:
      v72 = v236;
    }
  }

  v152 = &v71[v72[16]];
  v153 = *(v152 + 1);
  if (v153 >> 60 == 15)
  {
    v154 = v213;
  }

  else
  {
    v155 = *v152;
    sub_100029344(*v152, *(v152 + 1));
    sub_100029344(v155, v153);
    v156 = Data._bridgeToObjectiveC()().super.isa;
    v154 = [objc_opt_self() representationFromData:v156];

    sub_100031A14(v155, v153);
    [v77 setContactHandles:v154];
    sub_100031A14(v155, v153);
  }

  v93 = v211;
LABEL_22:
  v93, v53, v54, v55, v56, v57, v58, v59;
}

uint64_t sub_10053004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005300BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10053012C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 personID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100530194(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPersonID:?];
}

_TtC7remindd19RDXPCStorePerformer *sub_100530204(_TtC7remindd19RDXPCStorePerformer *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  v9 = *a1->clientIdentity;
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_1003689CC(*a1->clientIdentity, 0);
  v8 = sub_1002791DC(&v12, &v10->clientIdentity[16], v9, v8);
  sub_10001B860(v12);
  if (v8 != v9)
  {
    __break(1u);
LABEL_4:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return &_swiftEmptyArrayStorage;
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100530318(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v6 = a1;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:
    v6, v8, v9, v10, v11, v12, v13, v14;
    return &_swiftEmptyArrayStorage;
  }

  v15 = v7;
  v16 = a2(v7, 0);
  v17 = a3(&v16->clientIdentity[16], v15, v6);
  v6 = v18;
  v17, v19, v18, v20, v21, v22, v23, v24;
  result = v16;
  if (v6 != v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005303BC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_1003689CC(*(a1 + 16), 0);
  v8 = sub_10027DC5C();
  sub_10001B860(v12);
  if (v8 != v9)
  {
    __break(1u);
LABEL_4:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return &_swiftEmptyArrayStorage;
  }

  return v10;
}

uint64_t sub_10053044C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v35 - v12;
  *&v16 = __chkstk_darwin(v14, v15).n128_u64[0];
  v18 = &v35 - v17;
  v19 = [a1 identifier];
  if (v19)
  {
    v38 = v9;
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = v6;
    v41 = v18;
    v21 = *(v6 + 32);
    v42 = v5;
    v36 = v21;
    v37 = v6 + 32;
    v21(v18, v13, v5);
    v22 = [a1 accountTypeHost];
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a2;
    v23[4] = a1;
    v23[5] = v2;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = v2;
    v24 = swift_allocObject();
    v39 = v2;
    *(v24 + 16) = v2;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100531010;
    *(v25 + 24) = v23;
    v26 = a1;
    v27 = v22;
    v43 = a2;

    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

    v28 = v44;
    v29 = v45;
    v30 = v38;
    v31 = v42;
    v32 = v36;
    v36(v38, v41, v42);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = v29;
    v32(v33 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_localUUID, v30, v31);
    result = v33;
    *(v33 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_accountTypeHost) = v27;
    *(v33 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_persistenceHost) = v43;
  }

  else
  {

    return 0;
  }

  return result;
}

id sub_100530880@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

void sub_1005308C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 personIDSalt_v1];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100530930(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = isa;
  [v2 setPersonIDSalt_v1:?];
}

_TtC7remindd19RDXPCStorePerformer *sub_1005309A8()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A81F0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  result = sub_100530318(v0, sub_100018D7C, sub_10027A80C);
  qword_100974F38 = result;
  return result;
}

uint64_t sub_100530A6C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_100974F40 = result;
  *algn_100974F48 = v1;
  return result;
}

uint64_t sub_100530A9C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100003C4C();
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_1009363E8 != -1)
    {
      swift_once();
    }

    v4 = qword_100974F40;
  }

  else
  {
    v5 = [a3 personID];
    if (v5)
    {
      v6 = v5;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void sub_100530B78(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 personID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100530BEC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100530C20(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC7remindd21RDAccountManualSortID_localUUID;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAccountManualSortID(uint64_t a1)
{
  result = qword_10094BD50;
  if (!qword_10094BD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100530D38(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100530DFC()
{
  v1 = v0;
  _StringGuts.grow(_:)(90);
  v2._object = 0x80000001007FC100;
  v2._countAndFlagsBits = 0xD000000000000028;
  String.append(_:)(v2);
  v50 = *(v0 + 16);
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v3._countAndFlagsBits = Optional.descriptionOrNil.getter();
  object = v3._object;
  String.append(_:)(v3);
  object, v5, v6, v7, v8, v9, v10, v11;
  v12._countAndFlagsBits = 0x556C61636F6C202CLL;
  v12._object = 0xED0000203A444955;
  String.append(_:)(v12);
  v13._countAndFlagsBits = UUID.uuidString.getter();
  v14 = v13._object;
  String.append(_:)(v13);
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22._countAndFlagsBits = 0x6E756F636361202CLL;
  v22._object = 0xEF203A6570795474;
  String.append(_:)(v22);
  v23 = [*(v0 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_accountTypeHost) description];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);
  v26, v28, v29, v30, v31, v32, v33, v34;
  v35._countAndFlagsBits = 0x795474736F68202CLL;
  v35._object = 0xEC000000203A6570;
  String.append(_:)(v35);
  v36 = [*(*(v1 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_persistenceHost) + 32) description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);
  v39, v41, v42, v43, v44, v45, v46, v47;
  v48._countAndFlagsBits = 15997;
  v48._object = 0xE200000000000000;
  String.append(_:)(v48);
  return 0;
}

double sub_100531038@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x6C61636F6CLL;
  *a1 = xmmword_1007B0220;
  return result;
}

uint64_t sub_100531048@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10053107C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3)
  {
    if (v4)
    {
      v5 = *(a1 + 16) == *(a2 + 16) && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:

  return static UUID.== infix(_:_:)();
}

void sub_100531140(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v705 = a4;
  v695 = a3;
  v691 = a1;
  swift_getObjectType();
  v694 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  __chkstk_darwin(v694, v8);
  v693 = &v666 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v696 = &v666 - v12;
  v13 = type metadata accessor for RDSavedReminder(0);
  __chkstk_darwin(v13 - 8, v14);
  v707 = &v666 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v701 = &v666 - v18;
  __chkstk_darwin(v19, v20);
  v700 = &v666 - v21;
  __chkstk_darwin(v22, v23);
  v698 = &v666 - v24;
  v25 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v26 = *(v25 - 8);
  v727 = v25;
  v728 = v26;
  __chkstk_darwin(v25, v27);
  v706 = &v666 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v712 = &v666 - v31;
  __chkstk_darwin(v32, v33);
  v723 = (&v666 - v34);
  v731 = type metadata accessor for UUID();
  v722 = *(v731 - 8);
  __chkstk_darwin(v731, v35);
  v721 = &v666 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  v724 = &v666 - v39;
  __chkstk_darwin(v40, v41);
  v720 = &v666 - v42;
  __chkstk_darwin(v43, v44);
  v716 = &v666 - v45;
  __chkstk_darwin(v46, v47);
  v703 = &v666 - v48;
  __chkstk_darwin(v49, v50);
  v704 = &v666 - v51;
  __chkstk_darwin(v52, v53);
  v697 = &v666 - v54;
  __chkstk_darwin(v55, v56);
  v729 = &v666 - v57;
  __chkstk_darwin(v58, v59);
  v730 = (&v666 - v60);
  __chkstk_darwin(v61, v62);
  v699 = &v666 - v63;
  __chkstk_darwin(v64, v65);
  v725 = &v666 - v66;
  v709 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v692 = *&v709[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v709, v67);
  v710 = &v666 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v69 - 8, v70);
  v708 = &v666 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72, v73);
  v718 = (&v666 - v74);
  v715 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v711 = *(v715 - 1);
  __chkstk_darwin(v715, v75);
  v719 = &v666 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v77 - 8, v78);
  v80 = &v666 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v81, v82);
  v84 = &v666 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85, v86);
  isUniquelyReferenced_nonNull_native = &v666 - v87;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v717 = *(Subtasks - 8);
  *&v90 = __chkstk_darwin(Subtasks, v89).n128_u64[0];
  v92 = &v666 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v726 = [v5 storeControllerManagedObjectContext];
  if (!v726)
  {
    v117 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v119 = String._bridgeToObjectiveC()();
    [v117 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v119];

    swift_willThrow();
    return;
  }

  v702 = [v5 remObjectID];
  if (!v702)
  {
    v120 = objc_opt_self();
    v121 = swift_getObjCClassFromMetadata();
    v122 = String._bridgeToObjectiveC()();
    [v120 unexpectedNilPropertyWithClass:v121 property:v122];

    swift_willThrow();
    return;
  }

  v683 = a2;
  v93 = [v5 name];
  if (!v93)
  {
    v123 = objc_opt_self();
    v124 = swift_getObjCClassFromMetadata();
    v125 = String._bridgeToObjectiveC()();
    [v123 unexpectedNilPropertyWithClass:v124 property:v125];

    swift_willThrow();
    return;
  }

  v94 = v93;
  v679 = a5;
  v680 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v687 = v95;

  v681 = v5;
  v96 = [v5 sortingStyle];
  if (!v96 || (v97 = v96, static String._unconditionallyBridgeFromObjectiveC(_:)(), v97, (v98 = REMSortingStyle.init(stringValue:)()) == 0))
  {
    v98 = REMSortingStyleDefault;
  }

  v99 = Subtasks;
  v733 = _swiftEmptyDictionarySingleton;
  v100 = v98;
  v690 = sub_100390238(&_swiftEmptyArrayStorage);
  v101 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v689 = objc_autoreleasePoolPush();
  (*&v717->coreSuggestionsHandler[10])(v92, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v99);
  REMSortingStyle.dataViewSortingStyle.getter();
  v102 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v103 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v103 - 8) + 104))(v84, v102, v103);
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v80, v84, isUniquelyReferenced_nonNull_native);
  v104 = v702;
  v105 = v713;
  v106 = sub_100268564(v702, v726, v92, isUniquelyReferenced_nonNull_native);
  v107 = v105;
  if (!v105)
  {
    v713 = v106;
    v669 = v100;
    v126 = qword_1009360E0;
    v668 = v104;
    if (v126 != -1)
    {
      goto LABEL_164;
    }

    while (1)
    {
      v686 = qword_100974E58;
      v685 = type metadata accessor for REMCDTemplateSection();
      v127 = sub_1004263A0();
      v128 = sub_1004267FC();
      v129 = sub_100425A50(v104, 1);
      v130 = [objc_allocWithZone(NSFetchRequest) init];
      v131 = [swift_getObjCClassFromMetadata() entity];
      [v130 setEntity:v131];

      [v130 setAffectedStores:0];
      [v130 setPredicate:v129];

      v132 = v128;
      v688 = v127;
      v133 = sub_10003450C(v127);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v133, v135, v136, v137, v138, v139, v140, v141;
      [v130 setPropertiesToFetch:isa];

      v142 = Array._bridgeToObjectiveC()().super.isa;
      [v130 setRelationshipKeyPathsForPrefetching:v142];

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v143 = Array._bridgeToObjectiveC()().super.isa;
      [v130 setSortDescriptors:v143];

      v144 = v107;
      v145 = NSManagedObjectContext.fetch<A>(_:)();
      v107 = v731;
      if (v144)
      {
        v115 = v669;

        v688, v153, v154, v155, v156, v157, v158, v159;
        v132, v160, v161, v162, v163, v164, v165, v166;
        v687, v167, v168, v169, v170, v171, v172, v173;
        v713, v174, v175, v176, v177, v178, v179, v180;

        v116 = v690;
        v99 = Subtasks;
        v104 = v702;
        goto LABEL_16;
      }

      v181 = v145;
      v688, v146, v147, v148, v149, v150, v151, v152;
      v132, v182, v183, v184, v185, v186, v187, v188;

      v189 = sub_100270BA0(v181);
      v181, v190, v191, v192, v193, v194, v195, v196;
      v197 = v713;
      v198 = sub_1001BD57C(v189, v713);
      v682 = 0;
      v214 = v198;

      v189, v215, v216, v217, v218, v219, v220, v221;
      v197, v222, v223, v224, v225, v226, v227, v228;

      sub_1004909AC(isUniquelyReferenced_nonNull_native, _s9UtilitiesO12SortingStyleOMa);
      (*v717->storeController)(v92, Subtasks);
      objc_autoreleasePoolPop(v689);
      v677 = v214;
      v676 = *v214->clientIdentity;
      if (!v676)
      {
        v104 = &_swiftEmptyArrayStorage;
        v237 = &_swiftEmptyArrayStorage;
        v306 = v727;
        isUniquelyReferenced_nonNull_native = v712;
LABEL_81:
        v692 = v237;
        v677, v229, v230, v231, v232, v233, v234, v235;
        v364 = v692;
        v365 = *v692->clientIdentity;
        v678 = v104;
        if (!v365)
        {
          v692, v357, v358, v359, v360, v361, v362, v363;
          v463 = _swiftEmptyDictionarySingleton;
          v464 = &_swiftEmptyArrayStorage;
          v92 = _swiftEmptyDictionarySingleton;
LABEL_117:
          v537 = v733;

          v711 = v464;

          v717 = v463;

          v709 = v537;

          v538 = sub_10038EEC4(&_swiftEmptyArrayStorage);
          v539 = (v92 + 64);
          v540 = 1 << *(v92 + 32);
          v541 = -1;
          if (v540 < 64)
          {
            v541 = ~(-1 << v540);
          }

          v104 = (v541 & *(v92 + 64));
          v542 = (v540 + 63) >> 6;
          v729 = (v722 + 16);
          v730 = v538;
          v719 = (v722 + 32);
          v725 = (v722 + 8);
          v715 = (v722 + 40);
          v685 = v92;

          v550 = 0;
          v551 = v681;
          v712 = (v92 + 64);
          v710 = v542;
          while (v104)
          {
            v552 = v722;
LABEL_129:
            v713 = v550;
            Subtasks = v104;
            v554 = __clz(__rbit64(v104)) | (v550 << 6);
            v107 = v685;
            v555 = *&v685->clientIdentity[32];
            v727 = *(v552 + 72);
            v556 = v696;
            v557 = v552;
            v558 = v731;
            v728 = *(v552 + 16);
            (v728)(v696, v555 + v727 * v554, v731);
            v559 = *(*(v107 + 56) + 8 * v554);
            v560 = v694;
            *(v556 + *(v694 + 48)) = v559;
            v561 = v556;
            isUniquelyReferenced_nonNull_native = v693;
            sub_100010364(v561, v693, &qword_100949240, &unk_1007AD460);
            v92 = *(isUniquelyReferenced_nonNull_native + *(v560 + 48));
            v718 = *(v557 + 32);
            (v718)(v716, isUniquelyReferenced_nonNull_native, v558);
            v723 = *(v92 + 16);
            if (v723)
            {
              v104 = (v92 + ((*(v557 + 80) + 32) & ~*(v557 + 80)));

              v562 = 0;
              while (v562 < *(v92 + 16))
              {
                v107 = v101;
                v571 = v720;
                v572 = v731;
                v573 = v728;
                (v728)(v720, v104, v731);
                v101 = v724;
                v573(v724, v571, v572);
                v573(v721, v716, v572);
                v574 = v730;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v732 = v574;
                v575 = sub_100363F20(v101);
                v577 = *v574->clientIdentity;
                v578 = (v576 & 1) == 0;
                v274 = __OFADD__(v577, v578);
                v579 = v577 + v578;
                if (v274)
                {
                  goto LABEL_155;
                }

                v580 = v576;
                if (*&v730->clientIdentity[8] >= v579)
                {
                  v101 = v107;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v586 = v575;
                    sub_1003744A0();
                    v575 = v586;
                  }
                }

                else
                {
                  sub_10036C648(v579, isUniquelyReferenced_nonNull_native);
                  v575 = sub_100363F20(v724);
                  if ((v580 & 1) != (v581 & 1))
                  {
                    goto LABEL_169;
                  }

                  v101 = v107;
                }

                v730 = v732;
                if (v580)
                {
                  isUniquelyReferenced_nonNull_native = v731;
                  v107 = v727;
                  (*v715)(*&v730->clientIdentity[40] + v575 * v727, v721, v731);
                  v563 = *v725;
                  (*v725)(v724, isUniquelyReferenced_nonNull_native);
                  v563(v720, isUniquelyReferenced_nonNull_native);
                }

                else
                {
                  v582 = v730;
                  isUniquelyReferenced_nonNull_native = v731;
                  *&v730->storeProvider[8 * (v575 >> 6) + 2] |= 1 << v575;
                  v583 = v575 * v727;
                  v101 = v724;
                  (v728)(*&v582->clientIdentity[32] + v575 * v727, v724, isUniquelyReferenced_nonNull_native);
                  (v718)(*&v582->clientIdentity[40] + v583, v721, isUniquelyReferenced_nonNull_native);
                  v563 = *v725;
                  (*v725)(v101, isUniquelyReferenced_nonNull_native);
                  v563(v720, isUniquelyReferenced_nonNull_native);
                  v584 = *v582->clientIdentity;
                  v274 = __OFADD__(v584, 1);
                  v585 = v584 + 1;
                  if (v274)
                  {
                    goto LABEL_160;
                  }

                  *v730->clientIdentity = v585;
                  v101 = v107;
                  v107 = v727;
                }

                v562 = (v562 + 1);
                v104 = (v104 + v107);
                if (v723 == v562)
                {
                  v92, v564, v565, v566, v567, v568, v569, v570;
                  goto LABEL_121;
                }
              }

              goto LABEL_154;
            }

            v92, v587, v588, v589, v590, v591, v592, v593;
            v563 = *v725;
LABEL_121:
            v104 = ((Subtasks - 1) & Subtasks);
            v107 = v731;
            v563(v716, v731);
            sub_1000050A4(v696, &qword_100949240, &unk_1007AD460);
            v551 = v681;
            v539 = v712;
            v550 = v713;
            v542 = v710;
          }

          v552 = v722;
          while (1)
          {
            v553 = v550 + 1;
            if (__OFADD__(v550, 1))
            {
              goto LABEL_161;
            }

            if (v553 >= v542)
            {
              v711, v543, v544, v545, v546, v547, v548, v549;
              v717, v594, v595, v596, v597, v598, v599, v600;
              v709, v601, v602, v603, v604, v605, v606, v607;

              v608 = [v551 color];
              v609 = [v551 badgeEmblem];
              if (v609)
              {
                v610 = v609;
                v731 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v728 = v611;
              }

              else
              {
                v731 = 0;
                v728 = 0;
              }

              v612 = v679;
              v613 = v691;
              v614 = [v551 sortingStyle];
              if (v614)
              {
                v615 = v614;
                v616 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v618 = v617;
              }

              else
              {

                v616 = 0;
                v618 = 0;
              }

              v619 = type metadata accessor for RDPublicTemplate(0);
              (*v729)(v612 + v619[8], v613, v107);
              v620 = v619[9];
              v621 = type metadata accessor for Date();
              v622 = *(v621 - 8);
              (*(v622 + 16))(v612 + v620, v683, v621);
              (*(v622 + 56))(v612 + v620, 0, 1, v621);
              v623 = v685;
              v685, v624, v625, v626, v627, v628, v629, v630;
              v631 = v678;
              v678, v632, v633, v634, v635, v636, v637, v638;
              v639 = v690;
              v690, v640, v641, v642, v643, v644, v645, v646;
              v101, v647, v648, v649, v650, v651, v652, v653;
              v654 = v687;
              *v612 = v680;
              v612[1] = v654;
              v655 = v731;
              v612[2] = v608;
              v612[3] = v655;
              v612[4] = v728;
              v612[5] = v616;
              v612[6] = v618;
              v656 = (v612 + v619[10]);
              *v656 = v711;
              v656[1] = v623;
              v657 = v709;
              v656[2] = v717;
              v656[3] = v657;
              v656[4] = v631;
              v656[5] = v639;
              v658 = v730;
              v656[6] = v101;
              v656[7] = v658;
              return;
            }

            v104 = *&v539[8 * v553];
            ++v550;
            if (v104)
            {
              v550 = v553;
              goto LABEL_129;
            }
          }
        }

        v366 = 0;
        v367 = 0;
        clientIdentity = (*(v728 + 80) + 32) & ~*(v728 + 80);
        v684 = v692 + clientIdentity;
        v730 = (v728 + 16);
        v709 = (v722 + 32);
        v715 = (v722 + 8);
        v368 = (v728 + 8);
        v717 = _swiftEmptyDictionarySingleton;
        v685 = _swiftEmptyDictionarySingleton;
        v711 = &_swiftEmptyArrayStorage;
        v713 = (v728 + 8);
        v676 = v365;
        while (v366 < *v364->clientIdentity)
        {
          v377 = *(v728 + 72);
          v686 = v366;
          v729 = *(v728 + 16);
          (v729)(isUniquelyReferenced_nonNull_native, &v684[v377 * v366], v306);
          if (v367 < v705)
          {
            v710 = v377;
            v677 = objc_autoreleasePoolPush();
            v378 = type metadata accessor for REMCDSavedReminder();
            v379 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v708 = v378;
            v380 = v682;
            sub_10055C8D4(v379, v726);
            if (v380)
            {
              v692, v381, v382, v383, v384, v385, v386, v387;
              v687, v659, v660, v661, v662, v663, v664, v665;

              v493 = v690;
              v306 = v727;
LABEL_115:
              v494 = v733;
              v711, v486, v487, v488, v489, v490, v491, v492;
              v717, v495, v496, v497, v498, v499, v500, v501;
              v494, v502, v503, v504, v505, v506, v507, v508;
              objc_autoreleasePoolPop(v677);

              (v368->super.isa)(isUniquelyReferenced_nonNull_native, v306);
              v685, v509, v510, v511, v512, v513, v514, v515;
              v101, v516, v517, v518, v519, v520, v521, v522;
              v493, v523, v524, v525, v526, v527, v528, v529;
              v104, v530, v531, v532, v533, v534, v535, v536;
              return;
            }

            v725 = v367;

            v388 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v389 = [v388 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v711 = sub_100366328(0, *v711->clientIdentity + 1, 1, v711);
            }

            v390 = v711;
            v392 = *v711->clientIdentity;
            v391 = *&v711->clientIdentity[8];
            v393 = v722;
            if (v392 >= v391 >> 1)
            {
              v390 = sub_100366328((v391 > 1), v392 + 1, 1, v711);
              v393 = v722;
            }

            *v390->clientIdentity = v392 + 1;
            v394 = ((*(v393 + 80) + 32) & ~*(v393 + 80));
            v711 = v390;
            v702 = v394;
            v699 = *(v393 + 72);
            v689 = *(v393 + 32);
            (v689)(v394 + v390 + v699 * v392, v697, v107);
            v395 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v396 = [v395 uuid];

            v397 = v704;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v398 = v701;
            sub_1001CD744(v698, v701);
            v399 = v695;
            v400 = v700;
            v688 = v399;
            sub_1001C9D1C(v398, v399, v700);
            sub_1005343C0(v400, v398, type metadata accessor for RDSavedReminder);
            v401 = v717;
            v402 = swift_isUniquelyReferenced_nonNull_native();
            v732 = v401;
            sub_1002CA5DC(v398, v397, v402);
            Subtasks = *(v393 + 8);
            (Subtasks)(v397, v107);
            v717 = v732;
            v403 = REMRemindersListDataView.ReminderLite.objectID.getter();
            sub_100533C2C(v403);
            v682 = 0;
            v405 = v404;

            v104 = v678;
            v368 = v713;
            if (v405)
            {
              v406 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v407 = [v406 uuid];

              v408 = v704;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_10031E590(v405, v408);
            }

            v367 = v725 + 1;
            v409 = REMRemindersListDataView.ReminderLite.subtasks.getter();
            v306 = v727;
            if (v409)
            {
              v719 = *v409->clientIdentity;
              if (v719)
              {
                v107 = 0;
                isUniquelyReferenced_nonNull_native = v409 + clientIdentity;
                v723 = &_swiftEmptyArrayStorage;
                v417 = v706;
                v92 = v710;
                v718 = v409;
                while (v107 < *v409->clientIdentity)
                {
                  (v729)(v417, isUniquelyReferenced_nonNull_native, v306);
                  if (v367 < v705)
                  {
                    v418 = objc_autoreleasePoolPush();
                    v419 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v420 = v682;
                    sub_10055C8D4(v419, v726);
                    v682 = v420;
                    if (v420)
                    {
                      goto LABEL_114;
                    }

                    v428 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v429 = [v428 uuid];

                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
                    v430 = v723;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v430 = sub_100366328(0, *v430->clientIdentity + 1, 1, v430);
                    }

                    v432 = *v430->clientIdentity;
                    v431 = *&v430->clientIdentity[8];
                    v725 = v367;
                    if (v432 >= v431 >> 1)
                    {
                      v430 = sub_100366328((v431 > 1), v432 + 1, 1, v430);
                    }

                    *v430->clientIdentity = v432 + 1;
                    v723 = v430;
                    v433 = v702 + v430 + v432 * v699;
                    v434 = v731;
                    (v689)(v433, v703, v731);
                    v435 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v436 = [v435 uuid];

                    v437 = v704;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v438 = v701;
                    sub_1001CD744(v707, v701);
                    v439 = v688;
                    v440 = v700;
                    sub_1001C9D1C(v438, v439, v700);
                    sub_1005343C0(v440, v438, type metadata accessor for RDSavedReminder);
                    v441 = v717;
                    v442 = swift_isUniquelyReferenced_nonNull_native();
                    v732 = v441;
                    sub_1002CA5DC(v438, v437, v442);
                    (Subtasks)(v437, v434);
                    v717 = v732;
                    v419 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v443 = v682;
                    sub_100533C2C(v419);
                    v682 = v443;
                    if (v443)
                    {
                      sub_1004909AC(v707, type metadata accessor for RDSavedReminder);
                      v306 = v727;
LABEL_114:
                      v368 = v713;
                      v718, v421, v422, v423, v424, v425, v426, v427;

                      objc_autoreleasePoolPop(v418);
                      sub_1004909AC(v698, type metadata accessor for RDSavedReminder);
                      (v368->super.isa)(v706, v306);
                      v692, v465, v466, v467, v468, v469, v470, v471;
                      v687, v472, v473, v474, v475, v476, v477, v478;
                      v723, v479, v480, v481, v482, v483, v484, v485;
                      v493 = v690;
                      isUniquelyReferenced_nonNull_native = v712;
                      v104 = v678;
                      goto LABEL_115;
                    }

                    v445 = v444;

                    v368 = v713;
                    if (v445)
                    {
                      v446 = REMRemindersListDataView.ReminderLite.objectID.getter();
                      v447 = [v446 uuid];

                      v448 = v704;
                      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                      sub_10031E590(v445, v448);
                    }

                    sub_1004909AC(v707, type metadata accessor for RDSavedReminder);
                    v367 = v725 + 1;
                    objc_autoreleasePoolPop(v418);
                    v306 = v727;
                    v417 = v706;
                    v104 = v678;
                    v92 = v710;
                  }

                  ++v107;
                  (v368->super.isa)(v417, v306);
                  isUniquelyReferenced_nonNull_native += v92;
                  v409 = v718;
                  if (v719 == v107)
                  {
                    goto LABEL_111;
                  }
                }

                goto LABEL_162;
              }

              v723 = &_swiftEmptyArrayStorage;
LABEL_111:
              v409, v410, v411, v412, v413, v414, v415, v416;
              isUniquelyReferenced_nonNull_native = v712;
              v449 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v450 = [v449 uuid];

              v451 = v704;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v452 = v723;

              v453 = v685;
              v454 = swift_isUniquelyReferenced_nonNull_native();
              v732 = v453;
              sub_1002CA584(v452, v451, v454);
              v455 = v451;
              v107 = v731;
              (Subtasks)(v455, v731);
              v685 = v732;
              sub_1004909AC(v698, type metadata accessor for RDSavedReminder);
              v452, v456, v457, v458, v459, v460, v461, v462;
            }

            else
            {
              sub_1004909AC(v698, type metadata accessor for RDSavedReminder);
            }

            v365 = v676;
            objc_autoreleasePoolPop(v677);
          }

          v369 = v686 + 1;
          (v368->super.isa)(isUniquelyReferenced_nonNull_native, v306);
          v366 = v369;
          v364 = v692;
          if (v369 == v365)
          {
            v692, v370, v371, v372, v373, v374, v375, v376;
            v92 = v685;
            v464 = v711;
            v463 = v717;
            goto LABEL_117;
          }
        }

LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_170:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v236 = 0;
      clientIdentity = v711->clientIdentity;
      v674 = &v692->contactInteractionWriter[2];
      v673 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
      v667 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
      v672 = (v722 + 56);
      v666 = &v692->coreSuggestionsHandler[2];
      v671 = (v722 + 48);
      v689 = (v722 + 32);
      v713 = (v722 + 16);
      v686 = v728 + 16;
      v702 = (v722 + 8);
      Subtasks = v728 + 8;
      v684 = (v722 + 40);
      storeController = v711->storeController;
      v237 = &_swiftEmptyArrayStorage;
      v104 = &_swiftEmptyArrayStorage;
      v92 = v710;
      while (1)
      {
        if (v236 >= *v677->clientIdentity)
        {
          goto LABEL_157;
        }

        v238 = v677 + ((v711->dataAccessRequestsWriter[2] + 32) & ~v711->dataAccessRequestsWriter[2]);
        v239 = *&v711->storeProvider[10];
        v685 = v236;
        (*v711->clientIdentity)(v719, &v238[v239 * v236], v715);
        REMRemindersListDataView.SectionLite.type.getter();
        v240 = v709;
        v241 = (*v674)(v92, v709);
        if (v241 == v673)
        {
          (*v666)(v92, v240);
          v242 = *v92;
          v717 = *(v92 + 8);
          v243 = *(v92 + 16);
          *(v92 + 32), v244, v245, v246, v247, v248, v249, v250;
          v92 = [v242 uuid];
          v251 = v718;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v672)(v251, 0, 1, v107);
        }

        else
        {
          if (v241 != v667)
          {
            goto LABEL_170;
          }

          (*v672)(v718, 1, 1, v107);
          v717 = 0;
          v243 = 0;
        }

        v252 = REMRemindersListDataView.SectionLite.reminders.getter();
        v253 = *(v252 + 16);
        v254 = *v237->clientIdentity;
        v107 = v254 + v253;
        if (__OFADD__(v254, v253))
        {
          goto LABEL_158;
        }

        v92 = v252;

        v255 = swift_isUniquelyReferenced_nonNull_native();
        v262 = v237;
        if (!v255 || v107 > *&v237->clientIdentity[8] >> 1)
        {
          if (v254 <= v107)
          {
            v263 = v254 + v253;
          }

          else
          {
            v263 = v254;
          }

          v262 = sub_100365A24(v255, v263, 1, v237);
        }

        v107 = v731;
        v264 = v708;
        v265 = *(v92 + 16);
        v692 = v262;
        if (v265)
        {
          if ((*&v262->clientIdentity[8] >> 1) - *v262->clientIdentity < v253)
          {
            goto LABEL_163;
          }

          swift_arrayInitWithCopy();
          v92, v266, v267, v268, v269, v270, v271, v272;
          if (v253)
          {
            v273 = *v692->clientIdentity;
            v274 = __OFADD__(v273, v253);
            v275 = v273 + v253;
            if (v274)
            {
              __break(1u);
              goto LABEL_166;
            }

            *v692->clientIdentity = v275;
          }
        }

        else
        {
          v92, v256, v257, v262, v258, v259, v260, v261;
          if (v253)
          {
            goto LABEL_159;
          }
        }

        v276 = v718;
        sub_100010364(v718, v264, &unk_100939D90, "8\n\r");
        if ((*v671)(v264, 1, v107) == 1)
        {
          v92, v277, v278, v279, v280, v281, v282, v283;
          v243, v284, v285, v286, v287, v288, v289, v290;
          sub_1000050A4(v276, &unk_100939D90, "8\n\r");
          (*storeController)(v719, v715);
          sub_1000050A4(v264, &unk_100939D90, "8\n\r");
LABEL_49:
          v306 = v727;
          isUniquelyReferenced_nonNull_native = v712;
          goto LABEL_20;
        }

        v291 = v725;
        v688 = *v689;
        (v688)(v725, v264, v107);
        v299 = v723;
        if (!v243)
        {
          v92, v292, v293, v294, v295, v296, v297, v298;
          (v702->super.isa)(v291, v107);
          sub_1000050A4(v718, &unk_100939D90, "8\n\r");
          (*storeController)(v719, v715);
          goto LABEL_49;
        }

        if (v104)
        {
          v300 = v725;
          (v713->super.isa)(v699, v725, v107);
          v301 = swift_isUniquelyReferenced_nonNull_native();
          v302 = v690;
          if ((v301 & 1) == 0)
          {
            v104 = sub_100366328(0, *v104->clientIdentity + 1, 1, v104);
          }

          v304 = *v104->clientIdentity;
          v303 = *&v104->clientIdentity[8];
          if (v304 >= v303 >> 1)
          {
            v104 = sub_100366328((v303 > 1), v304 + 1, 1, v104);
          }

          v305 = v722;
          *v104->clientIdentity = v304 + 1;
          (v688)(v104 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v304, v699, v107);
          v299 = v723;
        }

        else
        {
          v302 = v690;
          v300 = v725;
        }

        v678 = v104;
        if (!v302)
        {
          v243, v292, v293, v294, v295, v296, v297, v298;
          v327 = 0;
LABEL_61:
          v306 = v727;
          goto LABEL_64;
        }

        v307 = swift_isUniquelyReferenced_nonNull_native();
        v732 = v302;
        v308 = sub_100363F20(v300);
        v316 = *v302->clientIdentity;
        v317 = (v309 & 1) == 0;
        v274 = __OFADD__(v316, v317);
        v318 = v316 + v317;
        if (v274)
        {
          goto LABEL_167;
        }

        v319 = v309;
        if (*&v302->clientIdentity[8] >= v318)
        {
          v299 = v723;
          if ((v307 & 1) == 0)
          {
            v356 = v308;
            sub_100375E88();
            v299 = v723;
            v308 = v356;
          }
        }

        else
        {
          sub_10036F3F4(v318, v307);
          v308 = sub_100363F20(v300);
          if ((v319 & 1) != (v309 & 1))
          {
            goto LABEL_169;
          }

          v299 = v723;
        }

        v328 = v717;
        v327 = v732;
        if (v319)
        {
          v329 = (*&v732->clientIdentity[40] + 16 * v308);
          v330 = v329[1];
          *v329 = v717;
          v329[1] = v243;
          v330, v309, v310, v311, v312, v313, v314, v315;
          v107 = v731;
          goto LABEL_61;
        }

        *&v732->storeProvider[8 * (v308 >> 6) + 2] |= 1 << v308;
        v331 = v308;
        v107 = v731;
        (*(v722 + 16))(*&v327->clientIdentity[32] + *(v722 + 72) * v308, v300, v731);
        v332 = (*&v327->clientIdentity[40] + 16 * v331);
        *v332 = v328;
        v332[1] = v243;
        v333 = *v327->clientIdentity;
        v274 = __OFADD__(v333, 1);
        v334 = v333 + 1;
        if (v274)
        {
          goto LABEL_168;
        }

        *v327->clientIdentity = v334;
        v306 = v727;
        v299 = v723;
LABEL_64:
        isUniquelyReferenced_nonNull_native = v686;
        v690 = v327;
        v104 = *(v92 + 16);
        if (v104)
        {
          break;
        }

LABEL_19:
        v92, v320, v321, v322, v323, v324, v325, v326;
        (v702->super.isa)(v725, v107);
        sub_1000050A4(v718, &unk_100939D90, "8\n\r");
        (*storeController)(v719, v715);
        isUniquelyReferenced_nonNull_native = v712;
        v104 = v678;
LABEL_20:
        v236 = (&v685->super.isa + 1);
        v237 = v692;
        v92 = v710;
        if ((&v685->super.isa + 1) == v676)
        {
          goto LABEL_81;
        }
      }

      v335 = 0;
      v717 = (v92 + ((*(v728 + 80) + 32) & ~*(v728 + 80)));
      while (v335 < *(v92 + 16))
      {
        (*(v728 + 16))(v299, v717 + *(v728 + 72) * v335, v306);
        if (!v101)
        {
          (*Subtasks)(v299, v306);
          goto LABEL_67;
        }

        v336 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v337 = [v336 uuid];

        v338 = v730;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v339 = v713->super.isa;
        (v713->super.isa)(v729, v725, v107);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v732 = v101;
        v340 = sub_100363F20(v338);
        v342 = *(v101 + 16);
        v343 = (v341 & 1) == 0;
        v274 = __OFADD__(v342, v343);
        v344 = v342 + v343;
        if (v274)
        {
          goto LABEL_153;
        }

        v345 = v341;
        if (*(v101 + 24) >= v344)
        {
          if ((v107 & 1) == 0)
          {
            v348 = v340;
            sub_1003744A0();
            v340 = v348;
            v107 = v731;
            v101 = v732;
            if (v345)
            {
LABEL_76:
              v347 = v722;
              (*(v722 + 40))(*(v101 + 56) + *(v722 + 72) * v340, v729, v107);
              (*(v347 + 8))(v730, v107);
              v299 = v723;
              v306 = v727;
              (*Subtasks)(v723, v727);
              goto LABEL_67;
            }

            goto LABEL_78;
          }
        }

        else
        {
          sub_10036C648(v344, v107);
          v340 = sub_100363F20(v730);
          if ((v345 & 1) != (v346 & 1))
          {
            goto LABEL_169;
          }
        }

        v107 = v731;
        v101 = v732;
        if (v345)
        {
          goto LABEL_76;
        }

LABEL_78:
        *(v101 + 8 * (v340 >> 6) + 64) |= 1 << v340;
        v349 = v722;
        v350 = *(v722 + 72) * v340;
        v351 = *(v101 + 48) + v350;
        isUniquelyReferenced_nonNull_native = v101;
        v352 = v730;
        (v339)(v351, v730, v107);
        (v688)(*(isUniquelyReferenced_nonNull_native + 56) + v350, v729, v107);
        v353 = v352;
        v101 = isUniquelyReferenced_nonNull_native;
        (*(v349 + 8))(v353, v107);
        v299 = v723;
        v306 = v727;
        (*Subtasks)(v723, v727);
        v354 = *(isUniquelyReferenced_nonNull_native + 16);
        v274 = __OFADD__(v354, 1);
        v355 = v354 + 1;
        if (v274)
        {
          goto LABEL_156;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v355;
        isUniquelyReferenced_nonNull_native = v686;
LABEL_67:
        if (v104 == ++v335)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
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
      swift_once();
    }
  }

  v687, v108, v109, v110, v111, v112, v113, v114;
  v115 = v100;
  v116 = v690;
LABEL_16:
  v199 = v689;
  sub_1004909AC(isUniquelyReferenced_nonNull_native, _s9UtilitiesO12SortingStyleOMa);
  (*v717->storeController)(v92, v99);
  objc_autoreleasePoolPop(v199);
  v116, v200, v201, v202, v203, v204, v205, v206;
  v101, v207, v208, v209, v210, v211, v212, v213;
}

void sub_100533C2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v112 = v4;
  v113 = v5;
  __chkstk_darwin(v4, v6);
  v117 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RDSavedURLAttachment(0);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8, v9);
  v115 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v109 = &v100 - v13;
  __chkstk_darwin(v14, v15);
  v108 = &v100 - v16;
  type metadata accessor for REMCDSavedAttachment();
  v17 = sub_1005BE53C();
  v18 = a1;
  v19 = sub_1005BDBEC(a1, 0x20u);
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [ObjCClassFromMetadata entity];
  [v20 setEntity:v22];

  [v20 setAffectedStores:0];
  [v20 setPredicate:v19];

  if (qword_100936668 != -1)
  {
LABEL_33:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 setSortDescriptors:isa];

  v24 = sub_10003450C(v17);
  v25 = Array._bridgeToObjectiveC()().super.isa;
  v24, v26, v27, v28, v29, v30, v31, v32;
  [v20 setPropertiesToFetch:v25];

  v33 = NSManagedObjectContext.fetch<A>(_:)();
  v17, v34, v35, v36, v37, v38, v39, v40;

  if (!v2)
  {
    if (v33 >> 62)
    {
LABEL_35:
      v48 = _CocoaArrayWrapper.endIndex.getter();
      if (v48)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v48 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
LABEL_6:
        v107 = v33 & 0xC000000000000001;
        if ((v33 & 0xC000000000000001) != 0)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v49 = *(v33 + 32);
        }

        v50 = v49;
        v51 = [v49 storeControllerManagedObjectContext];
        if (!v51)
        {
          v33, v52, v53, v54, v55, v56, v57, v58;
          v88 = objc_opt_self();
          v89 = String._bridgeToObjectiveC()();
          [v88 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v89];

          swift_willThrow();
          return;
        }

        v59 = v51;
        v114 = [v51 storeController];
        if (!v114)
        {
          v33, v60, v61, v62, v63, v64, v65, v66;
          v90 = objc_opt_self();
          v91 = String._bridgeToObjectiveC()();
          [v90 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v91];

          swift_willThrow();
          return;
        }

        v101 = v59;
        v102 = v50;
        v2 = 0;
        v106 = v33 & 0xFFFFFFFFFFFFFF8;
        v103 = &v113->clientIdentity[16];
        v113 = &_swiftEmptyArrayStorage;
        v17 = v107;
        v104 = v48;
        v105 = v33;
        do
        {
          if (v17)
          {
            v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *(v106 + 16))
            {
              __break(1u);
              goto LABEL_35;
            }

            v67 = *(v33 + 8 * v2 + 32);
          }

          v18 = v67;
          ObjCClassFromMetadata = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            __break(1u);
            goto LABEL_33;
          }

          v116[3] = sub_1000060C8(0, &qword_10093DD58, off_1008D4118);
          v116[4] = &off_1008F2C88;
          v68 = v114;
          v116[0] = v114;
          v20 = v18;
          v69 = v68;
          v70 = sub_1004755B4(v20, v116);
          v71 = v70;
          if (v72)
          {
          }

          else
          {
            v73 = [v70 url];
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v74 = [v71 metadata];
            if (v74)
            {
              v75 = v74;
              v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v78 = v77;
            }

            else
            {

              v76 = 0;
              v78 = 0xF000000000000000;
            }

            v79 = v109;
            (*v103)(v109, v117, v112);
            v80 = &v79[*(v111 + 20)];
            *v80 = v76;
            v80[1] = v78;
            v81 = v79;
            v82 = v108;
            sub_1005343C0(v81, v108, type metadata accessor for RDSavedURLAttachment);
            sub_1005343C0(v82, v115, type metadata accessor for RDSavedURLAttachment);
            v83 = v113;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v83 = sub_100368468(0, *v83->clientIdentity + 1, 1, v83);
            }

            v48 = v104;
            v33 = v105;
            v84 = v83;
            v85 = *v83->clientIdentity;
            v113 = v84;
            v86 = *&v84->clientIdentity[8];
            if (v85 >= v86 >> 1)
            {
              v113 = sub_100368468((v86 > 1), v85 + 1, 1, v113);
            }

            v87 = v113;
            *v113->clientIdentity = v85 + 1;
            sub_1005343C0(v115, v87 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v85, type metadata accessor for RDSavedURLAttachment);
            v17 = v107;
          }

          ++v2;
        }

        while (ObjCClassFromMetadata != v48);

        v33, v92, v93, v94, v95, v96, v97, v98;
        v99 = v113;
        if (*v113->clientIdentity)
        {
          return;
        }

LABEL_37:
        v99, v41, v42, v43, v44, v45, v46, v47;
        return;
      }
    }

    v99 = v33;
    goto LABEL_37;
  }
}

uint64_t sub_1005343C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100534428(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v13 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  sub_10054026C(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (v18)
  {
    sub_100005EE0(&v17, v16);
    sub_100005EF0(v16, v15);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    if (swift_dynamicCast())
    {
      v6 = v19;
      v7 = [v19 remObjectID];
      if (v7)
      {
        v8 = v7;
        v9 = REMObjectID.codable.getter();

        v10 = v9;
        sub_100379240(v15, v10);
      }

      else
      {
      }
    }

    sub_10000607C(v16);
    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v13 + 8))(v5, v2);
}

void sub_10053464C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  [v3 setPredicate:a2];
  [v3 setResultType:2];
  v5 = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  swift_getKeyPath();
  v6 = NSExpression.init<A, B>(forKeyPath:)();
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791300;
  *(v7 + 56) = v5;
  *(v7 + 32) = v6;
  v74 = v6;
  v8 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v10, v11, v12, v13, v14, v15, v16;
  v17 = [objc_opt_self() expressionForFunction:v8 arguments:isa];

  v18 = [objc_allocWithZone(NSExpressionDescription) init];
  v73 = v17;
  [v18 setExpression:v17];
  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  [v19 setName:v20];

  [v19 setExpressionResultType:300];
  [v3 setReturnsObjectsAsFaults:0];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100791300;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 32) = 0x6574656C706D6F63;
  *(v21 + 40) = 0xE900000000000064;
  v22 = Array._bridgeToObjectiveC()().super.isa;
  v21, v23, v24, v25, v26, v27, v28, v29;
  [v3 setPropertiesToGroupBy:v22];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100791340;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 32) = 0x6574656C706D6F63;
  *(v30 + 40) = 0xE900000000000064;
  *(v30 + 88) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
  *(v30 + 64) = v19;
  v31 = v19;
  v32 = Array._bridgeToObjectiveC()().super.isa;
  v30, v33, v34, v35, v36, v37, v38, v39;
  [v3 setPropertiesToFetch:v32];

  [v3 setResultType:2];
  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v40 = NSManagedObjectContext.fetch<A>(_:)();
  if (v71)
  {

    return;
  }

  v48 = v40;
  if (v40 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v73;
  v50 = v74;
  if (!v49)
  {
    v48, v41, v42, v43, v44, v45, v46, v47;
LABEL_34:
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();

    return;
  }

  v68 = v31;
  v69 = v3;
  if (v49 < 1)
  {
    goto LABEL_39;
  }

  v70 = 0;
  v72 = 0;
  v52 = 0;
  while (1)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v60 = *(v48 + 8 * v52 + 32);
    }

    v61 = v60;
    *&v75 = 0x6574656C706D6F63;
    *(&v75 + 1) = 0xE900000000000064;
    v62 = [v60 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v62)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v77 = 0u;
    }

    v78 = v75;
    v79 = v77;
    if (!*(&v77 + 1))
    {

      sub_1000050A4(&v78, &qword_100939ED0, &qword_100791B10);
      goto LABEL_9;
    }

    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_9;
    }

    v63 = v80;
    *&v76 = 0x746E756F63;
    *(&v76 + 1) = 0xE500000000000000;
    v64 = [v61 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v64)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
    }

    v78 = v76;
    v79 = v77;
    if (!*(&v77 + 1))
    {

      sub_1000050A4(&v78, &qword_100939ED0, &qword_100791B10);
      goto LABEL_9;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_9;
    }

    v65 = v80;
    v66 = [v63 BOOLValue];
    v67 = [v65 integerValue];

    if (!v66)
    {
      break;
    }

    if (__OFADD__(v70, v67))
    {
      goto LABEL_38;
    }

    v70 += v67;
LABEL_9:
    if (v49 == ++v52)
    {
      v48, v53, v54, v55, v56, v57, v58, v59;
      v3 = v69;
      v51 = v73;
      v50 = v74;
      v31 = v68;
      goto LABEL_34;
    }
  }

  if (!__OFADD__(v72, v67))
  {
    v72 += v67;
    goto LABEL_9;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_100534D44(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_146;
    }

    goto LABEL_141;
  }

  v293 = a2;
  v312 = _swiftEmptySetSingleton;
  v311[4] = _swiftEmptySetSingleton;
  v311[5] = _swiftEmptySetSingleton;
  v311[2] = _swiftEmptySetSingleton;
  v311[3] = _swiftEmptySetSingleton;
  v3 = a1;
  v4 = sub_10003B8F0(v3, &_swiftEmptyArrayStorage);
  if (!v2)
  {
    v12 = v4;
    if (v4 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_5:
        v14 = 0;
        v305 = v12 & 0xC000000000000001;
        v298 = v12 & 0xFFFFFFFFFFFFFF8;
        v297 = &v12->clientIdentity[16];
        v15 = &selRef_accountStatusWithCompletionHandler_;
        v16 = &selRef_accountStatusWithCompletionHandler_;
        v304 = v13;
        v299 = v12;
        v300 = v3;
        while (1)
        {
          if (v305)
          {
            v24 = v14;
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v26 = __OFADD__(v24, 1);
            v27 = v24 + 1;
            if (v26)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (v14 >= *(v298 + 16))
            {
              goto LABEL_145;
            }

            v28 = v14;
            v25 = *&v297[8 * v14];
            v26 = __OFADD__(v28, 1);
            v27 = v28 + 1;
            if (v26)
            {
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }
          }

          v306 = v27;
          v29 = v25;
          v30 = [v25 changes];
          if (!v30)
          {
            if (qword_1009363F0 != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for Logger();
            sub_100006654(v62, qword_10094BDF0);
            v63 = v29;
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *v66 = 138412290;
              *(v66 + 4) = v63;
              *v67 = v63;
              v68 = v63;
              _os_log_impl(&_mh_execute_header, v64, v65, "Skipping transaction because it contains no changes {transaction: %@}", v66, 0xCu);
              sub_1000050A4(v67, &unk_100938E70, &unk_100797230);
              v15 = &selRef_accountStatusWithCompletionHandler_;

              v16 = &selRef_accountStatusWithCompletionHandler_;
            }

            else
            {
            }

            goto LABEL_6;
          }

          v31 = v30;
          sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
          v308 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v307 = v29;
          v32 = [v29 author];
          if (!v32)
          {
            break;
          }

          v33 = v32;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v38;
          if (!v36)
          {
            goto LABEL_25;
          }

          v46 = v37;
          if (v34 == v37 && v36 == v38)
          {
            goto LABEL_30;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v36, v48, v49, v50, v51, v52, v53, v54;
          v45, v55, v56, v57, v58, v59, v60, v61;
          if (v47)
          {
            goto LABEL_31;
          }

LABEL_26:
          v76 = [v307 author];
          if (!v76)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v38;
LABEL_35:
            v95 = v45;
            goto LABEL_36;
          }

          v77 = v76;
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v79;

          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v38;
          if (!v36)
          {
            goto LABEL_35;
          }

          v46 = v80;
          if (v78 == v80 && v36 == v38)
          {
LABEL_30:
            v36, v38, v46, v40, v41, v42, v43, v44;
            v45, v82, v83, v84, v85, v86, v87, v88;
LABEL_31:
            v89 = [v307 contextName];
            if (!v89)
            {
              goto LABEL_37;
            }

            v90 = v89;
            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;

            v94 = v93;
            v16 = &selRef_accountStatusWithCompletionHandler_;
            sub_100378434(v311, v91, v94);
            v95 = v311[1];
LABEL_36:
            v95, v38, v81, v40, v41, v42, v43, v44;
            goto LABEL_37;
          }

          v263 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v36, v264, v265, v266, v267, v268, v269, v270;
          v45, v271, v272, v273, v274, v275, v276, v277;
          if (v263)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (!(v308 >> 62))
          {
            v96 = *((v308 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v96)
            {
              goto LABEL_39;
            }

            goto LABEL_139;
          }

          v96 = _CocoaArrayWrapper.endIndex.getter();
          if (v96)
          {
LABEL_39:
            sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
            if (v96 >= 1)
            {
              v97 = 0;
              v309 = v96;
              while (1)
              {
                if ((v308 & 0xC000000000000001) != 0)
                {
                  v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v98 = *(v308 + 32 + 8 * v97);
                }

                v99 = v98;
                v100 = [v98 v15[150]];
                v101 = [v100 v16[395]];
                v102 = v16;
                v103 = [ObjCClassFromMetadata v16[395]];
                v104 = static NSObject.== infix(_:_:)();

                if (v104)
                {

                  v105 = sub_1005AFD38(v100);
                  if (!v105)
                  {
                    goto LABEL_71;
                  }

                  v106 = v105;
                  objc_opt_self();
                  v107 = swift_dynamicCastObjCClass();
                  if (!v107)
                  {
                    if (qword_1009363F0 != -1)
                    {
                      swift_once();
                    }

                    v174 = type metadata accessor for Logger();
                    sub_100006654(v174, qword_10094BDF0);
                    v175 = v100;
                    v176 = Logger.logObject.getter();
                    v177 = static os_log_type_t.fault.getter();

                    if (os_log_type_enabled(v176, v177))
                    {
                      v178 = swift_slowAlloc();
                      v179 = swift_slowAlloc();
                      *v178 = 138412290;
                      *(v178 + 4) = v175;
                      *v179 = v175;
                      v180 = v175;
                      _os_log_impl(&_mh_execute_header, v176, v177, "Failed to cast managedObject to REMCDReminder {objectID: %@}", v178, 0xCu);
                      sub_1000050A4(v179, &unk_100938E70, &unk_100797230);
                    }

                    else
                    {
                    }

                    v15 = &selRef_accountStatusWithCompletionHandler_;
                    goto LABEL_115;
                  }

                  v108 = v107;
                  v109 = v106;
                  v110 = [v108 remObjectID];
                  if (!v110)
                  {

                    if (qword_1009363F0 != -1)
                    {
                      swift_once();
                    }

                    v181 = type metadata accessor for Logger();
                    sub_100006654(v181, qword_10094BDF0);
                    v182 = v100;
                    v169 = Logger.logObject.getter();
                    v183 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v169, v183))
                    {
                      v184 = swift_slowAlloc();
                      v185 = swift_slowAlloc();
                      *v184 = 138412290;
                      *(v184 + 4) = v182;
                      *v185 = v182;
                      v186 = v182;
                      _os_log_impl(&_mh_execute_header, v169, v183, "Failed to get remObjectID from REMCDReminder {objectID: %@}", v184, 0xCu);
                      sub_1000050A4(v185, &unk_100938E70, &unk_100797230);

LABEL_110:
                      v15 = &selRef_accountStatusWithCompletionHandler_;
                      goto LABEL_115;
                    }

LABEL_109:
                    goto LABEL_110;
                  }

                  v111 = v110;
                  if ([v99 changeType] <= 1)
                  {
                    v216 = REMObjectID.codable.getter();
                    sub_100379240(v311, v216);

LABEL_102:
                    goto LABEL_115;
                  }
                }

                else
                {
                  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
                  v112 = swift_getObjCClassFromMetadata();
                  v113 = v101;
                  v114 = [v112 v102[395]];
                  LOBYTE(v112) = static NSObject.== infix(_:_:)();

                  if (v112)
                  {

                    v115 = sub_1005AFD38(v100);
                    if (!v115)
                    {
                      goto LABEL_71;
                    }

                    v116 = v115;
                    objc_opt_self();
                    v117 = swift_dynamicCastObjCClass();
                    if (v117)
                    {
                      v118 = v117;
                      v119 = v116;
                      v120 = [v118 remObjectID];
                      if (v120)
                      {
                        v121 = v120;
                        v122 = [v99 updatedProperties];
                        if (!v122)
                        {
                          goto LABEL_121;
                        }

                        v123 = v122;
                        v303 = v119;
                        sub_1000060C8(0, &qword_100939678, NSPropertyDescription_ptr);
                        sub_10000CE28(&qword_100948BC8, &qword_100939678, NSPropertyDescription_ptr);
                        v124 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                        v125 = [v100 entity];
                        v126 = [v125 relationshipsByName];

                        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
                        v127 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                        if (*(v127 + 16))
                        {
                          v135 = sub_100005F4C(0x73656572616873, 0xE700000000000000);
                          v15 = &selRef_accountStatusWithCompletionHandler_;
                          if (v136)
                          {
                            v294 = v121;
                            v302 = *(*(v127 + 56) + 8 * v135);
                            v127, v143, v144, v145, v146, v147, v148, v149;
                            v150 = (v124 & 0xC000000000000001) == 0;
                            v151 = v124;
                            v119 = v303;
                            if (v150)
                            {
                              if (*(v151 + 16))
                              {
                                v237 = NSObject._rawHashValue(seed:)(*(v151 + 40));
                                v301 = v151;
                                v238 = -1 << *(v151 + 32);
                                v239 = v237 & ~v238;
                                v296 = v151 + 56;
                                if ((*(v151 + 56 + ((v239 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v239))
                                {
                                  v295 = ~v238;
                                  v121 = v294;
                                  while (1)
                                  {
                                    v240 = *(*(v301 + 48) + 8 * v239);
                                    v241 = static NSObject.== infix(_:_:)();

                                    if (v241)
                                    {
                                      break;
                                    }

                                    v239 = (v239 + 1) & v295;
                                    if (((*(v296 + ((v239 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v239) & 1) == 0)
                                    {
                                      goto LABEL_134;
                                    }
                                  }

                                  v301, v242, v243, v244, v245, v246, v247, v248;
                                  v119 = v303;
LABEL_60:
                                  v161 = [v118 reminders];
                                  v15 = &selRef_accountStatusWithCompletionHandler_;
                                  if (v161)
                                  {
                                    v162 = v161;
                                    sub_100534428(v161, &v312);
                                  }
                                }

                                else
                                {
                                  v121 = v294;
LABEL_134:

                                  v301, v256, v257, v258, v259, v260, v261, v262;
                                  v15 = &selRef_accountStatusWithCompletionHandler_;
                                  v119 = v303;
                                }
                              }

                              else
                              {

                                v151, v249, v250, v251, v252, v253, v254, v255;
                                v121 = v294;
                              }
                            }

                            else
                            {
                              v152 = v302;
                              v153 = __CocoaSet.contains(_:)();
                              v151, v154, v155, v156, v157, v158, v159, v160;

                              if (v153)
                              {
                                v121 = v294;
                                goto LABEL_60;
                              }

                              v15 = &selRef_accountStatusWithCompletionHandler_;
                              v121 = v294;
                            }

LABEL_121:
                            v219 = v309;
                            if ([v99 changeType] == 1)
                            {
                              v234 = REMObjectID.codable.getter();
                              sub_100379240(v311, v234);
                            }

                            v235 = REMObjectID.codable.getter();
                            sub_100379240(v311, v235);

                            v16 = &selRef_accountStatusWithCompletionHandler_;
                            goto LABEL_116;
                          }

                          v127, v136, v137, v138, v139, v140, v141, v142;
                          v124, v227, v228, v229, v230, v231, v232, v233;
                        }

                        else
                        {
                          v127, v128, v129, v130, v131, v132, v133, v134;
                          v124, v220, v221, v222, v223, v224, v225, v226;
                          v15 = &selRef_accountStatusWithCompletionHandler_;
                        }

                        v119 = v303;
                        goto LABEL_121;
                      }

                      if (qword_1009363F0 != -1)
                      {
                        swift_once();
                      }

                      v210 = type metadata accessor for Logger();
                      sub_100006654(v210, qword_10094BDF0);
                      v211 = v100;
                      v212 = Logger.logObject.getter();
                      v213 = static os_log_type_t.error.getter();

                      if (!os_log_type_enabled(v212, v213))
                      {

                        goto LABEL_114;
                      }

                      v214 = swift_slowAlloc();
                      v215 = swift_slowAlloc();
                      *v214 = 138412290;
                      *(v214 + 4) = v211;
                      *v215 = v211;
                      v193 = v211;
                      _os_log_impl(&_mh_execute_header, v212, v213, "Failed to get remObjectID from REMCDList {objectID: %@}", v214, 0xCu);
                      sub_1000050A4(v215, &unk_100938E70, &unk_100797230);

                      v15 = &selRef_accountStatusWithCompletionHandler_;

LABEL_99:
                      goto LABEL_115;
                    }

                    if (qword_1009363F0 != -1)
                    {
                      swift_once();
                    }

                    v194 = type metadata accessor for Logger();
                    sub_100006654(v194, qword_10094BDF0);
                    v195 = v100;
                    v196 = Logger.logObject.getter();
                    v197 = static os_log_type_t.fault.getter();

                    if (!os_log_type_enabled(v196, v197))
                    {

LABEL_112:
                      v15 = &selRef_accountStatusWithCompletionHandler_;
                      goto LABEL_115;
                    }

                    v198 = swift_slowAlloc();
                    v199 = swift_slowAlloc();
                    *v198 = 138412290;
                    *(v198 + 4) = v195;
                    *v199 = v195;
                    v200 = v195;
                    _os_log_impl(&_mh_execute_header, v196, v197, "Failed to cast managedObject to REMCDList {objectID: %@}", v198, 0xCu);
                    sub_1000050A4(v199, &unk_100938E70, &unk_100797230);

                    v15 = &selRef_accountStatusWithCompletionHandler_;
                  }

                  else
                  {
                    type metadata accessor for REMCDListSection();
                    v163 = swift_getObjCClassFromMetadata();
                    v164 = v113;
                    v165 = [v163 v102[395]];
                    LOBYTE(v163) = static NSObject.== infix(_:_:)();

                    if (v163)
                    {
                    }

                    else
                    {
                      type metadata accessor for REMCDSmartListSection();
                      v166 = [swift_getObjCClassFromMetadata() v102[395]];
                      v167 = static NSObject.== infix(_:_:)();

                      if ((v167 & 1) == 0)
                      {
                        if (qword_1009363F0 != -1)
                        {
                          swift_once();
                        }

                        v187 = type metadata accessor for Logger();
                        sub_100006654(v187, qword_10094BDF0);
                        v188 = v100;
                        v189 = Logger.logObject.getter();
                        v190 = static os_log_type_t.debug.getter();

                        if (!os_log_type_enabled(v189, v190))
                        {

LABEL_114:
                          goto LABEL_115;
                        }

                        v191 = swift_slowAlloc();
                        v192 = swift_slowAlloc();
                        *v191 = 138412290;
                        *(v191 + 4) = v188;
                        *v192 = v188;
                        v193 = v188;
                        _os_log_impl(&_mh_execute_header, v189, v190, "Skipping change unhandled type {objectID: %@}", v191, 0xCu);
                        sub_1000050A4(v192, &unk_100938E70, &unk_100797230);

                        v15 = &selRef_accountStatusWithCompletionHandler_;

                        goto LABEL_99;
                      }
                    }

                    v168 = sub_1005AFD38(v100);
                    if (!v168)
                    {
LABEL_71:

                      goto LABEL_115;
                    }

                    v169 = v168;
                    type metadata accessor for REMCDBaseSection();
                    v170 = swift_dynamicCastClass();
                    if (!v170)
                    {
                      if (qword_1009363F0 != -1)
                      {
                        swift_once();
                      }

                      v201 = type metadata accessor for Logger();
                      sub_100006654(v201, qword_10094BDF0);
                      v202 = v100;
                      v203 = Logger.logObject.getter();
                      v204 = static os_log_type_t.fault.getter();

                      if (!os_log_type_enabled(v203, v204))
                      {
LABEL_111:

                        goto LABEL_112;
                      }

                      v205 = swift_slowAlloc();
                      v206 = swift_slowAlloc();
                      *v205 = 138412290;
                      *(v205 + 4) = v202;
                      *v206 = v202;
                      v109 = v202;
                      v207 = v204;
                      v208 = v203;
                      v209 = "Failed to cast managedObject to REMCDBaseSection {objectID: %@}";
                      goto LABEL_108;
                    }

                    v171 = v170;
                    v169 = v169;
                    v172 = [v171 remObjectID];
                    if (!v172)
                    {

                      if (qword_1009363F0 != -1)
                      {
                        swift_once();
                      }

                      v217 = type metadata accessor for Logger();
                      sub_100006654(v217, qword_10094BDF0);
                      v202 = v100;
                      v203 = Logger.logObject.getter();
                      v218 = static os_log_type_t.error.getter();

                      if (!os_log_type_enabled(v203, v218))
                      {
                        goto LABEL_111;
                      }

                      v205 = swift_slowAlloc();
                      v206 = swift_slowAlloc();
                      *v205 = 138412290;
                      *(v205 + 4) = v202;
                      *v206 = v202;
                      v109 = v202;
                      v207 = v218;
                      v208 = v203;
                      v209 = "Failed to get remObjectID from REMCDBaseSection {objectID: %@}";
LABEL_108:
                      _os_log_impl(&_mh_execute_header, v208, v207, v209, v205, 0xCu);
                      sub_1000050A4(v206, &unk_100938E70, &unk_100797230);

                      goto LABEL_109;
                    }

                    v173 = v172;
                    if ([v99 changeType] == 1)
                    {
                      v236 = REMObjectID.codable.getter();
                      sub_100379240(v311, v236);

                      goto LABEL_102;
                    }
                  }
                }

LABEL_115:
                v16 = &selRef_accountStatusWithCompletionHandler_;
                v219 = v309;
LABEL_116:
                if (++v97 == v219)
                {

                  v308, v17, v18, v19, v20, v21, v22, v23;
                  v12 = v299;
                  v3 = v300;
                  goto LABEL_6;
                }
              }
            }

LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(&_swiftEmptyArrayStorage);
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(&_swiftEmptyArrayStorage);
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(&_swiftEmptyArrayStorage);
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(&_swiftEmptyArrayStorage);
            }

LABEL_141:
            REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
            return;
          }

LABEL_139:

          v308, v278, v279, v280, v281, v282, v283, v284;
LABEL_6:
          v14 = v306;
          if (v306 == v304)
          {
            v12, v69, v70, v71, v72, v73, v74, v75;
            v285 = v312;
LABEL_150:

            REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
            v285, v286, v287, v288, v289, v290, v291, v292;
            goto LABEL_151;
          }
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v38;
LABEL_25:
        v45, v38, v39, v40, v41, v42, v43, v44;
        goto LABEL_26;
      }
    }

    v12, v5, v6, v7, v8, v9, v10, v11;
    v285 = _swiftEmptySetSingleton;
    goto LABEL_150;
  }

LABEL_151:
}

id sub_1005362CC(Class isa, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v4 setAffectedStores:isa];

  [v4 setPredicate:a2];
  [v4 setResultType:2];
  return v4;
}

id sub_1005363D0(Class isa, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDManualSortHint();
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v4 setAffectedStores:isa];

  [v4 setPredicate:a2];
  [v4 setResultType:2];
  return v4;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005364C4(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v4 - 8, v5);
  v47 = &v37 - v6;
  v7 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v39 = &v37 - v12;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 & 0xC000000000000001;
    v38 = (v40 + 56);
    v44 = (v40 + 48);
    v50 = &_swiftEmptyArrayStorage;
    v43 = (v40 + 32);
    v49 = v7;
    while (1)
    {
      if (v46)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v45 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = a1;
      v19 = [v15 remObjectID];
      if (v19)
      {
        v20 = v19;
        v21 = *v41;
        if (*(*v41 + 16) && (v22 = sub_10002B924(v19), (v23 & 1) != 0))
        {
          v24 = *(*(v21 + 56) + 8 * v22);
        }

        else
        {
          v24 = 0;
        }

        v25 = *v42;
        if (*(*v42 + 16) && (v26 = sub_10002B924(v20), (v27 & 1) != 0))
        {
          v28 = *(*(v25 + 56) + 8 * v26);
        }

        else
        {
          v28 = 0;
        }

        v29 = v16;
        v30 = v47;
        sub_1005384A4(v29, v24, v28, v47);

        v7 = v49;
      }

      else
      {
        v30 = v47;
        (*v38)(v47, 1, 1, v7);
        v20 = v16;
      }

      if ((*v44)(v30, 1, v7) == 1)
      {
        sub_1000050A4(v30, &qword_100940628, &unk_1007A6A20);
        a1 = v18;
      }

      else
      {
        v31 = *v43;
        v32 = v39;
        (*v43)(v39, v30, v7);
        v31(v48, v32, v7);
        a1 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_100365A24(0, *v50->clientIdentity + 1, 1, v50);
        }

        v34 = *v50->clientIdentity;
        v33 = *&v50->clientIdentity[8];
        if (v34 >= v33 >> 1)
        {
          v50 = sub_100365A24((v33 > 1), v34 + 1, 1, v50);
        }

        v35 = v50;
        *v50->clientIdentity = v34 + 1;
        v7 = v49;
        v31(v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, v48, v49);
      }

      ++v14;
      if (v17 == i)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1005368D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == enum case for REMRemindersListDataView.SortingStyle.displayDate(_:) || v12 == enum case for REMRemindersListDataView.SortingStyle.priority(_:) || v12 == enum case for REMRemindersListDataView.SortingStyle.creationDate(_:) || v12 == enum case for REMRemindersListDataView.SortingStyle.title(_:))
  {
    sub_1005401EC(a2, _s9UtilitiesO12SortingStyleOMa);
    (*(v7 + 8))(a1, v6);
    (*(v7 + 96))(v11, v6);
    v13 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v13 - 8) + 32))(a3, v11, v13);
    _s9UtilitiesO12SortingStyleOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v12 == enum case for REMRemindersListDataView.SortingStyle.default(_:))
  {
    v14.n128_f64[0] = (*(v7 + 8))(a1, v6);
    return sub_1001B1DA0(a2, a3, v14);
  }

  if (v12 == enum case for REMRemindersListDataView.SortingStyle.manual(_:))
  {
    sub_1005401EC(a2, _s9UtilitiesO12SortingStyleOMa);
    (*(v7 + 8))(a1, v6);
    _s9UtilitiesO12SortingStyleOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100536D54(uint64_t a1, id a2, id a3, id a4, uint64_t a5, uint64_t a6, objc_class *a7)
{
  v8 = v7;
  v395 = a6;
  v396 = a7;
  v385 = a5;
  v399 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v376 = *(v399 - 8);
  __chkstk_darwin(v399, v13);
  v398 = &v373 - v14;
  v378 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v377 = *(v378 - 8);
  __chkstk_darwin(v378, v15);
  v375 = &v373 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v374 = &v373 - v19;
  v383 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v382 = *(v383 - 8);
  __chkstk_darwin(v383, v20);
  v381 = (&v373 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v22, v23);
  v380 = &v373 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v379 = &v373 - v27;
  __chkstk_darwin(v28, v29);
  v384 = (&v373 - v30);
  v33 = __chkstk_darwin(v31, v32);
  v35 = (&v373 - v34);
  v394 = a1;
  v392 = sub_1005393B4(a1, v33);
  if (qword_1009363F8 != -1)
  {
LABEL_64:
    swift_once();
  }

  v403 = qword_100974F68;

  v36 = &_swiftEmptyArrayStorage;
  sub_100271A80(&_swiftEmptyArrayStorage);
  v410 = v403;
  v409 = &_swiftEmptyArrayStorage;
  v38 = sub_10053CBE4(a3, v37);
  sub_100271A80(v38);
  v397 = a3;
  sub_1005402B4(a3, v35, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1005401EC(v35, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_7;
  }

  sub_1005401EC(v35, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367F0 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v36 = qword_100975340;

LABEL_7:
    v386 = v22;
    sub_100271A80(v36);
    v407 = v409;
    v408 = v410;
    v403 = v395;

    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v41 = sub_100235F88(Predicate);
    sub_100271A98(v41);
    v388 = Predicate;
    v42 = sub_100235FA0(Predicate);
    sub_100271A98(v42);
    sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v43 = v410;
    v44 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    a3 = [objc_allocWithZone(NSFetchRequest) init];
    v390 = v44;
    v45 = [swift_getObjCClassFromMetadata() entity];
    [a3 setEntity:v45];

    isa = v396;
    if (v396)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [a3 setAffectedStores:isa];

    [a3 setPredicate:a2];
    v403 = _swiftEmptySetSingleton;

    sub_100050AD0(v47);
    v43, v48, v49, v50, v51, v52, v53, v54;
    v55 = v403;
    v56 = sub_1003FE014(v403);
    v389 = v8;
    v55, v57, v58, v59, v60, v61, v62, v63;
    v64 = Array._bridgeToObjectiveC()().super.isa;
    v56, v65, v66, v67, v68, v69, v70, v71;
    v391 = a3;
    [a3 setPropertiesToFetch:v64];

    v402 = v409;
    v8 = v409 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v409 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v397;
    v35 = &_swiftEmptyArrayStorage;
    v393 = a4;
    v387 = v43;
    if (!v8)
    {
      break;
    }

    v406 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v72 = 0;
      v35 = v406;
      v73 = v402;
      v400 = v402 & 0xFFFFFFFFFFFFFF8;
      v401 = (v402 & 0xC000000000000001);
      while (1)
      {
        a2 = (v72 + 1);
        if (__OFADD__(v72, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v401)
        {
          v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v72 >= *(v400 + 16))
          {
            goto LABEL_63;
          }

          v74 = *&v73->clientIdentity[8 * v72 + 16];
        }

        a4 = v8;
        v75 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v76)
        {
          break;
        }

        v22 = v75;
        v77 = v76;

        v406 = v35;
        v79 = *v35->clientIdentity;
        v78 = *&v35->clientIdentity[8];
        a3 = (v79 + 1);
        if (v79 >= v78 >> 1)
        {
          sub_100026EF4((v78 > 1), v79 + 1, 1);
          v35 = v406;
        }

        *v35->clientIdentity = a3;
        v80 = v35 + 16 * v79;
        *(v80 + 4) = v22;
        *(v80 + 5) = v77;
        ++v72;
        v8 = a4;
        v73 = v402;
        if (a2 == a4)
        {
          a4 = v393;
          a2 = v397;
          v43 = v387;
          goto LABEL_24;
        }
      }

      v403 = 0;
      v404 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v370._object = 0x80000001007EC120;
      v370._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v370);
      v405 = v74;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      LODWORD(v372) = 0;
      v371 = 19;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_69;
    }

    __break(1u);
LABEL_67:
    swift_once();
  }

LABEL_24:
  v81 = swift_allocObject();
  v82 = Array._bridgeToObjectiveC()().super.isa;
  v35, v83, v84, v85, v86, v87, v88, v89;
  v90 = v391;
  [v391 setRelationshipKeyPathsForPrefetching:v82];

  v91 = sub_10053CE0C(a2, a4, 0);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v92 = Array._bridgeToObjectiveC()().super.isa;
  v91, v93, v94, v95, v96, v97, v98, v99;
  [v90 setSortDescriptors:v92];

  v100 = v389;
  v101 = NSManagedObjectContext.fetch<A>(_:)();
  if (v100)
  {
    v43, v102, v103, v104, v105, v106, v107, v108;
    v402, v109, v110, v111, v112, v113, v114, v115;
    v388, v116, v117, v118, v119, v120, v121, v122;

    v407, v123, v124, v125, v126, v127, v128, v129;
    v408, v130, v131, v132, v133, v134, v135, v136;
    swift_deallocUninitializedObject();
    return v91;
  }

  *(v81 + 16) = v101;

  v137 = v382;
  v138 = v381;
  v139 = v383;
  (*(v382 + 16))();
  v140 = (*(v137 + 88))(v138, v139);
  if (v140 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    v388, v141, v142, v143, v144, v145, v146, v147;
    (*(v137 + 8))(v138, v139);
LABEL_33:
    v149 = _swiftEmptySetSingleton;
LABEL_34:
    v157 = *(v81 + 16);

    v158 = sub_100155C54(v395, v149, v157);
    v157, v159, v160, v161, v162, v163, v164, v165;
    v149, v166, v167, v168, v169, v170, v171, v172;
    v173 = *(v81 + 16);
    *(v81 + 16) = v158;
    v173, v174, v175, v176, v177, v178, v179, v180;
    v181 = v384;
    sub_1005402B4(a2, v384, _s9UtilitiesO12SortingStyleOMa);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v182 = v181;
      v183 = *v181;
      v185 = v182[1];
      v184 = v182[2];
      v187 = v182[3];
      v186 = v182[4];

      if (v183)
      {
        v185, v188, v189, v190, v191, v192, v193, v194;
        v184, v195, v196, v197, v198, v199, v200, v201;
        v187, v202, v203, v204, v205, v206, v207, v208;
        v186, v209, v210, v211, v212, v213, v214, v215;
        v223 = v392;
        if (v392)
        {
          v224 = *(v81 + 16);

          v225 = sub_100155828(v183, v393, v223, v224);
          v224, v226, v227, v228, v229, v230, v231, v232;
          v183, v233, v234, v235, v236, v237, v238, v239;

          v240 = *(v81 + 16);
          *(v81 + 16) = v225;
        }

        else
        {
          v240 = v183;
        }

        v240, v216, v217, v218, v219, v220, v221, v222;
        a2 = v397;
      }
    }

    else
    {
      sub_1005401EC(v181, _s9UtilitiesO12SortingStyleOMa);
    }

    v241 = swift_allocObject();
    *(v241 + 16) = 0;
    v242 = swift_allocObject();
    *(v242 + 16) = 0;
    v405 = _swiftEmptyDictionarySingleton;
    v406 = _swiftEmptyDictionarySingleton;
    v243 = *(v81 + 16);
    __chkstk_darwin(v242, v244);
    v245 = v385;
    *(&v373 - 14) = a2;
    *(&v373 - 13) = v245;
    v247 = v393;
    v246 = v394;
    *(&v373 - 12) = v248;
    *(&v373 - 11) = v246;
    *(&v373 - 10) = v81;
    *(&v373 - 9) = v247;
    *(&v373 - 8) = &v408;
    *(&v373 - 7) = &v407;
    *(&v373 - 6) = v396;
    *(&v373 - 40) = 0;
    *(&v373 - 4) = v392;
    *(&v373 - 3) = v241;
    v371 = &v406;
    v372 = &v405;

    v401 = sub_1003DE68C(sub_10046D484, (&v373 - 16), v243);
    v395 = v242;
    v243, v250, v251, v252, v253, v254, v255, v256;
    v257 = v379;
    sub_1005402B4(a2, v379, _s9UtilitiesO12SortingStyleOMa);
    v258 = swift_getEnumCaseMultiPayload();
    v400 = v241;
    if (v258 > 2)
    {
      if (v258 != 3)
      {
        if (v258 == 4)
        {
          sub_1005401EC(v257, _s9UtilitiesO12SortingStyleOMa);
        }

        v271 = v401;
        goto LABEL_51;
      }
    }

    else if (v258 < 2)
    {
      v259 = v377;
      v260 = v374;
      v261 = v378;
      (*(v377 + 32))(v374, v257, v378);
      v262 = v401;
      v263 = sub_100156950(v260, v393, v401);
      v262, v264, v265, v266, v267, v268, v269, v270;
      (*(v259 + 8))(v260, v261);
      v271 = v263;
LABEL_51:
      v272 = &_swiftEmptyArrayStorage;
      v403 = &_swiftEmptyArrayStorage;
      v273 = *v271->clientIdentity;
      v396 = 0;
      v401 = v271;
      if (v273)
      {
        v274 = *(v376 + 16);
        v275 = v271 + ((*(v376 + 80) + 32) & ~*(v376 + 80));
        v276 = *(v376 + 72);
        v277 = (v376 + 8);
        do
        {
          v278 = v398;
          v279 = v399;
          v274(v398, v275, v399);
          REMSortableElement.element.getter();
          (*v277)(v278, v279);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v403 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v403 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v394 = *((v403 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v275 += v276;
          --v273;
        }

        while (v273);
        v272 = v403;
        v280 = v393;
      }

      else
      {
        v280 = v393;
      }

      swift_beginAccess();
      v281 = *(v81 + 16);
      *(v81 + 16) = v272;
      v281, v282, v283, v284, v285, v286, v287, v288;
      v289 = v380;
      sub_1005402B4(v397, v380, _s9UtilitiesO12SortingStyleOMa);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v290 = v377;
        v291 = v375;
        v292 = v378;
        (*(v377 + 32))(v375, v289, v378);
        v293 = *(v81 + 16);

        v294 = sub_1001561A0(v291, v280, v293);
        v293, v295, v296, v297, v298, v299, v300, v301;
        (*(v290 + 8))(v291, v292);
        v302 = *(v81 + 16);
        *(v81 + 16) = v294;
        v302, v303, v304, v305, v306, v307, v308, v309;
      }

      else
      {
        sub_1005401EC(v289, _s9UtilitiesO12SortingStyleOMa);
      }

      v310 = *(v81 + 16);

      v91 = sub_1005364C4(v311, &v406, &v405);
      v387, v312, v313, v314, v315, v316, v317, v318;
      v402, v319, v320, v321, v322, v323, v324, v325;
      v310, v326, v327, v328, v329, v330, v331, v332;
      v401, v333, v334, v335, v336, v337, v338, v339;

      v405, v340, v341, v342, v343, v344, v345, v346;
      v347 = v406;

      v347, v348, v349, v350, v351, v352, v353, v354;
      v407, v355, v356, v357, v358, v359, v360, v361;
      v362 = v408;

      v362, v363, v364, v365, v366, v367, v368, v369;
      return v91;
    }

    sub_1005401EC(v257, _s9UtilitiesO12SortingStyleOMa);
    v271 = v401;
    goto LABEL_51;
  }

  if (v140 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    v388, v141, v142, v143, v144, v145, v146, v147;
    (*(v137 + 96))(v138, v139);
    v403 = *v138;
    v148 = v403;
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    type metadata accessor for UUID();
    sub_10000CB48(&qword_100947CB0, &qword_100944F78, qword_1007AABF0, &protocol conformance descriptor for Set<A>);
    sub_10054026C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v149 = Sequence.mapToSet<A>(_:)();
    v148, v150, v151, v152, v153, v154, v155, v156;
    goto LABEL_34;
  }

  if (v140 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v140 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    v388, v141, v142, v143, v144, v145, v146, v147;
    goto LABEL_33;
  }

LABEL_69:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100537F88(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  __chkstk_darwin(v2, v3);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a1 + 16);
  if (!v83)
  {
    return;
  }

  v8 = 0;
  v76 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v77 = v4;
  v82 = a1 + v76;
  v9 = *(v5 + 72);
  v10 = (v5 + 16);
  v11 = &_swiftEmptyArrayStorage;
  v12 = (v5 + 8);
  v81 = xmmword_1007953F0;
  v90 = v9;
  v88 = (v5 + 16);
  v78 = v7;
  v79 = (v5 + 8);
  while (1)
  {
    v84 = v8;
    v14 = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (v14)
    {
      v15 = v14;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v16 = swift_allocObject();
      *(v16 + 16) = v81;
      *(v16 + 32) = REMRemindersListDataView.ReminderLite.objectID.getter();
      v24 = *(v15 + 16);
      if (v24)
      {
        v85 = v11;
        v86 = v16;
        v89[0] = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v25 = v77;
        v87 = v15;
        v26 = v15 + v76;
        v27 = *v10;
        do
        {
          v27(v7, v26, v25);
          REMRemindersListDataView.ReminderLite.objectID.getter();
          (*v12)(v7, v25);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v10 = v88;
          v28 = v90;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v26 += v28;
          --v24;
        }

        while (v24);
        v87, v29, v30, v31, v32, v33, v34, v35;
        v36 = v89[0];
        v11 = v85;
        v16 = v86;
      }

      else
      {
        v15, v17, v18, v19, v20, v21, v22, v23;
        v36 = &_swiftEmptyArrayStorage;
      }

      v89[0] = v16;
      sub_100271578(v36);
      v38 = v89[0];
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v37 = swift_allocObject();
      *(v37 + 16) = v81;
      v38 = v37;
      *(v37 + 32) = REMRemindersListDataView.ReminderLite.objectID.getter();
    }

    v39 = v38 >> 62;
    v40 = v38 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v11 >> 62;
    v87 = v38;
    if (v11 >> 62)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
      v43 = v74 + v40;
      if (__OFADD__(v74, v40))
      {
LABEL_40:
        __break(1u);
        return;
      }
    }

    else
    {
      v42 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = v42 + v40;
      if (__OFADD__(v42, v40))
      {
        goto LABEL_40;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v86 = v40;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      break;
    }

    if (v41)
    {
      goto LABEL_25;
    }

    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v43 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

    v53 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v39)
    {
      goto LABEL_27;
    }

LABEL_21:
    v55 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v55)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (((v54 >> 1) - v53) < v86)
    {
      goto LABEL_43;
    }

    v85 = v11;
    v58 = v52 + 8 * v53 + 32;
    v80 = v52;
    if (v39)
    {
      v59 = v87;
      if (v55 < 1)
      {
        goto LABEL_45;
      }

      sub_10000CB48(&unk_10093F5D0, &qword_10093A578, &qword_1007A1E10, &protocol conformance descriptor for [A]);
      for (i = 0; i != v55; ++i)
      {
        sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
        v68 = sub_100011090(v89, i, v59);
        v70 = *v69;
        (v68)(v89, 0);
        *(v58 + 8 * i) = v70;
        v59 = v87;
      }
    }

    else
    {
      v59 = v87;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_arrayInitWithCopy();
    }

    v59, v60, v61, v62, v63, v64, v65, v66;
    v11 = v85;
    v13 = v84;
    v10 = v88;
    v7 = v78;
    v12 = v79;
    if (v86 >= 1)
    {
      v71 = *(v80 + 16);
      v72 = __OFADD__(v71, v86);
      v73 = v71 + v86;
      if (v72)
      {
        goto LABEL_44;
      }

      *(v80 + 16) = v73;
    }

LABEL_4:
    v8 = v13 + 1;
    if (v8 == v83)
    {
      return;
    }
  }

  if (!v41)
  {
    goto LABEL_26;
  }

LABEL_25:
  _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v52 = v11 & 0xFFFFFFFFFFFFFF8;
  v53 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v39)
  {
    goto LABEL_21;
  }

LABEL_27:
  v56 = v52;
  v57 = _CocoaArrayWrapper.endIndex.getter();
  v52 = v56;
  v55 = v57;
  if (v57)
  {
    goto LABEL_28;
  }

LABEL_3:
  v87, v45, v46, v47, v48, v49, v50, v51;
  v13 = v84;
  if (v86 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1005384A4@<X0>(void *a1@<X0>, void *a2@<X1>, _TtC7remindd19RDXPCStorePerformer *a3@<X2>, unint64_t a4@<X8>)
{
  v8 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v58 - v10;
  v12 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v66 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v65 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v64 = v58 - v17;
  *&v20 = __chkstk_darwin(v18, v19).n128_u64[0];
  v67 = v58 - v21;
  v22 = [a1 remObjectID];
  if (v22)
  {
    v29 = v22;
    if (a3)
    {
      v63 = (a3 & 0xFFFFFFFFFFFFFF8);
      if (a3 >> 62)
      {
        goto LABEL_33;
      }

      v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v58[0] = v29;
      v58[1] = a2;
      v59 = a1;
      v60 = a4;
      v31 = v66;
      if (v30)
      {
        v29 = v30;
        a4 = 0;
        v68 = a3 & 0xC000000000000001;
        v32 = (v66 + 48);
        v33 = (v66 + 32);
        v34 = &_swiftEmptyArrayStorage;
        v61 = v30;
        v62 = a3;
        a1 = v63;
        while (1)
        {
          if (v68)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            a2 = (a4 + 1);
            if (__OFADD__(a4, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (a4 >= a1[2])
            {
              goto LABEL_32;
            }

            v35 = *&a3->clientIdentity[8 * a4 + 16];
            a2 = (a4 + 1);
            if (__OFADD__(a4, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              v30 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_5;
            }
          }

          sub_1005384A4(v35, 0, 0, v11);
          if ((*v32)(v11, 1, v12))
          {
            sub_1000050A4(v11, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v36 = *v33;
            v37 = v65;
            (*v33)(v65, v11, v12);
            v38 = v64;
            v36(v64, v37, v12);
            v36(v67, v38, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_100365A24(0, *v34->clientIdentity + 1, 1, v34);
            }

            v40 = *v34->clientIdentity;
            v39 = *&v34->clientIdentity[8];
            v41 = v66;
            if (v40 >= v39 >> 1)
            {
              v34 = sub_100365A24((v39 > 1), v40 + 1, 1, v34);
              v41 = v66;
            }

            *v34->clientIdentity = v40 + 1;
            v36(v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40, v67, v12);
            a3 = v62;
            a1 = v63;
            v29 = v61;
          }

          ++a4;
          if (a2 == v29)
          {
            goto LABEL_26;
          }
        }
      }

      v34 = &_swiftEmptyArrayStorage;
LABEL_26:
      a3, v31, v23, v24, v25, v26, v27, v28;
      a1 = v59;
      a4 = v60;
      v29 = v58[0];
    }

    else
    {
      v34 = 0;
    }

    REMObjectID.codable.getter();
    [a1 completed];
    if (v34)
    {
      if (!*v34->clientIdentity)
      {
        v34, v51, v52, v53, v54, v55, v56, v57;
      }
    }

    REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

    return (*(v66 + 56))(a4, 0, 1, v12);
  }

  else
  {

    a3, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v66 + 56);

    return v49(a4, 1, 1, v12);
  }
}

NSString sub_100538914(uint64_t a1, void *a2, void *a3, uint64_t a4, __n128 a5)
{
  v10 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v10, v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v88 = a4;
  sub_1005402B4(a4, a1, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v15 = sub_100717244(a3, 0, a2, qword_1009752F0, v14);
  if (v5)
  {
    swift_getErrorValue();
    v16 = Error.isREMError(withErrorCode:)();
    *&v87 = a2;
    if (v16)
    {
      if (qword_1009363F0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094BDF0);
      v18 = a3;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v86 = v10;
        v22 = v21;
        v23 = swift_slowAlloc();
        v85 = a1;
        v24 = v23;
        aBlock[0] = v23;
        *v22 = 136446210;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        v28 = sub_10000668C(v25, v26, aBlock);
        v27, v29, v30, v31, v32, v33, v34, v35;
        *(v22 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "REMCDSmartList for pre-defined smart list type not found {pre-defined smart list type: %{public}s}", v22, 0xCu);
        sub_10000607C(v24);
        a1 = v85;

        v10 = v86;
      }
    }

    else
    {
      if (qword_1009363F0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094BDF0);
      v38 = a3;
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v86 = v10;
        v42 = v41;
        v43 = swift_slowAlloc();
        v85 = a1;
        aBlock[0] = v43;
        *v42 = 136446466;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;
        v47 = sub_10000668C(v44, v45, aBlock);
        v46, v48, v49, v50, v51, v52, v53, v54;
        *(v42 + 4) = v47;
        *(v42 + 12) = 2082;
        swift_getErrorValue();
        v55 = Error.rem_errorDescription.getter();
        v57 = v56;
        v58 = sub_10000668C(v55, v56, aBlock);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v42 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to fetch REMCDSmartList for pre-defined smart list type {smart list type: %{public}s, error: %{public}s}", v42, 0x16u);
        swift_arrayDestroy();
        a1 = v85;

        v10 = v86;
      }
    }

    v36 = 0;
    a2 = v87;
  }

  else
  {
    v36 = v15;
  }

  if ((REMSmartListType.hasPredefinedManualOrderingObjectID.getter() & 1) == 0)
  {
    return v36;
  }

  sub_1005402B4(v88, v13, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1005401EC(v13, _s9UtilitiesO12SortingStyleOMa);
  if (EnumCaseMultiPayload != 5)
  {
    return v36;
  }

  v86 = v10;
  v67 = sub_10003A1B8();
  if (!v67)
  {
    sub_1005401EC(a1, _s9UtilitiesO12SortingStyleOMa);
    v82 = 0;
    v84 = 0uLL;
    v83 = 0uLL;
    goto LABEL_23;
  }

  v68 = v67;
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = a2;
  v72 = v71;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v73 = swift_allocObject();
  *(v73 + 16) = 1;
  *(v73 + 24) = v69;
  *(v73 + 32) = v72;
  *(v73 + 40) = v68;
  *(v73 + 48) = v70;
  *(v73 + 56) = &v90;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_10026A4B4;
  *(v74 + 24) = v73;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v74;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F6508;
  v75 = _Block_copy(aBlock);
  v76 = v68;
  v77 = v70;
  v78 = a1;
  v79 = v77;

  v80 = v79;
  a1 = v78;
  [v80 performBlockAndWait:v75];
  _Block_release(v75);

  sub_1005401EC(v78, _s9UtilitiesO12SortingStyleOMa);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

  if ((v75 & 1) == 0)
  {
    v88 = v90;
    v87 = v91;
    v82 = v92;

    v83 = v87;
    v84 = v88;
LABEL_23:
    *a1 = v84;
    *(a1 + 16) = v83;
    *(a1 + 32) = v82;
    *(a1 + 40) = 0;
    swift_storeEnumTagMultiPayload();
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_100538FA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BDF0);
  v1 = sub_100006654(v0, qword_10094BDF0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10053906C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_100974F68 = v0;
  return result;
}

uint64_t sub_1005390E0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_100974F70 = v0;
  return result;
}

uint64_t sub_100539164@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(v3, v8, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = type metadata accessor for REMRemindersListDataView.SortingDirection();
      (*(*(v13 - 8) + 32))(a1, v8, v13);
      v11 = &enum case for REMRemindersListDataView.SortingStyle.title(_:);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1005401EC(v8, _s9UtilitiesO12SortingStyleOMa);
      }

      v11 = &enum case for REMRemindersListDataView.SortingStyle.manual(_:);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = type metadata accessor for REMRemindersListDataView.SortingDirection();
      (*(*(v10 - 8) + 32))(a1, v8, v10);
      v11 = &enum case for REMRemindersListDataView.SortingStyle.priority(_:);
    }

    else
    {
      v14 = type metadata accessor for REMRemindersListDataView.SortingDirection();
      (*(*(v14 - 8) + 32))(a1, v8, v14);
      v11 = &enum case for REMRemindersListDataView.SortingStyle.creationDate(_:);
    }
  }

  else
  {
    v12 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v12 - 8) + 32))(a1, v8, v12);
    v11 = &enum case for REMRemindersListDataView.SortingStyle.displayDate(_:);
  }

  v15 = *v11;
  v16 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_1005393B4(uint64_t a1, __n128 a2)
{
  v4 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v4, v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(v2, v7, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1005401EC(v7, _s9UtilitiesO12SortingStyleOMa);
    return 0;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return 0;
  }

  v12 = *(v7 + 5);
  sub_100524898(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), v9, v10, v11);
  if (!v12)
  {
    result = sub_10053C9CC();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007953F0;
  *(v13 + 32) = v12;
  v14 = v12;
  v15 = sub_10000F8A4(v13, 0, 6u);
  v13, v16, v17, v18, v19, v20, v21, v22;
  if (qword_1009363E0 != -1)
  {
    swift_once();
  }

  v23 = qword_100974F38;
  v24 = sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v25 = [objc_allocWithZone(NSFetchRequest) init];
  v26 = [swift_getObjCClassFromMetadata() entity];
  [v25 setEntity:v26];

  [v25 setAffectedStores:0];
  [v25 setPredicate:v15];
  v94 = _swiftEmptySetSingleton;

  sub_100010864(v27);
  v23, v28, v29, v30, v31, v32, v33, v34;
  v35 = v94;
  v36 = sub_1002137C0(v94);
  v35, v37, v38, v39, v40, v41, v42, v43;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v36, v45, v46, v47, v48, v49, v50, v51;
  [v25 setPropertiesToFetch:isa];

  v52 = NSManagedObjectContext.fetch<A>(_:)();
  if (!(v52 >> 62))
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_27:
    v85 = v52;

    v85, v86, v87, v88, v89, v90, v91, v92;
    return 0;
  }

  v83 = v52;
  v84 = _CocoaArrayWrapper.endIndex.getter();
  v52 = v83;
  if (!v84)
  {
    goto LABEL_27;
  }

LABEL_15:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v64 = v52;
    v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v64 = v52;
    v65 = *(v52 + 32);
  }

  v15 = v65;
  v64, v66, v67, v68, v69, v70, v71, v72;
  v73 = [v15 remObjectID];
  if (!v73 || (v74 = v73, sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), v14 = v14, v75 = static NSObject.== infix(_:_:)(), v14, v74, (v75 & 1) == 0))
  {

    return 0;
  }

  sub_1006B038C();
  v14 = v76;
  v77 = type metadata accessor for RDManualSortIDCache();
  v24 = v77;
  if (qword_100936508 != -1)
  {
LABEL_30:
    v77 = swift_once();
  }

  v79 = qword_10094C220;
  __chkstk_darwin(v77, v78);
  *(&v93 - 4) = v24;
  *(&v93 - 3) = v14;
  *(&v93 - 2) = v79;
  OS_dispatch_queue.sync<A>(execute:)();
  v80 = v94;
  type metadata accessor for RDManualSortIDAdapter();
  swift_allocObject();
  v81 = sub_100214ECC(v80, v14, 0);

  result = v81;
LABEL_12:
  v94 = 0;
  __chkstk_darwin(result, v54);
  v56 = v55;
  *(&v93 - 4) = v55;
  *(&v93 - 3) = a1;
  *(&v93 - 2) = &v94;
  NSManagedObjectContext.performAndWait<A>(_:)();
  v82 = v94;
  if (!v94)
  {
    v82 = sub_10038DB14(&_swiftEmptyArrayStorage);
  }

  v82, v57, v58, v59, v60, v61, v62, v63;

  return v56;
}