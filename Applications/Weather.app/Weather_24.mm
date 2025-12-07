uint64_t sub_100290980@<X0>(uint64_t a1@<X1>, void (*a2)(char *, char *, uint64_t)@<X3>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v96 = a3;
  v97 = a1;
  v94 = a2;
  v100 = a4;
  v4 = type metadata accessor for URL();
  v93 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v89 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v89 - v13;
  v14 = type metadata accessor for Location();
  v98 = *(v14 - 8);
  v99 = v14;
  __chkstk_darwin(v14);
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetailCondition();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v89 - v21;
  v23 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v23);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = type metadata accessor for WeatherMapOverlayKind();
      (*(*(v38 - 8) + 8))(v25, v38);
      goto LABEL_18;
    case 2u:
      v39 = v25[*(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48)];
      v40 = v17;
      v41 = *(v17 + 32);
      v41(v22, v25, v16);
      v42 = v39 == 1;
      v43 = v94;
      if (v42)
      {
        v44 = type metadata accessor for Date();
        if (sub_100024D10(v43, 1, v44) == 1)
        {
          (*(v40 + 8))(v22, v16);
          goto LABEL_18;
        }
      }

      (*(v40 + 16))(v19, v22, v16);
      (*(v98 + 16))(v95, v97, v99);
      sub_100095588();
      v74 = type metadata accessor for Date();
      if (sub_100024D10(v11, 1, v74) == 1)
      {
        (*(v40 + 8))(v22, v16);
        sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
        v75 = 1;
        v76 = v96;
        v77 = v92;
      }

      else
      {
        v94 = v41;
        v80 = v89;
        Location.timeZone.getter();
        v81 = v40;
        v77 = v92;
        Date.startOfDay(timeZone:)();
        v82 = v80;
        v41 = v94;
        (*(v90 + 8))(v82, v91);
        (*(v81 + 8))(v22, v16);
        (*(*(v74 - 8) + 8))(v11, v74);
        v75 = 0;
        v76 = v96;
      }

      sub_10001B350(v77, v75, 1, v74);
      v83 = type metadata accessor for ConditionDetailViewState(0);
      v84 = v83[8];
      v85 = type metadata accessor for DetailChartSelection(0);
      v86 = v100;
      sub_10001B350(v100 + v84, 1, 1, v85);
      v41(v86, v19, v16);
      (*(v98 + 32))(v86 + v83[5], v95, v99);
      sub_100051BBC();
      v87 = v86 + v83[7];
      v88 = v76[1];
      *v87 = *v76;
      *(v87 + 16) = v88;
      *(v87 + 32) = *(v76 + 32);
      *(v86 + v83[9]) = 0;
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v31 = v86;
      goto LABEL_21;
    case 3u:
      v32 = *v25;
      v33 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v34 = type metadata accessor for AirQualityDetailViewState(0);
      *(v33 + *(v34 + 20)) = v32;
      v35 = v33 + *(v34 + 24);
      v36 = v96;
      v37 = v96[1];
      *v35 = *v96;
      *(v35 + 16) = v37;
      *(v35 + 32) = *(v36 + 32);
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      goto LABEL_13;
    case 4u:
      v49 = *v25;
      v50 = *(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48);
      v51 = v98;
      v53 = v99;
      v52 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v54 = type metadata accessor for AveragesDetailViewState(0);
      v55 = v54[6];
      v56 = type metadata accessor for DetailHeroChartLollipopPosition(0);
      sub_10001B350(v52 + v55, 1, 1, v56);
      *(v52 + v54[5]) = v49;
      v57 = v52 + v54[7];
      v58 = v96;
      v59 = v96[1];
      *v57 = *v96;
      *(v57 + 16) = v59;
      *(v57 + 32) = *(v58 + 32);
      v60 = type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v52, 0, 1, v60);
      return (*(v51 + 8))(&v25[v50], v53);
    case 5u:
      v33 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v62 = v33 + *(type metadata accessor for NextHourPrecipitationDetailViewState(0) + 20);
      v63 = v96;
      v64 = v96[1];
      *v62 = *v96;
      *(v62 + 16) = v64;
      *(v62 + 32) = *(v63 + 32);
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      goto LABEL_13;
    case 6u:
      goto LABEL_18;
    case 7u:
      v33 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v45 = type metadata accessor for SunriseSunsetDetailViewState(0);
      v46 = v33 + *(v45 + 20);
      v47 = v96;
      v48 = v96[1];
      *v46 = *v96;
      *(v46 + 16) = v48;
      *(v46 + 32) = *(v47 + 32);
      *(v33 + *(v45 + 24)) = 0;
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      v31 = v33;
      goto LABEL_21;
    case 8u:
      v65 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v66 = type metadata accessor for MoonDetailViewState(0);
      v67 = v66[5];
      v68 = type metadata accessor for MoonDetailSelectedDate(0);
      sub_10001B350(v65 + v67, 1, 1, v68);
      v69 = v66[6];
      v70 = type metadata accessor for Date();
      sub_10001B350(v65 + v69, 1, 1, v70);
      v71 = v65 + v66[7];
      v72 = v96;
      v73 = v96[1];
      *v71 = *v96;
      *(v71 + 16) = v73;
      *(v71 + 32) = *(v72 + 32);
      *(v65 + v66[8]) = 2;
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v31 = v65;
      goto LABEL_21;
    default:
      v26 = v25[*(sub_10022C350(&qword_100CA6680, &qword_100A3DB20) + 48)];
      v27 = v93;
      v28 = *(v93 + 32);
      v28(v6, v25, v4);
      if (v26 == 1)
      {
        v29 = v100;
        v28(v100, v6, v4);
        v30 = type metadata accessor for LocationPreviewModalViewState(0);
        swift_storeEnumTagMultiPayload();
        v31 = v29;
LABEL_21:
        v79 = 0;
        v78 = v30;
      }

      else
      {
        (*(v27 + 8))(v6, v4);
LABEL_18:
        v78 = type metadata accessor for LocationPreviewModalViewState(0);
        v31 = v100;
        v79 = 1;
      }

      return sub_10001B350(v31, v79, 1, v78);
  }
}

uint64_t sub_100291354(uint64_t a1)
{
  v2 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100021CEC();
  return String.init<A>(describing:)();
}

uint64_t sub_100291410()
{
  type metadata accessor for Location();
  sub_10029C394(&qword_100CA6678, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10029147C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, _OWORD *a5)
{
  v1072 = a5;
  v1022 = a4;
  v1076 = a3;
  v1074 = a2;
  v1079 = a1;
  v940 = type metadata accessor for URL();
  v938 = *(v940 - 8);
  __chkstk_darwin(v940);
  v939 = &v846 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1046 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v1046);
  v1051 = &v846 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  __chkstk_darwin(v7 - 8);
  v957 = &v846 - v8;
  v1048 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v1048);
  v962 = &v846 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v1044 = &v846 - v11;
  v1057 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v1057);
  v961 = &v846 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v1043 = &v846 - v14;
  v15 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v15 - 8);
  v960 = &v846 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v1068 = &v846 - v18;
  v19 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v19 - 8);
  v959 = &v846 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v1067 = &v846 - v22;
  v23 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v23 - 8);
  v858 = &v846 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v1047 = &v846 - v26;
  __chkstk_darwin(v27);
  v1066 = &v846 - v28;
  v29 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v29 - 8);
  v956 = &v846 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v1065 = &v846 - v32;
  v33 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v33 - 8);
  v846 = &v846 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  __chkstk_darwin(v35 - 8);
  v953 = &v846 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v954 = &v846 - v38;
  __chkstk_darwin(v39);
  v932 = &v846 - v40;
  __chkstk_darwin(v41);
  v1069 = &v846 - v42;
  v43 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  __chkstk_darwin(v43 - 8);
  v931 = &v846 - v44;
  v1084 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v1084);
  v947 = &v846 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  *(&v856 + 1) = &v846 - v47;
  __chkstk_darwin(v48);
  v1056 = &v846 - v49;
  __chkstk_darwin(v50);
  v1070 = (&v846 - v51);
  __chkstk_darwin(v52);
  v948 = &v846 - v53;
  __chkstk_darwin(v54);
  v946 = &v846 - v55;
  __chkstk_darwin(v56);
  v945 = &v846 - v57;
  __chkstk_darwin(v58);
  v1041 = &v846 - v59;
  __chkstk_darwin(v60);
  v1040 = &v846 - v61;
  v1078 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v1078);
  v1039 = &v846 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v944 = &v846 - v64;
  __chkstk_darwin(v65);
  v1055 = &v846 - v66;
  __chkstk_darwin(v67);
  v1042 = &v846 - v68;
  __chkstk_darwin(v69);
  v1038 = &v846 - v70;
  __chkstk_darwin(v71);
  v1037 = &v846 - v72;
  __chkstk_darwin(v73);
  v1035 = &v846 - v74;
  __chkstk_darwin(v75);
  v1034 = &v846 - v76;
  v1077 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v1077);
  v1033 = &v846 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v942 = &v846 - v79;
  __chkstk_darwin(v80);
  v1054 = &v846 - v81;
  __chkstk_darwin(v82);
  v1036 = &v846 - v83;
  __chkstk_darwin(v84);
  v1032 = &v846 - v85;
  __chkstk_darwin(v86);
  v1031 = &v846 - v87;
  __chkstk_darwin(v88);
  v1029 = &v846 - v89;
  __chkstk_darwin(v90);
  v1028 = &v846 - v91;
  v1080 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v1080);
  v1027 = &v846 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v93);
  v941 = &v846 - v94;
  __chkstk_darwin(v95);
  v1053 = &v846 - v96;
  __chkstk_darwin(v97);
  v1030 = &v846 - v98;
  __chkstk_darwin(v99);
  v1026 = &v846 - v100;
  __chkstk_darwin(v101);
  v1025 = &v846 - v102;
  __chkstk_darwin(v103);
  v1023 = &v846 - v104;
  __chkstk_darwin(v105);
  v1021 = &v846 - v106;
  v1081 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v1081);
  v1020 = &v846 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v108);
  v937 = &v846 - v109;
  __chkstk_darwin(v110);
  v1052 = &v846 - v111;
  __chkstk_darwin(v112);
  v1024 = &v846 - v113;
  __chkstk_darwin(v114);
  v1019 = &v846 - v115;
  __chkstk_darwin(v116);
  v1018 = &v846 - v117;
  __chkstk_darwin(v118);
  v1016 = &v846 - v119;
  __chkstk_darwin(v120);
  v1015 = &v846 - v121;
  v1082 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v1082);
  v1014 = &v846 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v123);
  v935 = &v846 - v124;
  __chkstk_darwin(v125);
  v1050 = &v846 - v126;
  __chkstk_darwin(v127);
  v1017 = &v846 - v128;
  __chkstk_darwin(v129);
  v1013 = &v846 - v130;
  __chkstk_darwin(v131);
  v1012 = &v846 - v132;
  __chkstk_darwin(v133);
  v1010 = &v846 - v134;
  __chkstk_darwin(v135);
  v1009 = &v846 - v136;
  v1083 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v1083);
  v1008 = &v846 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v138);
  v934 = &v846 - v139;
  __chkstk_darwin(v140);
  v1049 = &v846 - v141;
  __chkstk_darwin(v142);
  v1011 = &v846 - v143;
  __chkstk_darwin(v144);
  v1007 = &v846 - v145;
  __chkstk_darwin(v146);
  v1006 = &v846 - v147;
  __chkstk_darwin(v148);
  v1005 = &v846 - v149;
  __chkstk_darwin(v150);
  v1004 = &v846 - v151;
  v1075 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v1075);
  v918 = &v846 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v153);
  v1002 = &v846 - v154;
  __chkstk_darwin(v155);
  v855 = &v846 - v156;
  __chkstk_darwin(v157);
  v929 = &v846 - v158;
  __chkstk_darwin(v159);
  v952 = &v846 - v160;
  __chkstk_darwin(v161);
  v958 = &v846 - v162;
  __chkstk_darwin(v163);
  v933 = &v846 - v164;
  __chkstk_darwin(v165);
  v919 = &v846 - v166;
  __chkstk_darwin(v167);
  v1003 = &v846 - v168;
  __chkstk_darwin(v169);
  v910 = &v846 - v170;
  __chkstk_darwin(v171);
  v915 = &v846 - v172;
  __chkstk_darwin(v173);
  v928 = &v846 - v174;
  __chkstk_darwin(v175);
  v914 = &v846 - v176;
  __chkstk_darwin(v177);
  v1001 = &v846 - v178;
  __chkstk_darwin(v179);
  v911 = &v846 - v180;
  __chkstk_darwin(v181);
  v1000 = &v846 - v182;
  __chkstk_darwin(v183);
  v1073 = &v846 - v184;
  __chkstk_darwin(v185);
  v908 = &v846 - v186;
  __chkstk_darwin(v187);
  v999 = &v846 - v188;
  v189 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v189 - 8);
  v904 = &v846 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v191);
  v903 = (&v846 - v192);
  __chkstk_darwin(v193);
  v853 = &v846 - v194;
  __chkstk_darwin(v195);
  v852 = &v846 - v196;
  __chkstk_darwin(v197);
  v950 = &v846 - v198;
  __chkstk_darwin(v199);
  v1045 = &v846 - v200;
  __chkstk_darwin(v201);
  v906 = &v846 - v202;
  __chkstk_darwin(v203);
  v857 = &v846 - v204;
  __chkstk_darwin(v205);
  v902 = &v846 - v206;
  __chkstk_darwin(v207);
  v898 = &v846 - v208;
  __chkstk_darwin(v209);
  v901 = &v846 - v210;
  __chkstk_darwin(v211);
  v897 = &v846 - v212;
  __chkstk_darwin(v213);
  v896 = &v846 - v214;
  __chkstk_darwin(v215);
  v892 = &v846 - v216;
  __chkstk_darwin(v217);
  v895 = &v846 - v218;
  __chkstk_darwin(v219);
  v891 = &v846 - v220;
  v221 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v221 - 8);
  v925 = &v846 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v223);
  v997 = &v846 - v224;
  __chkstk_darwin(v225);
  *&v856 = &v846 - v226;
  __chkstk_darwin(v227);
  v922 = &v846 - v228;
  __chkstk_darwin(v229);
  v955 = &v846 - v230;
  __chkstk_darwin(v231);
  v1064 = (&v846 - v232);
  __chkstk_darwin(v233);
  v926 = &v846 - v234;
  __chkstk_darwin(v235);
  v998 = &v846 - v236;
  __chkstk_darwin(v237);
  v924 = &v846 - v238;
  __chkstk_darwin(v239);
  v996 = &v846 - v240;
  __chkstk_darwin(v241);
  v923 = &v846 - v242;
  __chkstk_darwin(v243);
  v995 = &v846 - v244;
  __chkstk_darwin(v245);
  v921 = &v846 - v246;
  __chkstk_darwin(v247);
  v994 = &v846 - v248;
  __chkstk_darwin(v249);
  v920 = &v846 - v250;
  __chkstk_darwin(v251);
  v993 = &v846 - v252;
  v253 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v253 - 8);
  v916 = &v846 - ((v254 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v255);
  v991 = &v846 - v256;
  __chkstk_darwin(v257);
  v854 = &v846 - v258;
  __chkstk_darwin(v259);
  v909 = &v846 - v260;
  __chkstk_darwin(v261);
  v951 = &v846 - v262;
  __chkstk_darwin(v263);
  v1063 = &v846 - v264;
  __chkstk_darwin(v265);
  v917 = &v846 - v266;
  __chkstk_darwin(v267);
  v992 = &v846 - v268;
  __chkstk_darwin(v269);
  v913 = &v846 - v270;
  __chkstk_darwin(v271);
  v990 = &v846 - v272;
  __chkstk_darwin(v273);
  v912 = &v846 - v274;
  __chkstk_darwin(v275);
  v989 = &v846 - v276;
  __chkstk_darwin(v277);
  v907 = &v846 - v278;
  __chkstk_darwin(v279);
  v988 = &v846 - v280;
  __chkstk_darwin(v281);
  v905 = &v846 - v282;
  __chkstk_darwin(v283);
  v987 = &v846 - v284;
  v285 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v285 - 8);
  v899 = &v846 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v287);
  v985 = &v846 - v288;
  __chkstk_darwin(v289);
  v851 = &v846 - v290;
  __chkstk_darwin(v291);
  v890 = &v846 - v292;
  __chkstk_darwin(v293);
  v949 = &v846 - v294;
  __chkstk_darwin(v295);
  v1062 = &v846 - v296;
  __chkstk_darwin(v297);
  v900 = &v846 - v298;
  __chkstk_darwin(v299);
  v986 = &v846 - v300;
  __chkstk_darwin(v301);
  v894 = &v846 - v302;
  __chkstk_darwin(v303);
  v984 = &v846 - v304;
  __chkstk_darwin(v305);
  v893 = &v846 - v306;
  __chkstk_darwin(v307);
  v983 = &v846 - v308;
  __chkstk_darwin(v309);
  v889 = &v846 - v310;
  __chkstk_darwin(v311);
  v982 = &v846 - v312;
  __chkstk_darwin(v313);
  v888 = &v846 - v314;
  __chkstk_darwin(v315);
  v981 = &v846 - v316;
  v317 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v317 - 8);
  v886 = &v846 - ((v318 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v319);
  v979 = &v846 - v320;
  __chkstk_darwin(v321);
  v850 = &v846 - v322;
  __chkstk_darwin(v323);
  v883 = &v846 - v324;
  __chkstk_darwin(v325);
  v943 = &v846 - v326;
  __chkstk_darwin(v327);
  v1061 = &v846 - v328;
  __chkstk_darwin(v329);
  v887 = &v846 - v330;
  __chkstk_darwin(v331);
  v980 = &v846 - v332;
  __chkstk_darwin(v333);
  v885 = &v846 - v334;
  __chkstk_darwin(v335);
  v978 = &v846 - v336;
  __chkstk_darwin(v337);
  v884 = &v846 - v338;
  __chkstk_darwin(v339);
  v977 = &v846 - v340;
  __chkstk_darwin(v341);
  v882 = &v846 - v342;
  __chkstk_darwin(v343);
  v976 = &v846 - v344;
  __chkstk_darwin(v345);
  v881 = &v846 - v346;
  __chkstk_darwin(v347);
  v975 = &v846 - v348;
  v349 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v349 - 8);
  v879 = &v846 - ((v350 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v351);
  v973 = &v846 - v352;
  __chkstk_darwin(v353);
  v849 = &v846 - v354;
  __chkstk_darwin(v355);
  v876 = &v846 - v356;
  __chkstk_darwin(v357);
  v936 = &v846 - v358;
  __chkstk_darwin(v359);
  v1060 = &v846 - v360;
  __chkstk_darwin(v361);
  v880 = &v846 - v362;
  __chkstk_darwin(v363);
  v974 = &v846 - v364;
  __chkstk_darwin(v365);
  v878 = &v846 - v366;
  __chkstk_darwin(v367);
  v972 = &v846 - v368;
  __chkstk_darwin(v369);
  v877 = &v846 - v370;
  __chkstk_darwin(v371);
  v971 = &v846 - v372;
  __chkstk_darwin(v373);
  v875 = &v846 - v374;
  __chkstk_darwin(v375);
  v970 = &v846 - v376;
  __chkstk_darwin(v377);
  v874 = &v846 - v378;
  __chkstk_darwin(v379);
  v969 = &v846 - v380;
  v381 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v381 - 8);
  v872 = &v846 - ((v382 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v383);
  v868 = &v846 - v384;
  __chkstk_darwin(v385);
  v848 = &v846 - v386;
  __chkstk_darwin(v387);
  v867 = &v846 - v388;
  __chkstk_darwin(v389);
  v930 = &v846 - v390;
  __chkstk_darwin(v391);
  v1059 = &v846 - v392;
  __chkstk_darwin(v393);
  v873 = &v846 - v394;
  __chkstk_darwin(v395);
  v869 = &v846 - v396;
  __chkstk_darwin(v397);
  v871 = &v846 - v398;
  __chkstk_darwin(v399);
  v968 = &v846 - v400;
  __chkstk_darwin(v401);
  v870 = &v846 - v402;
  __chkstk_darwin(v403);
  v967 = &v846 - v404;
  __chkstk_darwin(v405);
  v963 = &v846 - v406;
  __chkstk_darwin(v407);
  v966 = &v846 - v408;
  __chkstk_darwin(v409);
  v866 = &v846 - v410;
  __chkstk_darwin(v411);
  v865 = &v846 - v412;
  v413 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v413 - 8);
  v863 = &v846 - ((v414 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v415);
  v860 = &v846 - v416;
  __chkstk_darwin(v417);
  v847 = &v846 - v418;
  __chkstk_darwin(v419);
  v859 = &v846 - v420;
  __chkstk_darwin(v421);
  v927 = &v846 - v422;
  __chkstk_darwin(v423);
  v1058 = &v846 - v424;
  __chkstk_darwin(v425);
  v864 = &v846 - v426;
  __chkstk_darwin(v427);
  v965 = &v846 - v428;
  __chkstk_darwin(v429);
  v862 = &v846 - v430;
  __chkstk_darwin(v431);
  v964 = &v846 - v432;
  __chkstk_darwin(v433);
  v861 = &v846 - v434;
  __chkstk_darwin(v435);
  v437 = &v846 - v436;
  __chkstk_darwin(v438);
  v440 = &v846 - v439;
  __chkstk_darwin(v441);
  v443 = &v846 - v442;
  __chkstk_darwin(v444);
  v446 = &v846 - v445;
  __chkstk_darwin(v447);
  v449 = &v846 - v448;
  v450 = type metadata accessor for DetailCondition();
  v451 = *(v450 - 8);
  __chkstk_darwin(v450);
  v453 = &v846 - ((v452 + 15) & 0xFFFFFFFFFFFFFFF0);
  v454 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v454);
  v456 = &v846 - ((v455 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C70();
  v1076 = v456;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v510 = type metadata accessor for WeatherMapOverlayKind();
      v1041 = *(v510 - 1);
      (*(v1041 + 8))(v1076, v510);
      v511 = v1069;
      v1072 = v510;
      sub_10001B350(v1069, 1, 1, v510);
      sub_10001B350(v965, 1, 1, v1083);
      v512 = v1082;
      sub_10001B350(v869, 1, 1, v1082);
      v513 = v1081;
      sub_10001B350(v974, 1, 1, v1081);
      v514 = v1080;
      sub_10001B350(v980, 1, 1, v1080);
      v515 = v1077;
      sub_10001B350(v986, 1, 1, v1077);
      v516 = v1078;
      sub_10001B350(v992, 1, 1, v1078);
      sub_10001B350(v998, 1, 1, v1084);
      v517 = v932;
      v518 = v1079;
      sub_10029BE04(v1079, v1074, v1071, v932);
      sub_10029C3EC(v517, v511);
      v519 = v910;
      sub_1000A3C70();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100154038(v519, type metadata accessor for ModalViewState);
        v520 = 1;
        v521 = v857;
      }

      else
      {
        sub_1000D37D4();
        v521 = v857;
        sub_1000D37D4();
        v520 = 0;
      }

      v709 = type metadata accessor for ModalViewState.MapViewModal(0);
      sub_10001B350(v521, v520, 1, v709);
      v710 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v521, 0, 1, v710);
      v711 = v919;
      sub_1000A3C70();
      v712 = v906;
      sub_100051BBC();
      if (sub_100024D10(v712, 1, v710) == 1)
      {
        sub_1000180EC(v712, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100154038(v711, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v713 = v1083;
      sub_1000D37D4();
      v714 = *(v518 + 16);
      LODWORD(v1071) = *(v518 + 24);
      v715 = v864;
      sub_100051BBC();
      v716 = sub_100024D10(v715, 1, v713);
      v1074 = v714;
      if (v716 == 1)
      {
        sub_1000A3C70();
        v717 = sub_100024D10(v715, 1, v713);

        v493 = v717 == 1;
        v512 = v1082;
        v718 = v926;
        v719 = v880;
        if (!v493)
        {
          sub_1000180EC(v715, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D37D4();

        v718 = v926;
        v719 = v880;
      }

      v720 = v873;
      sub_100051BBC();
      if (sub_100024D10(v720, 1, v512) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v721 = sub_100024D10(v720, 1, v1082);
        v722 = v917;
        if (v721 != 1)
        {
          sub_1000180EC(v720, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D37D4();
        v722 = v917;
      }

      sub_100051BBC();
      if (sub_100024D10(v719, 1, v513) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v719, 1, v513) != 1)
        {
          sub_1000180EC(v719, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v723 = v887;
      sub_100051BBC();
      if (sub_100024D10(v723, 1, v514) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v723, 1, v514) != 1)
        {
          sub_1000180EC(v723, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v724 = v900;
      sub_100051BBC();
      if (sub_100024D10(v724, 1, v515) == 1)
      {
        sub_1000A3C70();
        v725 = sub_100024D10(v724, 1, v515);
        v726 = v948;
        if (v725 != 1)
        {
          sub_1000180EC(v724, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D37D4();
        v726 = v948;
      }

      sub_100051BBC();
      if (sub_100024D10(v722, 1, v516) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v722, 1, v516) != 1)
        {
          sub_1000180EC(v722, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v727 = v1084;
      if (sub_100024D10(v718, 1, v1084) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v718, 1, v727) != 1)
        {
          sub_1000180EC(v718, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v728 = v933;
      sub_1000D37D4();
      v730 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v729 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v731 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v732 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v733 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v735 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v734 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v736 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v1076 = type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v733;
      sub_10003E038(v1074, v1071, v1011, v1017, v1024, v1030, v1036, v1042, v726, v728, v730, v729, v731, v732, v844, v735, v734, v736, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      v738 = v737;
      sub_10001B350(v1058, 1, 1, v1083);
      sub_10001B350(v1059, 1, 1, v1082);
      sub_10001B350(v1060, 1, 1, v1081);
      sub_10001B350(v1061, 1, 1, v1080);
      sub_10001B350(v1062, 1, 1, v1077);
      sub_10001B350(v1063, 1, 1, v1078);
      v1079 = v738;
      v739 = v738 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_1000A3C70();
      sub_10001B350(v1065, 1, 1, v1046);
      v1074 = type metadata accessor for SearchViewState(0);
      sub_10001B350(v1066, 1, 1, v1074);
      sub_10001B350(v1067, 1, 1, v1048);
      v740 = v1084;
      sub_1000A3C70();
      if (*(v739 + *(v740 + 36) + 8) == 2)
      {
        v741 = 5;
      }

      else
      {
        v741 = 1;
      }

      LODWORD(v1071) = v741;
      sub_1000A3C70();
      v742 = v953;
      sub_100095588();
      v743 = v1072;
      v744 = sub_100024D10(v742, 1, v1072);
      v1042 = v739;
      if (v744 == 1)
      {
        v745 = v739 + *(v740 + 40) + *(v1057 + 24);
        v746 = v954;
        (*(v1041 + 16))(v954, v745, v743);
        v747 = sub_100024D10(v742, 1, v743);

        if (v747 != 1)
        {
          sub_1000180EC(v742, &qword_100CA5CF8, &unk_100A302F0);
        }
      }

      else
      {
        v746 = v954;
        (*(v1041 + 32))(v954, v742, v743);
      }

      sub_10001B350(v746, 0, 1, v743);
      v748 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
      v749 = v746;
      v750 = v957;
      sub_10001B350(v957, 1, 3, v748);
      v751 = type metadata accessor for WeatherMapTrackingState(0);
      sub_10001B350(v750, 0, 1, v751);
      v752 = v1068;
      v753 = v1044;
      v754 = v1043;
      sub_1000B0430(v1071, v1044, v749, v750, v1068);
      sub_1000180EC(v750, &qword_100CA6698, &unk_100A314B0);
      sub_1000180EC(v749, &qword_100CA5CF8, &unk_100A302F0);
      sub_100154038(v753, type metadata accessor for DisplayMetrics);
      sub_100154038(v754, type metadata accessor for WeatherMapPresentationState);
      sub_10001B350(v752, 0, 1, v1057);
      v755 = v1070;
      v756 = *v1070;
      v757 = v956;
      sub_100095588();
      v758 = v1046;
      v759 = sub_100024D10(v757, 1, v1046);
      v760 = v1048;
      if (v759 == 1)
      {
        v761 = v1084;
        sub_1000A3C70();
        v762 = sub_100024D10(v757, 1, v758);

        if (v762 != 1)
        {
          sub_1000180EC(v757, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000D37D4();

        v761 = v1084;
      }

      v763 = *(v755 + v761[6]);
      v764 = [objc_opt_self() currentDevice];
      v765 = [v764 userInterfaceIdiom];

      if (v765 && *(v755 + v761[9] + 8) == 2)
      {
        v766 = 1;
      }

      else
      {
        v766 = *(v755 + v761[7]);
      }

      v767 = v858;
      sub_100095588();
      v768 = v1074;
      v769 = sub_100024D10(v767, 1, v1074);
      v770 = v1057;
      if (v769 == 1)
      {
        sub_100095588();
        v771 = sub_100024D10(v767, 1, v768);
        v772 = v959;
        if (v771 != 1)
        {
          sub_1000180EC(v767, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        v773 = v1047;
        sub_1000D37D4();
        sub_10001B350(v773, 0, 1, v768);
        v772 = v959;
      }

      sub_100095588();
      if (sub_100024D10(v772, 1, v760) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v772, 1, v760) != 1)
        {
          sub_1000180EC(v772, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v774 = v960;
      sub_100095588();
      if (sub_100024D10(v774, 1, v770) == 1)
      {
        v775 = v1070;
        sub_1000A3C70();
        if (sub_100024D10(v774, 1, v770) != 1)
        {
          sub_1000180EC(v774, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_1000D37D4();
        v775 = v1070;
      }

      v776 = *(v775 + v761[11]);
      v777 = v1064;
      *v1064 = v756;
      sub_1000D37D4();
      *(v777 + v761[6]) = v763;
      *(v777 + v761[7]) = v766;
      sub_100051BBC();
      sub_1000D37D4();
      sub_1000D37D4();
      *(v777 + v761[11]) = v776;
      sub_1000180EC(v1068, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v1067, &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v1066, &qword_100CA6600, &unk_100A5C400);
      sub_1000180EC(v1065, &qword_100CA6608, &unk_100A31430);
      sub_100154038(v775, type metadata accessor for ViewState);
      sub_10001B350(v777, 0, 1, v761);
      v778 = v1075;
      sub_10001B350(v1045, 1, 1, v1075);
      v779 = v1079;
      v780 = v952;
      sub_1000A3C70();
      v781 = v950;
      sub_100095588();
      if (sub_100024D10(v781, 1, v778) == 1)
      {
        sub_1000180EC(v781, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100154038(v780, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v782 = v1083;
      v783 = v951;
      v784 = v949;
      v785 = v936;
      v786 = v930;
      v787 = v927;
      sub_1000D37D4();
      v788 = *(v779 + 16);
      LODWORD(v1083) = *(v779 + 24);
      sub_100095588();
      v789 = sub_100024D10(v787, 1, v782);
      v1084 = v788;
      if (v789 == 1)
      {
        sub_1000A3C70();
        v790 = sub_100024D10(v787, 1, v782);

        v791 = v1082;
        if (v790 != 1)
        {
          sub_1000180EC(v787, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D37D4();

        v791 = v1082;
      }

      sub_100095588();
      if (sub_100024D10(v786, 1, v791) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v792 = sub_100024D10(v786, 1, v791);
        v793 = v955;
        if (v792 != 1)
        {
          sub_1000180EC(v786, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D37D4();
        v793 = v955;
      }

      sub_100095588();
      v794 = v1081;
      if (sub_100024D10(v785, 1, v1081) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v785, 1, v794) != 1)
        {
          sub_1000180EC(v785, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v795 = v943;
      sub_100095588();
      v796 = v1080;
      if (sub_100024D10(v795, 1, v1080) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v795, 1, v796) != 1)
        {
          sub_1000180EC(v795, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100095588();
      v797 = v1077;
      if (sub_100024D10(v784, 1, v1077) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v784, 1, v797) != 1)
        {
          sub_1000180EC(v784, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100095588();
      v798 = v1078;
      if (sub_100024D10(v783, 1, v1078) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v783, 1, v798) != 1)
        {
          sub_1000180EC(v783, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100095588();
      if (sub_100024D10(v793, 1, v761) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v793, 1, v761) != 1)
        {
          sub_1000180EC(v793, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v799 = v1073;
      sub_1000D37D4();
      v800 = (v779 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v801 = v779;
      v803 = *(v779 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v802 = v800[1];
      v804 = v800[2];
      v805 = v800[3];
      v806 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v807 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v808 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v809 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      swift_allocObject();
      LOBYTE(v845) = v806;
      sub_10003E038(v1084, v1083, v1049, v1050, v1052, v1053, v1054, v1055, v1056, v799, v803, v802, v804, v805, v845, v807, v808, v809, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      v463 = v810;

      sub_1000180EC(v1045, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1064, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1063, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1062, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1061, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1060, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1059, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v1058, &qword_100CA6640, qword_100A32640);
      sub_1000180EC(v1069, &qword_100CA5CF8, &unk_100A302F0);
      return v463;
    case 2u:
      v491 = sub_10022C350(&qword_100CA6690, &unk_100A5B6A0);
      v492 = v1076[*(v491 + 48)];
      (*(v451 + 32))(v453);
      v493 = v492 == 1;
      v494 = v1079;
      v495 = v1022;
      if (v493 && (v496 = type metadata accessor for Date(), sub_100024D10(v495, 1, v496) == 1))
      {
        (*(v451 + 8))(v453, v450);
        return 0;
      }

      else
      {
        v463 = sub_100299880(v494, v453, v1074, v495, v1072);
        (*(v451 + 8))(v453, v450);
      }

      return v463;
    case 3u:
      return sub_10029AC40(v1079, v1074, *v1076, v1072);
    case 4u:
      v473 = *v1076;
      sub_10001B350(v964, 1, 1, v1083);
      sub_10001B350(v968, 1, 1, v1082);
      sub_10001B350(v972, 1, 1, v1081);
      v474 = v1080;
      sub_10001B350(v978, 1, 1, v1080);
      v475 = v1077;
      sub_10001B350(v984, 1, 1, v1077);
      v476 = v1078;
      sub_10001B350(v990, 1, 1, v1078);
      sub_10001B350(v996, 1, 1, v1084);
      v477 = type metadata accessor for Location();
      v1071 = *(v477 - 8);
      v478 = v1071[2];
      v479 = v898;
      v480 = v1074;
      v1074 = v477;
      v478(v898, v480);
      v481 = type metadata accessor for AveragesDetailViewState(0);
      v482 = v481[6];
      v483 = type metadata accessor for DetailHeroChartLollipopPosition(0);
      sub_10001B350(v479 + v482, 1, 1, v483);
      *(v479 + v481[5]) = v473;
      v484 = v479 + v481[7];
      v485 = v1072;
      v486 = v1072[1];
      *v484 = *v1072;
      *(v484 + 16) = v486;
      *(v484 + 32) = *(v485 + 32);
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v487 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v479, 0, 1, v487);
      v488 = v1079;
      v489 = v915;
      sub_1000A3C70();
      v490 = v902;
      sub_100051BBC();
      if (sub_100024D10(v490, 1, v487) == 1)
      {
        sub_1000180EC(v490, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100154038(v489, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v558 = v885;
      v559 = v871;
      sub_1000D37D4();
      v560 = *(v488 + 16);
      LODWORD(v1072) = *(v488 + 24);
      v561 = v862;
      sub_100051BBC();
      v562 = v1083;
      v563 = sub_100024D10(v561, 1, v1083);
      v1075 = v560;
      if (v563 == 1)
      {
        sub_1000A3C70();
        v564 = sub_100024D10(v561, 1, v562);

        v565 = v1082;
        v566 = v561;
        v567 = v894;
        if (v564 != 1)
        {
          sub_1000180EC(v566, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D37D4();

        v565 = v1082;
        v567 = v894;
      }

      sub_100051BBC();
      if (sub_100024D10(v559, 1, v565) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v493 = sub_100024D10(v559, 1, v565) == 1;
        v568 = v946;
        v569 = v559;
        v570 = v878;
        if (!v493)
        {
          sub_1000180EC(v569, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D37D4();
        v568 = v946;
        v570 = v878;
      }

      sub_100051BBC();
      v571 = v1081;
      if (sub_100024D10(v570, 1, v1081) == 1)
      {
        sub_1000A3C70();
        v572 = sub_100024D10(v570, 1, v571);
        v573 = v913;
        if (v572 != 1)
        {
          sub_1000180EC(v570, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D37D4();
        v573 = v913;
      }

      sub_100051BBC();
      if (sub_100024D10(v558, 1, v474) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v558, 1, v474) != 1)
        {
          sub_1000180EC(v558, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v567, 1, v475) == 1)
      {
        sub_1000A3C70();
        v574 = sub_100024D10(v567, 1, v475);
        v575 = v924;
        if (v574 != 1)
        {
          sub_1000180EC(v567, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D37D4();
        v575 = v924;
      }

      sub_100051BBC();
      if (sub_100024D10(v573, 1, v476) == 1)
      {
        sub_1000A3C70();
        v576 = sub_100024D10(v573, 1, v476);
        v577 = v1084;
        if (v576 != 1)
        {
          sub_1000180EC(v573, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D37D4();
        v577 = v1084;
      }

      sub_100051BBC();
      if (sub_100024D10(v575, 1, v577) == 1)
      {
        sub_1000A3C70();
        v578 = sub_100024D10(v575, 1, v577);
        v579 = v568;
        if (v578 != 1)
        {
          sub_1000180EC(v575, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D37D4();
        v579 = v568;
      }

      v1084 = *(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48);
      v580 = v1073;
      sub_1000D37D4();
      v581 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v582 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v584 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v583 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v585 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v587 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v586 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v588 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v585;
      sub_10003E038(v1075, v1072, v1007, v1013, v1019, v1026, v1032, v1038, v579, v580, v581, v582, v584, v583, v844, v587, v586, v588, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      v463 = v589;
      v590 = v1071[1];

      v590(&v1076[v1084], v1074);
      return v463;
    case 5u:
      v522 = v1083;
      sub_10001B350(v449, 1, 1, v1083);
      sub_10001B350(v865, 1, 1, v1082);
      sub_10001B350(v969, 1, 1, v1081);
      sub_10001B350(v975, 1, 1, v1080);
      v523 = v1077;
      sub_10001B350(v981, 1, 1, v1077);
      v524 = v1078;
      sub_10001B350(v987, 1, 1, v1078);
      sub_10001B350(v993, 1, 1, v1084);
      v525 = type metadata accessor for Location();
      v526 = v891;
      (*(*(v525 - 8) + 16))(v891, v1074, v525);
      v527 = v526 + *(type metadata accessor for NextHourPrecipitationDetailViewState(0) + 20);
      v528 = v1072;
      v529 = v1072[1];
      *v527 = *v1072;
      *(v527 + 16) = v529;
      *(v527 + 32) = *(v528 + 32);
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v530 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v526, 0, 1, v530);
      v531 = v1079;
      v532 = v908;
      sub_1000A3C70();
      v533 = v895;
      sub_100051BBC();
      if (sub_100024D10(v533, 1, v530) == 1)
      {
        sub_1000180EC(v533, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100154038(v532, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      sub_1000D37D4();
      v619 = *(v531 + 16);
      LODWORD(v1075) = *(v531 + 24);
      sub_100051BBC();
      v620 = sub_100024D10(v446, 1, v522);
      v621 = v888;
      v622 = v874;
      v1076 = v619;
      if (v620 == 1)
      {
        sub_1000A3C70();
        v623 = sub_100024D10(v446, 1, v522);

        v624 = v1080;
        v625 = v1081;
        if (v623 != 1)
        {
          sub_1000180EC(v446, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D37D4();

        v624 = v1080;
        v625 = v1081;
      }

      v626 = v866;
      sub_100051BBC();
      v627 = v1082;
      if (sub_100024D10(v626, 1, v1082) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v628 = sub_100024D10(v626, 1, v627);
        v629 = v905;
        v630 = v881;
        if (v628 != 1)
        {
          sub_1000180EC(v626, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D37D4();
        v629 = v905;
        v630 = v881;
      }

      sub_100051BBC();
      if (sub_100024D10(v622, 1, v625) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v622, 1, v625) != 1)
        {
          sub_1000180EC(v622, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v630, 1, v624) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v630, 1, v624) != 1)
        {
          sub_1000180EC(v630, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v621, 1, v523) == 1)
      {
        sub_1000A3C70();
        v631 = sub_100024D10(v621, 1, v523);
        v632 = v920;
        if (v631 != 1)
        {
          sub_1000180EC(v621, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D37D4();
        v632 = v920;
      }

      sub_100051BBC();
      if (sub_100024D10(v629, 1, v524) == 1)
      {
        sub_1000A3C70();
        v633 = sub_100024D10(v629, 1, v524);
        v634 = v1084;
        if (v633 != 1)
        {
          sub_1000180EC(v629, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D37D4();
        v634 = v1084;
      }

      sub_100051BBC();
      if (sub_100024D10(v632, 1, v634) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v632, 1, v634) != 1)
        {
          sub_1000180EC(v632, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v635 = v1073;
      sub_1000D37D4();
      v637 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v636 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v639 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v638 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v640 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v642 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v641 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v643 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v640;
      sub_10003E038(v1076, v1075, v1004, v1009, v1015, v1021, v1028, v1034, v1040, v635, v637, v636, v639, v638, v844, v642, v641, v643, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    case 6u:
      sub_1000161C0(v1071 + 17, v1071[20]);
      v534 = v1079;
      sub_1007381FC(v1079, 0, __src);
      type metadata accessor for ReportWeatherViewState._Storage();
      v535 = swift_allocObject();
      memcpy((v535 + 16), __src, 0x60uLL);
      sub_10001B350(v860, 1, 1, v1083);
      v536 = v1082;
      sub_10001B350(v868, 1, 1, v1082);
      v537 = v1081;
      sub_10001B350(v973, 1, 1, v1081);
      sub_10001B350(v979, 1, 1, v1080);
      sub_10001B350(v985, 1, 1, v1077);
      v538 = v1078;
      sub_10001B350(v991, 1, 1, v1078);
      sub_10001B350(v997, 1, 1, v1084);
      v539 = v903;
      *v903 = v535;
      v540 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v539, 0, 1, v540);
      v541 = v918;
      sub_1000A3C70();
      v542 = v904;
      sub_100051BBC();
      if (sub_100024D10(v542, 1, v540) == 1)
      {
        sub_1000180EC(v542, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100154038(v541, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v644 = v916;
      sub_1000D37D4();
      v645 = *(v534 + 16);
      LODWORD(v1075) = *(v534 + 24);
      v646 = v863;
      sub_100051BBC();
      v647 = v1083;
      v648 = sub_100024D10(v646, 1, v1083);
      v649 = v886;
      if (v648 == 1)
      {
        sub_1000A3C70();
        v650 = sub_100024D10(v646, 1, v647);

        v493 = v650 == 1;
        v536 = v1082;
        if (!v493)
        {
          sub_1000180EC(v646, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v1076 = v645;
      v651 = v872;
      sub_100051BBC();
      if (sub_100024D10(v651, 1, v536) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v652 = sub_100024D10(v651, 1, v536);
        v653 = v899;
        v654 = v879;
        v655 = v538;
        if (v652 != 1)
        {
          sub_1000180EC(v651, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D37D4();
        v653 = v899;
        v654 = v879;
        v655 = v538;
      }

      sub_100051BBC();
      v656 = sub_100024D10(v654, 1, v537);
      v657 = v1080;
      if (v656 == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v654, 1, v537) != 1)
        {
          sub_1000180EC(v654, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v649, 1, v657) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v649, 1, v657) != 1)
        {
          sub_1000180EC(v649, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v658 = v1077;
      if (sub_100024D10(v653, 1, v1077) == 1)
      {
        sub_1000A3C70();
        v659 = sub_100024D10(v653, 1, v658);
        v660 = v925;
        if (v659 != 1)
        {
          sub_1000180EC(v653, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D37D4();
        v660 = v925;
      }

      sub_100051BBC();
      if (sub_100024D10(v644, 1, v655) == 1)
      {
        sub_1000A3C70();
        v661 = sub_100024D10(v644, 1, v655);
        v662 = v947;
        if (v661 != 1)
        {
          sub_1000180EC(v644, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D37D4();
        v662 = v947;
      }

      sub_100051BBC();
      v663 = v1084;
      if (sub_100024D10(v660, 1, v1084) == 1)
      {
        sub_1000A3C70();
        v664 = sub_100024D10(v660, 1, v663);
        v665 = v662;
        if (v664 != 1)
        {
          sub_1000180EC(v660, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D37D4();
        v665 = v662;
      }

      v666 = v1073;
      sub_1000D37D4();
      v668 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v667 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v670 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v669 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v671 = v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v672 = v534;
      v673 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v675 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v674 = *(v671 + 16);
      v676 = *(v672 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v673;
      sub_10003E038(v1076, v1075, v1008, v1014, v1020, v1027, v1033, v1039, v665, v666, v668, v667, v670, v669, v844, v675, v674, v676, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    case 7u:
      sub_10001B350(v443, 1, 1, v1083);
      sub_10001B350(v966, 1, 1, v1082);
      sub_10001B350(v970, 1, 1, v1081);
      v497 = v1080;
      sub_10001B350(v976, 1, 1, v1080);
      v498 = v1077;
      sub_10001B350(v982, 1, 1, v1077);
      v499 = v1078;
      sub_10001B350(v988, 1, 1, v1078);
      sub_10001B350(v994, 1, 1, v1084);
      v500 = type metadata accessor for Location();
      v501 = v892;
      (*(*(v500 - 8) + 16))(v892, v1074, v500);
      v502 = type metadata accessor for SunriseSunsetDetailViewState(0);
      v503 = v501 + *(v502 + 20);
      v504 = v1072;
      v505 = v1072[1];
      *v503 = *v1072;
      *(v503 + 16) = v505;
      *(v503 + 32) = *(v504 + 32);
      *(v501 + *(v502 + 24)) = 0;
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v506 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v501, 0, 1, v506);
      v507 = v1079;
      v508 = v911;
      sub_1000A3C70();
      v509 = v896;
      sub_100051BBC();
      if (sub_100024D10(v509, 1, v506) == 1)
      {
        sub_1000180EC(v509, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100154038(v508, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      sub_1000D37D4();
      v591 = *(v507 + 16);
      LODWORD(v1075) = *(v507 + 24);
      sub_100051BBC();
      v592 = v1083;
      v593 = sub_100024D10(v440, 1, v1083);
      v594 = v889;
      v595 = v875;
      v1076 = v591;
      if (v593 == 1)
      {
        sub_1000A3C70();
        v596 = sub_100024D10(v440, 1, v592);

        v597 = v882;
        if (v596 != 1)
        {
          sub_1000180EC(v440, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D37D4();

        v597 = v882;
      }

      v598 = v963;
      sub_100051BBC();
      v599 = v1082;
      if (sub_100024D10(v598, 1, v1082) == 1)
      {
        swift_beginAccess();
        v600 = v963;
        sub_1000A3C70();
        v601 = sub_100024D10(v600, 1, v599);
        v602 = v921;
        if (v601 != 1)
        {
          sub_1000180EC(v600, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D37D4();
        v602 = v921;
      }

      sub_100051BBC();
      v603 = v1081;
      if (sub_100024D10(v595, 1, v1081) == 1)
      {
        sub_1000A3C70();
        v604 = sub_100024D10(v595, 1, v603);
        v605 = v907;
        if (v604 != 1)
        {
          sub_1000180EC(v595, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D37D4();
        v605 = v907;
      }

      sub_100051BBC();
      if (sub_100024D10(v597, 1, v497) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v597, 1, v497) != 1)
        {
          sub_1000180EC(v597, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v594, 1, v498) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v594, 1, v498) != 1)
        {
          sub_1000180EC(v594, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v605, 1, v499) == 1)
      {
        sub_1000A3C70();
        v606 = sub_100024D10(v605, 1, v499);
        v607 = v1084;
        if (v606 != 1)
        {
          sub_1000180EC(v605, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D37D4();
        v607 = v1084;
      }

      sub_100051BBC();
      if (sub_100024D10(v602, 1, v607) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v602, 1, v607) != 1)
        {
          sub_1000180EC(v602, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v608 = v1073;
      sub_1000D37D4();
      v609 = v507;
      v611 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v610 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v613 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v612 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v614 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v616 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v615 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v617 = *(v609 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v614;
      sub_10003E038(v1076, v1075, v1005, v1010, v1016, v1023, v1029, v1035, v1041, v608, v611, v610, v613, v612, v844, v616, v615, v617, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    case 8u:
      sub_10029BC34(v931);
      sub_10001B350(v437, 1, 1, v1083);
      v543 = v1082;
      sub_10001B350(v967, 1, 1, v1082);
      sub_10001B350(v971, 1, 1, v1081);
      v544 = v1080;
      sub_10001B350(v977, 1, 1, v1080);
      v545 = v1077;
      sub_10001B350(v983, 1, 1, v1077);
      sub_10001B350(v989, 1, 1, v1078);
      sub_10001B350(v995, 1, 1, v1084);
      v546 = type metadata accessor for Location();
      v547 = v897;
      (*(*(v546 - 8) + 16))(v897, v1074, v546);
      v548 = type metadata accessor for MoonDetailViewState(0);
      v549 = v548[6];
      v550 = type metadata accessor for Date();
      sub_10001B350(v547 + v549, 1, 1, v550);
      v551 = v547 + v548[7];
      sub_100051BBC();
      v552 = v1072;
      v553 = v1072[1];
      *v551 = *v1072;
      *(v551 + 16) = v553;
      *(v551 + 32) = *(v552 + 32);
      *(v547 + v548[8]) = 2;
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v554 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v547, 0, 1, v554);
      v555 = v1079;
      v556 = v914;
      sub_1000A3C70();
      v557 = v901;
      sub_100051BBC();
      if (sub_100024D10(v557, 1, v554) == 1)
      {
        sub_1000180EC(v557, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100154038(v556, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v677 = v912;
      v678 = v884;
      sub_1000D37D4();
      v679 = *(v555 + 16);
      LODWORD(v1075) = *(v555 + 24);
      v680 = v861;
      sub_100051BBC();
      v681 = v1083;
      v682 = sub_100024D10(v680, 1, v1083);
      v683 = v870;
      if (v682 == 1)
      {
        sub_1000A3C70();
        v684 = sub_100024D10(v680, 1, v681);

        v493 = v684 == 1;
        v543 = v1082;
        v685 = v680;
        v686 = v923;
        if (!v493)
        {
          sub_1000180EC(v685, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D37D4();

        v686 = v923;
      }

      sub_100051BBC();
      v687 = sub_100024D10(v683, 1, v543);
      v1076 = v679;
      if (v687 == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v493 = sub_100024D10(v683, 1, v543) == 1;
        v688 = v893;
        v689 = v683;
        v690 = v877;
        if (!v493)
        {
          sub_1000180EC(v689, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D37D4();
        v688 = v893;
        v690 = v877;
      }

      sub_100051BBC();
      v691 = v1081;
      if (sub_100024D10(v690, 1, v1081) == 1)
      {
        sub_1000A3C70();
        v692 = sub_100024D10(v690, 1, v691);
        v693 = v945;
        if (v692 != 1)
        {
          sub_1000180EC(v690, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D37D4();
        v693 = v945;
      }

      sub_100051BBC();
      if (sub_100024D10(v678, 1, v544) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v678, 1, v544) != 1)
        {
          sub_1000180EC(v678, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v688, 1, v545) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v688, 1, v545) != 1)
        {
          sub_1000180EC(v688, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v694 = v1078;
      if (sub_100024D10(v677, 1, v1078) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v677, 1, v694) != 1)
        {
          sub_1000180EC(v677, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v695 = v1084;
      if (sub_100024D10(v686, 1, v1084) == 1)
      {
        sub_1000A3C70();
        v696 = sub_100024D10(v686, 1, v695);
        v697 = v693;
        if (v696 != 1)
        {
          sub_1000180EC(v686, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D37D4();
        v697 = v693;
      }

      v698 = v1073;
      sub_1000D37D4();
      v700 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v699 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v702 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v701 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v703 = v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v704 = v555;
      v705 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v707 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v706 = *(v703 + 16);
      v708 = *(v704 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v705;
      sub_10003E038(v1076, v1075, v1006, v1012, v1018, v1025, v1031, v1037, v697, v698, v700, v699, v702, v701, v844, v707, v706, v708, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    default:
      v457 = sub_10022C350(&qword_100CA6680, &qword_100A3DB20);
      v458 = v1076[*(v457 + 48)];
      v459 = v938;
      v460 = *(v938 + 32);
      v461 = v939;
      v462 = v940;
      v460(v939);
      v463 = v1079;
      if (v458 == 1)
      {
        sub_10001B350(v859, 1, 1, v1083);
        v464 = v1082;
        sub_10001B350(v867, 1, 1, v1082);
        v465 = v1081;
        sub_10001B350(v876, 1, 1, v1081);
        v466 = v1080;
        sub_10001B350(v883, 1, 1, v1080);
        sub_10001B350(v890, 1, 1, v1077);
        sub_10001B350(v909, 1, 1, v1078);
        sub_10001B350(v922, 1, 1, v1084);
        v467 = v852;
        (v460)(v852, v461, v462);
        type metadata accessor for ModalViewState.LocationDetailModal(0);
        swift_storeEnumTagMultiPayload();
        v468 = v1075;
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v467, 0, 1, v468);
        v469 = v855;
        sub_1000A3C70();
        v470 = v853;
        sub_100051BBC();
        v471 = sub_100024D10(v470, 1, v468);
        v472 = v466;
        if (v471 == 1)
        {
          sub_1000180EC(v470, &qword_100CA65E8, &unk_100A31410);
        }

        else
        {
          sub_100154038(v469, type metadata accessor for ModalViewState);
          sub_1000D37D4();
        }

        v811 = v851;
        v812 = v850;
        v813 = v849;
        sub_1000D37D4();
        v814 = *(v463 + 16);
        LODWORD(v1075) = *(v463 + 24);
        v815 = v847;
        sub_100051BBC();
        v816 = v1083;
        v817 = sub_100024D10(v815, 1, v1083);
        v1076 = v814;
        if (v817 == 1)
        {
          sub_1000A3C70();
          v818 = sub_100024D10(v815, 1, v816);

          v493 = v818 == 1;
          v464 = v1082;
          if (!v493)
          {
            sub_1000180EC(v815, &qword_100CA6640, qword_100A32640);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        v819 = v848;
        sub_100051BBC();
        if (sub_100024D10(v819, 1, v464) == 1)
        {
          swift_beginAccess();
          sub_1000A3C70();
          v820 = sub_100024D10(v819, 1, v464);
          v821 = *(&v856 + 1);
          v822 = v856;
          v823 = v472;
          if (v820 != 1)
          {
            sub_1000180EC(v819, &qword_100CA6638, &unk_100A31460);
          }
        }

        else
        {
          sub_1000D37D4();
          v821 = *(&v856 + 1);
          v822 = v856;
          v823 = v472;
        }

        sub_100051BBC();
        v824 = sub_100024D10(v813, 1, v465);
        v825 = v854;
        if (v824 == 1)
        {
          sub_1000A3C70();
          v826 = sub_100024D10(v813, 1, v465);
          v827 = v1078;
          if (v826 != 1)
          {
            sub_1000180EC(v813, &qword_100CA6630, &unk_100A32630);
          }
        }

        else
        {
          sub_1000D37D4();
          v827 = v1078;
        }

        sub_100051BBC();
        if (sub_100024D10(v812, 1, v823) == 1)
        {
          sub_1000A3C70();
          if (sub_100024D10(v812, 1, v823) != 1)
          {
            sub_1000180EC(v812, &qword_100CA6628, &unk_100A31450);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        sub_100051BBC();
        v828 = v1077;
        if (sub_100024D10(v811, 1, v1077) == 1)
        {
          sub_1000A3C70();
          if (sub_100024D10(v811, 1, v828) != 1)
          {
            sub_1000180EC(v811, &qword_100CA6620, &unk_100A32620);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        sub_100051BBC();
        if (sub_100024D10(v825, 1, v827) == 1)
        {
          sub_1000A3C70();
          if (sub_100024D10(v825, 1, v827) != 1)
          {
            sub_1000180EC(v825, &qword_100CA6618, &unk_100A31440);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        sub_100051BBC();
        v829 = v1084;
        if (sub_100024D10(v822, 1, v1084) == 1)
        {
          sub_1000A3C70();
          v830 = sub_100024D10(v822, 1, v829);
          v831 = v821;
          if (v830 != 1)
          {
            sub_1000180EC(v822, &qword_100CA6610, &unk_100A32610);
          }
        }

        else
        {
          sub_1000D37D4();
          v831 = v821;
        }

        v832 = v1073;
        sub_1000D37D4();
        v834 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
        v833 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
        v836 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
        v835 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
        v837 = v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
        v838 = v463;
        v839 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
        v841 = *(v837 + 8);
        v840 = *(v837 + 16);
        v842 = *(v838 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
        type metadata accessor for MainState._Storage(0);
        swift_allocObject();
        LOBYTE(v844) = v839;
        sub_10003E038(v1076, v1075, v934, v935, v937, v941, v942, v944, v831, v832, v834, v833, v836, v835, v844, v841, v840, v842, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
LABEL_295:
        v463 = v618;
      }

      else
      {
        (*(v459 + 8))(v461, v462);
      }

      return v463;
  }
}

uint64_t sub_100299588@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = type metadata accessor for WeatherMapOverlayKind();
      goto LABEL_7;
    case 2u:
      v12 = type metadata accessor for DetailCondition();
      goto LABEL_7;
    case 3u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      goto LABEL_8;
    case 4u:
      v8 += *(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48);
      v12 = type metadata accessor for Location();
LABEL_7:
      (*(*(v12 - 8) + 8))(v8, v12);
      goto LABEL_8;
    default:
      v9 = v8[*(sub_10022C350(&qword_100CA6680, &qword_100A3DB20) + 48)];
      v10 = *(v3 + 32);
      v10(v5, v8, v2);
      if (v9 == 1)
      {
        v10(a1, v5, v2);
        type metadata accessor for LocationPreviewModalViewState(0);
        return swift_storeEnumTagMultiPayload();
      }

      else
      {
        (*(v3 + 8))(v5, v2);
LABEL_8:
        type metadata accessor for LocationPreviewViewState(0);
        return sub_1000A3C70();
      }
  }
}

void *sub_100299814()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  return v0;
}

uint64_t sub_10029984C()
{
  sub_100299814();

  return swift_deallocClassInstance();
}

uint64_t sub_100299880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v148 = a5;
  v142 = a4;
  v140 = a3;
  v141 = a2;
  v158 = a1;
  v169 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v169);
  v159 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v165);
  v172 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v164);
  v171 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v163);
  v170 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v9);
  v168 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v162);
  v167 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v161);
  v166 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v145);
  v157 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v146 = &v126 - v15;
  __chkstk_darwin(v16);
  v156 = &v126 - v17;
  v128 = type metadata accessor for TimeZone();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v19 - 8);
  v133 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  *(&v136 + 1) = &v126 - v22;
  v129 = type metadata accessor for Location();
  v131 = *(v129 - 8);
  __chkstk_darwin(v129);
  v160 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DetailCondition();
  v130 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v27 - 8);
  v138 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v126 - v30;
  v32 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v32 - 8);
  v155 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v126 - v35;
  v37 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v37 - 8);
  v152 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v126 - v40;
  v42 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v42 - 8);
  v150 = &v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v126 - v45;
  v47 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v47 - 8);
  v147 = &v126 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &v126 - v50;
  v52 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v52 - 8);
  v143 = &v126 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v126 - v55;
  v57 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v57 - 8);
  v137 = &v126 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v126 - v60;
  v62 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v62 - 8);
  v134 = &v126 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v132 = &v126 - v65;
  sub_10001B350(&v126 - v65, 1, 1, v161);
  *&v136 = v61;
  sub_10001B350(v61, 1, 1, v162);
  v139 = v56;
  v66 = v56;
  v67 = v129;
  v154 = v9;
  sub_10001B350(v66, 1, 1, v9);
  v144 = v51;
  v68 = v51;
  v69 = v131;
  sub_10001B350(v68, 1, 1, v163);
  v149 = v46;
  sub_10001B350(v46, 1, 1, v164);
  v151 = v41;
  sub_10001B350(v41, 1, 1, v165);
  v153 = v36;
  v70 = v36;
  v71 = v140;
  sub_10001B350(v70, 1, 1, v169);
  v72 = v130;
  v73 = *(v130 + 16);
  v135 = v26;
  v74 = v26;
  v75 = v24;
  v73(v74, v141, v24);
  (*(v69 + 16))(v160, v71, v67);
  v76 = v133;
  sub_100095588();
  v77 = type metadata accessor for Date();
  v78 = v76;
  if (sub_100024D10(v76, 1, v77) == 1)
  {
    sub_1000180EC(v76, &unk_100CB2CF0, &unk_100A2D7F0);
    v79 = 1;
    v80 = *(&v136 + 1);
  }

  else
  {
    v81 = v126;
    Location.timeZone.getter();
    v80 = *(&v136 + 1);
    Date.startOfDay(timeZone:)();
    (*(v127 + 8))(v81, v128);
    (*(*(v77 - 8) + 8))(v78, v77);
    v79 = 0;
  }

  sub_10001B350(v80, v79, 1, v77);
  v82 = type metadata accessor for ConditionDetailViewState(0);
  v83 = v82[8];
  v84 = type metadata accessor for DetailChartSelection(0);
  sub_10001B350(&v31[v83], 1, 1, v84);
  (*(v72 + 32))(v31, v135, v75);
  (*(v69 + 32))(&v31[v82[5]], v160, v67);
  sub_100051BBC();
  v85 = &v31[v82[7]];
  v86 = v148;
  v87 = v148[1];
  *v85 = *v148;
  *(v85 + 1) = v87;
  v85[32] = *(v86 + 32);
  v31[v82[9]] = 0;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  swift_storeEnumTagMultiPayload();
  v88 = v145;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v31, 0, 1, v88);
  v89 = v158;
  v90 = v146;
  sub_1000A3C70();
  v91 = v138;
  sub_100051BBC();
  if (sub_100024D10(v91, 1, v88) == 1)
  {
    sub_1000180EC(v91, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_100154038(v90, type metadata accessor for ModalViewState);
    sub_1000D37D4();
  }

  v92 = v169;
  v94 = v164;
  v93 = v165;
  v95 = v163;
  v96 = v134;
  sub_1000D37D4();
  v97 = *(v89 + 16);
  LODWORD(v156) = *(v89 + 24);
  sub_100051BBC();
  v98 = v161;
  if (sub_100024D10(v96, 1, v161) == 1)
  {
    sub_1000A3C70();
    v99 = sub_100024D10(v96, 1, v98);

    v100 = v162;
    if (v99 != 1)
    {
      sub_1000180EC(v96, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000D37D4();

    v100 = v162;
  }

  v101 = v137;
  sub_100051BBC();
  v102 = sub_100024D10(v101, 1, v100);
  v160 = v97;
  if (v102 == 1)
  {
    swift_beginAccess();
    sub_1000A3C70();
    v103 = sub_100024D10(v101, 1, v100);
    v104 = v159;
    if (v103 != 1)
    {
      sub_1000180EC(v101, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000D37D4();
    v104 = v159;
  }

  v105 = v143;
  sub_100051BBC();
  v106 = v154;
  if (sub_100024D10(v105, 1, v154) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v105, 1, v106) != 1)
    {
      sub_1000180EC(v105, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v107 = v147;
  sub_100051BBC();
  if (sub_100024D10(v107, 1, v95) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v107, 1, v95) != 1)
    {
      sub_1000180EC(v107, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v108 = v150;
  sub_100051BBC();
  if (sub_100024D10(v108, 1, v94) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v108, 1, v94) != 1)
    {
      sub_1000180EC(v108, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v109 = v152;
  sub_100051BBC();
  if (sub_100024D10(v109, 1, v93) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v109, 1, v93) != 1)
    {
      sub_1000180EC(v109, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v110 = v155;
  sub_100051BBC();
  if (sub_100024D10(v110, 1, v92) == 1)
  {
    sub_1000A3C70();
    v111 = v104;
    if (sub_100024D10(v110, 1, v92) != 1)
    {
      sub_1000180EC(v110, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000D37D4();
    v111 = v104;
  }

  v112 = v157;
  sub_1000D37D4();
  v114 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v113 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v116 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v115 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v117 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v118 = v89;
  v120 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v119 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v121 = *(v118 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v125) = v117;
  sub_10003E038(v160, v156, v166, v167, v168, v170, v171, v172, v111, v112, v114, v113, v116, v115, v125, v120, v119, v121, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v123 = v122;

  return v123;
}

uint64_t sub_10029AC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *&v110 = a4;
  HIDWORD(v109) = a3;
  v106 = a2;
  v108 = a1;
  v128 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v128);
  v132 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v124);
  v131 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v123);
  v130 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v122);
  v129 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v121);
  v127 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v120);
  v126 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v119);
  v125 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v103);
  v118 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v100 - v13;
  __chkstk_darwin(v14);
  v117 = &v100 - v15;
  v16 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v16 - 8);
  v102 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v100 - v19;
  v21 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v21 - 8);
  v116 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v100 - v24;
  v26 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v26 - 8);
  v114 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v100 - v29;
  v31 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v31 - 8);
  v112 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v100 - v34;
  v36 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v36 - 8);
  *(&v110 + 1) = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v100 - v39;
  v41 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v41 - 8);
  v105 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v100 - v44;
  v46 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v46 - 8);
  v48 = &v100 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &v100 - v50;
  v52 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v52 - 8);
  v54 = &v100 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  sub_10001B350(&v100 - v56, 1, 1, v119);
  sub_10001B350(v51, 1, 1, v120);
  v104 = v45;
  sub_10001B350(v45, 1, 1, v121);
  v107 = v40;
  v57 = v40;
  v58 = v101;
  sub_10001B350(v57, 1, 1, v122);
  v111 = v35;
  sub_10001B350(v35, 1, 1, v123);
  v113 = v30;
  sub_10001B350(v30, 1, 1, v124);
  v115 = v25;
  sub_10001B350(v25, 1, 1, v128);
  v59 = type metadata accessor for Location();
  (*(*(v59 - 8) + 16))(v20, v106, v59);
  v60 = type metadata accessor for AirQualityDetailViewState(0);
  v20[*(v60 + 20)] = BYTE4(v109) & 1;
  v61 = &v20[*(v60 + 24)];
  v62 = v110;
  v63 = *(v110 + 16);
  *v61 = *v110;
  *(v61 + 1) = v63;
  v61[32] = *(v62 + 32);
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  swift_storeEnumTagMultiPayload();
  v64 = v103;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v20, 0, 1, v64);
  v65 = v108;
  sub_1000A3C70();
  v66 = v102;
  sub_100051BBC();
  if (sub_100024D10(v66, 1, v64) == 1)
  {
    sub_1000180EC(v66, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_100154038(v58, type metadata accessor for ModalViewState);
    sub_1000D37D4();
  }

  sub_1000D37D4();
  v67 = v65;
  v68 = *(v65 + 16);
  HIDWORD(v109) = *(v67 + 24);
  sub_100051BBC();
  v69 = v119;
  v70 = sub_100024D10(v54, 1, v119);
  v71 = v105;
  *&v110 = v68;
  if (v70 == 1)
  {
    sub_1000A3C70();
    v72 = sub_100024D10(v54, 1, v69);

    v73 = *(&v110 + 1);
    if (v72 != 1)
    {
      sub_1000180EC(v54, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000D37D4();

    v73 = *(&v110 + 1);
  }

  sub_100051BBC();
  v74 = v120;
  if (sub_100024D10(v48, 1, v120) == 1)
  {
    swift_beginAccess();
    sub_1000A3C70();
    v75 = sub_100024D10(v48, 1, v74);
    v76 = v124;
    v77 = v112;
    if (v75 != 1)
    {
      sub_1000180EC(v48, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000D37D4();
    v76 = v124;
    v77 = v112;
  }

  sub_100051BBC();
  v78 = v121;
  if (sub_100024D10(v71, 1, v121) == 1)
  {
    sub_1000A3C70();
    v79 = sub_100024D10(v71, 1, v78);
    v80 = v128;
    if (v79 != 1)
    {
      sub_1000180EC(v71, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000D37D4();
    v80 = v128;
  }

  sub_100051BBC();
  v81 = v122;
  if (sub_100024D10(v73, 1, v122) == 1)
  {
    sub_1000A3C70();
    v82 = sub_100024D10(v73, 1, v81);
    v83 = v123;
    if (v82 != 1)
    {
      sub_1000180EC(v73, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000D37D4();
    v83 = v123;
  }

  sub_100051BBC();
  if (sub_100024D10(v77, 1, v83) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v77, 1, v83) != 1)
    {
      sub_1000180EC(v77, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v84 = v114;
  sub_100051BBC();
  if (sub_100024D10(v84, 1, v76) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v84, 1, v76) != 1)
    {
      sub_1000180EC(v84, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v85 = v116;
  sub_100051BBC();
  if (sub_100024D10(v85, 1, v80) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v85, 1, v80) != 1)
    {
      sub_1000180EC(v85, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v86 = v118;
  sub_1000D37D4();
  v88 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v87 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v89 = v67;
  v91 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v90 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v92 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v94 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v93 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v95 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v99) = v92;
  sub_10003E038(v110, HIDWORD(v109), v125, v126, v127, v129, v130, v131, v132, v86, v88, v87, v91, v90, v99, v94, v93, v95, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  v97 = v96;

  return v97;
}

uint64_t sub_10029BC34@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095588();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1000180EC(v4, &unk_100CB2CF0, &unk_100A2D7F0);
    v9 = type metadata accessor for MoonDetailSelectedDate(0);
    v10 = a1;
    v11 = 1;
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v8, v4, v5);
    v12(a1, v8, v5);
    v13 = type metadata accessor for MoonDetailSelectedDate(0);
    swift_storeEnumTagMultiPayload();
    v10 = a1;
    v11 = 0;
    v9 = v13;
  }

  return sub_10001B350(v10, v11, 1, v9);
}

uint64_t sub_10029BE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Location.Identifier();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  __chkstk_darwin(v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v12 - 8);
  v14 = v39 - v13;
  v15 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v15 - 8);
  v17 = v39 - v16;
  v18 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v18);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  if (*(a1 + *(type metadata accessor for ViewState(0) + 40) + v21 + 1) == 128)
  {
    v40 = a4;
    v22 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v39[1] = a2;
    v23 = Location.id.getter();
    sub_1000864C0(v23, v24, v22);

    v25 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v14, 1, v25) == 1)
    {
      sub_1000180EC(v14, &qword_100CA37B0, &unk_100A2D740);
      sub_10001B350(v17, 1, 1, v18);
    }

    else
    {
      sub_1001A0D3C();
      sub_100154038(v14, type metadata accessor for LocationWeatherDataState);
      if (sub_100024D10(v17, 1, v18) != 1)
      {
        sub_1000D37D4();
        v31 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        LODWORD(v31) = *(v31 + 3) == 4;
        sub_1000161C0(a3 + 2, a3[5]);
        v33 = sub_100922C64(v20, v31, v32);
        v35 = v34;
        sub_1000161C0(a3 + 7, a3[10]);
        v36 = *(v18 + 24);
        Location.identifier.getter();
        v37 = &v20[v36];
        v38 = v40;
        sub_100523678(v37, v33, v35, v11, v40);

        (*(v42 + 8))(v11, v41);
        sub_100154038(v20, type metadata accessor for WeatherData);
        v29 = type metadata accessor for WeatherMapOverlayKind();
        v30 = v38;
        return sub_10001B350(v30, 0, 1, v29);
      }
    }

    sub_1000180EC(v17, &qword_100CA3898, &qword_100A314D0);
    sub_1000161C0(a3 + 7, a3[10]);
    v28 = v40;
    sub_1001A79EC(v40);
    v29 = type metadata accessor for WeatherMapOverlayKind();
    v30 = v28;
    return sub_10001B350(v30, 0, 1, v29);
  }

  v26 = type metadata accessor for WeatherMapOverlayKind();

  return sub_10001B350(a4, 1, 1, v26);
}

uint64_t sub_10029C2E8()
{
  v1 = type metadata accessor for LocationModel();
  sub_100003810(v1);
  return sub_100291354(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_10029C338()
{
  v0 = type metadata accessor for Location();
  sub_100003810(v0);

  return sub_100291410();
}

uint64_t sub_10029C394(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10029C3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t property wrapper backing initializer of WindowLiveResizeDeferred._value(uint64_t a1, uint64_t a2)
{
  sub_100007FD0();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = sub_10001BBD0(v8, v12);
  v10(v9);
  sub_10029C560(v2, a2);
  return (*(v6 + 8))(a1, a2);
}

uint64_t sub_10029C560(uint64_t a1, uint64_t a2)
{
  sub_100007FD0();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = sub_10001BBD0(v7, v11);
  v9(v8);
  Published.init(initialValue:)();
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_10029C628()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t WindowLiveResizeDeferred.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  CurrentValueSubject.send(_:)();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*WindowLiveResizeDeferred.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10023FBC0(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v3[1] = *(*v1 + 80);
  sub_100007FD0();
  *(v4 + 16) = v5;
  v7 = *(v6 + 64);
  v3[3] = sub_10023FBC0(v7);
  v3[4] = sub_10023FBC0(v7);
  WindowLiveResizeDeferred.wrappedValue.getter();
  return sub_10029C854;
}

void sub_10029C854(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    WindowLiveResizeDeferred.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    WindowLiveResizeDeferred.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t WindowLiveResizeDeferred.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WindowLiveResizeDeferred.init(wrappedValue:)(a1);
  return v2;
}

void *WindowLiveResizeDeferred.init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10022C350(&qword_100CA34C8, &qword_100A2D518);
  __chkstk_darwin(v5 - 8);
  v41 = &v36 - v6;
  v46 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_100007FD0();
  v43 = v7;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[10];
  v12 = type metadata accessor for CurrentValueSubject();
  v13 = sub_1000405D8();
  v40 = v13;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for CurrentValueSubject<A, B>, v12);
  v39 = WitnessTable;
  v38 = sub_100042F54();
  v48 = v12;
  v49 = v13;
  v50 = WitnessTable;
  v51 = v38;
  v42 = type metadata accessor for Publishers.Debounce();
  sub_100007FD0();
  v45 = v15;
  __chkstk_darwin(v16);
  v36 = &v36 - v17;
  sub_100007FD0();
  v19 = v18;
  v44 = v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v36 - v22;
  *(v2 + v4[14]) = &_swiftEmptySetSingleton;
  v24 = *(v19 + 16);
  v24(&v36 - v22, a1, v11, v21);
  swift_beginAccess();
  v37 = v4[11];
  property wrapper backing initializer of WindowLiveResizeDeferred._value(v23, v11);
  swift_endAccess();
  v25 = a1;
  (v24)(v23, a1, v11);
  v26 = CurrentValueSubject.__allocating_init(_:)();
  *(v2 + *(*v2 + 104)) = v26;
  v48 = v26;

  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v27 = [objc_opt_self() mainRunLoop];
  v47 = v27;
  v28 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v29 = v41;
  sub_10001B350(v41, 1, 1, v28);
  v30 = v36;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_10029D3F4(v29);

  (*(v43 + 8))(v10, v46);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v33 = v37;
  v32[2] = v11;
  v32[3] = v33;
  v32[4] = v31;

  v34 = v42;
  swift_getWitnessTable(&protocol conformance descriptor for Publishers.Debounce<A, B>, v42);
  Publisher<>.sink(receiveValue:)();

  (*(v45 + 8))(v30, v34);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v44 + 8))(v25, v11);
  return v2;
}

uint64_t sub_10029CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    *(&v15 - 2) = a3;
    *(&v15 - 1) = a4;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v15 - 2) = a3;
    *(&v15 - 1) = a4;
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13 = (*(v7 + 8))(v9, a3);
    if (v12)
    {
    }

    else
    {
      __chkstk_darwin(v13);
      *(&v15 - 2) = a3;
      *(&v15 - 1) = a4;
      v14 = swift_getKeyPath();
      __chkstk_darwin(v14);
      *(&v15 - 2) = a3;
      *(&v15 - 1) = a4;
      swift_getKeyPath();
      (*(v7 + 16))(v9, a1, a3);
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t WindowLiveResizeDeferred.deinit()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WindowLiveResizeDeferred.__deallocating_deinit()
{
  WindowLiveResizeDeferred.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10029D1E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10029D278(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(v4 - 8);
  __chkstk_darwin(a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v15 - v11;
  v13 = *(v6 + 16);
  v13(v15 - v11, v10);
  v15[2] = v4;
  v15[3] = v5;
  swift_getKeyPath();
  v15[0] = v4;
  v15[1] = v5;
  swift_getKeyPath();
  (v13)(v8, v12, v4);

  static Published.subscript.setter();
  return (*(v6 + 8))(v12, v4);
}

uint64_t sub_10029D3F4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA34C8, &qword_100A2D518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10029D488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v908 = a3;
  v916 = a2;
  v909 = type metadata accessor for Date();
  sub_1000037C4();
  v905 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v6);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v7);
  sub_10000E70C();
  sub_100003990(v8);
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v19 = sub_100003918(v18);
  v912 = type metadata accessor for TimeState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  v903 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  v902 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v901 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v900 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v33 = sub_100003918(v32);
  v910 = type metadata accessor for NotificationsOptInState(v33);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v47 = sub_100003918(v46);
  v914 = type metadata accessor for NotificationsState(v47);
  sub_1000037E8();
  __chkstk_darwin(v48);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  v57 = sub_100003918(v56);
  v913 = type metadata accessor for LocationsState(v57);
  sub_1000037E8();
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  v67 = sub_100003918(v66);
  v917 = type metadata accessor for EnvironmentState(v67);
  sub_1000037E8();
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_10000E70C();
  v77 = sub_100003918(v76);
  v915 = type metadata accessor for AppConfigurationState(v77);
  sub_1000037E8();
  __chkstk_darwin(v78);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_10000E70C();
  v87 = sub_100003918(v86);
  v906 = type metadata accessor for ModalViewState(v87);
  sub_1000037E8();
  __chkstk_darwin(v88);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  v904 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  v907 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_10000E70C();
  sub_100003990(v107);
  v108 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v109 = sub_100003810(v108);
  __chkstk_darwin(v109);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_10000E70C();
  sub_100003990(v125);
  v126 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v127 = sub_100003810(v126);
  __chkstk_darwin(v127);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_10000E70C();
  sub_100003990(v143);
  v144 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v145 = sub_100003810(v144);
  __chkstk_darwin(v145);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_10000E70C();
  sub_100003990(v161);
  v162 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v163 = sub_100003810(v162);
  __chkstk_darwin(v163);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_10000E70C();
  sub_100003990(v179);
  v180 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v181 = sub_100003810(v180);
  __chkstk_darwin(v181);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_10000E70C();
  sub_100003990(v197);
  v198 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v199 = sub_100003810(v198);
  __chkstk_darwin(v199);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_10000E70C();
  sub_100003990(v215);
  v216 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v217 = sub_100003810(v216);
  __chkstk_darwin(v217);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_10000E70C();
  sub_100003990(v233);
  v234 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v235 = sub_100003810(v234);
  __chkstk_darwin(v235);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  v239 = &v767 - v238;
  __chkstk_darwin(v240);
  v242 = &v767 - v241;
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  v251 = &v767 - v250;
  __chkstk_darwin(v252);
  v254 = &v767 - v253;
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_10000E70C();
  sub_100003918(v259);
  v260 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v776 = v261;
  __chkstk_darwin(v262);
  sub_1000037D8();
  v265 = v264 - v263;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v267 = sub_100003810(active);
  __chkstk_darwin(v267);
  sub_1000037D8();
  v270 = v269 - v268;
  v271 = type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v272);
  sub_1000037D8();
  v275 = v274 - v273;
  v911 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v276);
  __chkstk_darwin(v277);
  __chkstk_darwin(v278);
  __chkstk_darwin(v279);
  __chkstk_darwin(&v767 - v280);
  __chkstk_darwin(v281);
  __chkstk_darwin(v282);
  __chkstk_darwin(v283);
  __chkstk_darwin(v284);
  v294 = &v767 - v293;
  switch(v908)
  {
    case 1:
      v903 = v286;
      v368 = sub_100003BCC(v870);
      sub_1000D3D0C(v368, v369, v370);
      v371 = sub_100003BCC(&v875);
      sub_10001B350(v371, v372, v373, v917);
      v374 = sub_100003BCC(&v880);
      sub_10001B350(v374, v375, v376, v913);
      v377 = sub_100003BCC(&v885);
      sub_10001B350(v377, v378, v379, v914);
      v380 = *v271;
      sub_10001BBFC();
      sub_100037F80();
      sub_100003934();
      v381 = v909;
      sub_10001B350(v382, v383, v384, v909);
      v385 = *v242;
      v908 = *(v242 + 1);
      v386 = v242[17];
      v387 = v242[18];
      v388 = v242[19];
      v389 = v242[20];
      sub_10003778C();
      sub_100051BBC();
      sub_100003BDC(v254);
      v895 = v380;
      LODWORD(v902) = v386;
      LODWORD(v901) = v387;
      LODWORD(v899) = v388;
      LODWORD(v898) = v389;
      LODWORD(v897) = v385;
      if (v322)
      {
        v582 = v905;
        v583 = v851;
        (*(v905 + 16))(v851, &v242[v910[11]], v381);
        v390 = sub_1000131C4();
        v380 = sub_100024D10(v390, v391, v381);

        if (v380 != 1)
        {
          sub_1000180EC(v254, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v582 = v905;
        v583 = v851;
        (*(v905 + 32))(v851, v254, v381);
      }

      sub_1000421D0();
      v585 = v242[v584];
      v586 = v242;
      v588 = v242[v587];
      v589 = *(v586 + v388[16]);
      v590 = *(v586 + v388[17]);
      v591 = *(v586 + v388[18]);
      sub_1000182D0(v586);
      v592 = v861;
      *v861 = v897;
      *(v592 + 1) = v908;
      v592[16] = 1;
      v592[17] = v902;
      sub_1000D4178(v901);
      (*(v582 + 32))(&v592[v593], v583);
      sub_100043950();
      v592[v594] = v585;
      v592[v388[15]] = v588;
      v592[v388[16]] = v589;
      v592[v388[17]] = v590;
      v592[v388[18]] = v591;
      sub_10000E7B0();
      sub_10001B350(v595, v596, v597, v388);
      v598 = sub_100003BCC(&v894);
      sub_10001B350(v598, v599, v600, v912);
      v601 = sub_100003BCC(&v899);
      v602 = v911;
      sub_10001B350(v601, v603, v604, v911);
      v605 = v816;
      sub_100003934();
      sub_10001B350(v606, v607, v608, v906);
      sub_1000227DC();
      sub_1000131D0(v609);
      sub_1000113EC();
      sub_1002A2BB0();
      sub_1000131DC();
      sub_100051BBC();
      sub_10000554C(v605);
      if (v322)
      {
        sub_1000180EC(v605, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v380, v610);
        sub_100005518();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100072EC8();
      v611 = *(v588 + 16);
      LODWORD(v908) = *(v588 + 24);
      sub_1000113EC();
      sub_100051BBC();
      v612 = sub_10000C7F0();
      v613 = v915;
      sub_1000038B4(v612, v614, v915);
      v615 = v917;
      v909 = v611;
      if (v322)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        v616 = sub_10000C7F0();
        v618 = sub_100024D10(v616, v617, v613);

        v619 = v380;
        v620 = v832;
        if (v618 != 1)
        {
          sub_1000180EC(v619, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();

        v620 = v832;
      }

      sub_100051BBC();
      v621 = sub_10000C7F0();
      sub_1000038B4(v621, v622, v615);
      if (v322)
      {
        sub_10002014C(v588 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_1000134E0();
        sub_1002A2BB0();
        v623 = sub_10000C7F0();
        sub_1000038B4(v623, v624, v615);
        v625 = v848;
        v626 = v836;
        if (!v322)
        {
          sub_1000180EC(v620, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v625 = v848;
        v626 = v836;
      }

      sub_1000113EC();
      sub_100051BBC();
      sub_100003BDC(v620);
      if (v322)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_100003BDC(v620);
        v627 = v840;
        if (!v322)
        {
          sub_1000180EC(v620, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
        v627 = v840;
      }

      sub_1000870F8(&v885);
      sub_100051BBC();
      sub_100003BFC(v626);
      if (v322)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100003BFC(v626);
        v628 = v844;
        if (!v322)
        {
          sub_1000180EC(v626, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
        v628 = v844;
      }

      sub_1000131E8(&v890);
      sub_100051BBC();
      sub_10000E7EC(v627);
      if (v322)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v918);
        sub_1002A2BB0();
        sub_10000E7EC(v627);
        if (!v322)
        {
          sub_1000180EC(v627, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_100030224(&v894);
      sub_100051BBC();
      sub_100005404(v628);
      if (v322)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_100005404(v628);
        if (!v322)
        {
          sub_1000180EC(v628, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000C893C(&v899);
      sub_100051BBC();
      sub_10000C814(v625);
      if (v322)
      {
        sub_10000FA9C();
        v629 = v903;
        sub_1002A2BB0();
        sub_10000C814(v625);
        if (!v322)
        {
          sub_1000180EC(v625, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100003B84();
        v629 = v903;
        sub_100072EC8();
      }

      sub_100005518();
      v630 = v907;
      sub_100072EC8();
      sub_1000421C0();
      sub_10003A0FC();
      v632 = *(v631 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v633 = type metadata accessor for MainState._Storage(0);
      LOBYTE(v766) = v611;
      v765 = v629;
      v510 = sub_100003B6C(v633);
      sub_10003E038(v909, v908, v877, v882, v887, v891[1], v896, v900, v765, v630, v626, v388, v627, v628, v766, v602, v588, v632, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      sub_100052654();

      goto LABEL_223;
    case 2:
      v908 = v285;
      v326 = sub_100003BCC(v871);
      sub_1000D3D0C(v326, v327, v328);
      v329 = sub_100003BCC(&v876);
      sub_10001B350(v329, v330, v331, v917);
      v332 = sub_100003BCC(&v881);
      sub_10001B350(v332, v333, v334, v913);
      v335 = sub_100003BCC(&v886);
      sub_10001B350(v335, v336, v337, v914);
      v338 = *v271;
      sub_10001BBFC();
      sub_100037F80();
      sub_100003934();
      v339 = v909;
      sub_10001B350(v340, v341, v342, v909);
      sub_1000718F8();
      LODWORD(v899) = v343;
      LODWORD(v898) = v242[20];
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      v896 = v338;
      LODWORD(v904) = v239;
      LODWORD(v903) = v275;
      LODWORD(v902) = v265;
      LODWORD(v900) = v294;
      if (v322)
      {
        sub_100071680();
        v471 = v852;
        v344(v852);
        v345 = sub_1000131C4();
        sub_1000EFED0(v345, v346);

        if (v339 != 1)
        {
          sub_1000180EC(v254, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v265 = v905;
        v471 = v852;
        (*(v905 + 32))(v852, v254, v339);
      }

      v472 = v910;
      v473 = v242[v910[12]];
      v474 = v242[v910[13]];
      v475 = v242;
      v476 = v242[v910[14]];
      v477 = *(v475 + v910[17]);
      LODWORD(v905) = *(v475 + v910[18]);
      sub_1000182D0(v475);
      sub_1000BCDB8(v891);
      *(v275 + 16) = v903;
      *(v275 + 17) = v902;
      sub_1000D4178(v900);
      (*(v265 + 32))(v275 + v478, v471, v909);
      *(v275 + v472[12]) = v473;
      *(v275 + v472[13]) = v474;
      sub_10003253C(v472[14]);
      *(v275 + v479) = 1;
      *(v275 + v472[17]) = v477;
      *(v275 + v472[18]) = v905;
      sub_10000E7B0();
      sub_10001B350(v480, v481, v482, v472);
      v483 = sub_100003BCC(&v895);
      sub_10001B350(v483, v484, v485, v912);
      v486 = sub_100003BCC(&v903);
      sub_10001B350(v486, v487, v488, v911);
      v489 = v817;
      sub_100003934();
      sub_10001B350(v490, v491, v492, v906);
      sub_1000227DC();
      sub_1000131D0(v493);
      sub_100037798();
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      if (v322)
      {
        sub_1000180EC(v489, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v471, v494);
        sub_100005518();
        sub_100072EC8();
      }

      v495 = v833;
      v496 = v829;
      sub_100005518();
      sub_100072EC8();
      v497 = *(v476 + 16);
      LODWORD(v909) = *(v476 + 24);
      sub_1000870F8(v871);
      sub_100051BBC();
      v498 = sub_100007FC4();
      v499 = v915;
      sub_1000038B4(v498, v500, v915);
      v917 = v497;
      if (v322)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        v501 = sub_100007FC4();
        sub_1000EFED0(v501, v502);

        if (v499 != 1)
        {
          sub_1000180EC(v496, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      sub_100051BBC();
      sub_100003BDC(v495);
      if (v322)
      {
        sub_10002014C(v476 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BDC(v495);
        v503 = v849;
        v504 = v837;
        if (!v322)
        {
          sub_1000180EC(v495, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v503 = v849;
        v504 = v837;
      }

      v505 = v814[0];
      sub_100051BBC();
      sub_10000C814(v505);
      if (v322)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000C814(v505);
        v506 = v841;
        if (!v322)
        {
          sub_1000180EC(v505, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
        v506 = v841;
      }

      sub_1000131E8(&v886);
      sub_100051BBC();
      sub_100005404(v504);
      if (v322)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100005404(v504);
        v507 = v845;
        if (!v322)
        {
          sub_1000180EC(v504, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
        v507 = v845;
      }

      sub_1000E31B8(v891);
      sub_100051BBC();
      sub_10000E7EC(v506);
      if (v322)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v919);
        sub_1002A2BB0();
        sub_10000E7EC(v506);
        if (!v322)
        {
          sub_1000180EC(v506, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_1000436AC(&v895);
      sub_100051BBC();
      sub_10000E7EC(v507);
      if (v322)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000E7EC(v507);
        if (!v322)
        {
          sub_1000180EC(v507, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_100003940();
      sub_100051BBC();
      sub_100003BFC(v503);
      if (v322)
      {
        sub_10000FA9C();
        sub_1002A2BB0();
        sub_100003BFC(v503);
        if (!v322)
        {
          sub_1000180EC(v503, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072EC8();
      }

      sub_100005518();
      v508 = v907;
      sub_100072EC8();
      sub_1000B0E48();
      sub_1000B0C14();
      v509 = type metadata accessor for MainState._Storage(0);
      v510 = sub_100003B6C(v509);
      sub_1000162BC();
      v768 = v508;
      v767 = v908;
      v511 = v917;
      v512 = v909;
      v513 = v878;
      v514 = v883;
      v515 = v888;
      v516 = v892;
      v517 = v897;
      v518 = v901;
      goto LABEL_121;
    case 3:
      v908 = v291;
      v347 = sub_100003BCC(v872);
      sub_1000D3D0C(v347, v348, v349);
      v350 = sub_100003BCC(&v877);
      sub_10001B350(v350, v351, v352, v917);
      v353 = sub_100003BCC(&v882);
      sub_10001B350(v353, v354, v355, v913);
      v356 = sub_100003BCC(&v887);
      sub_10001B350(v356, v357, v358, v914);
      sub_10001BBFC();
      v897 = v359;
      sub_100037F80();
      v360 = v823;
      sub_100003934();
      v361 = v909;
      sub_10001B350(v362, v363, v364, v909);
      LODWORD(v899) = *v242;
      v365 = *(v242 + 1);
      LODWORD(v904) = v242[17];
      LODWORD(v903) = v242[18];
      LODWORD(v901) = v242[19];
      LODWORD(v900) = v242[20];
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      if (v322)
      {
        v519 = v905;
        v520 = v853;
        (*(v905 + 16))(v853, &v242[v910[11]], v361);
        v366 = sub_1000131C4();
        sub_1000EFED0(v366, v367);

        if (v361 != 1)
        {
          sub_1000180EC(v360, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v519 = v905;
        v520 = v853;
        (*(v905 + 32))(v853, v360, v361);
      }

      v521 = v910;
      v522 = v242[v910[12]];
      v523 = v242[v910[13]];
      v524 = v242[v910[14]];
      v525 = v242;
      v526 = v242[v910[15]];
      v527 = *(v525 + v910[16]);
      sub_1000182D0(v525);
      v528 = v862;
      *v862 = v899;
      *(v528 + 1) = v365;
      v528[16] = 0;
      v528[17] = v904;
      v528[18] = v903;
      v528[19] = v901;
      v528[20] = v900;
      (*(v519 + 32))(&v528[v521[11]], v520, v909);
      v528[v521[12]] = v522;
      v528[v521[13]] = v523;
      v528[v521[14]] = v524;
      v528[v521[15]] = v526;
      v528[v521[16]] = v527;
      v528[v521[17]] = 1;
      v528[v521[18]] = 0;
      sub_10000E7B0();
      sub_10001B350(v529, v530, v531, v521);
      v532 = sub_100003BCC(&v896);
      sub_10001B350(v532, v533, v534, v912);
      v535 = sub_100003BCC(&v900);
      sub_10001B350(v535, v536, v537, v911);
      v538 = v818;
      sub_100003934();
      sub_10001B350(v539, v540, v541, v906);
      sub_1000227DC();
      sub_1000131D0(v542);
      v543 = v820;
      sub_1002A2BB0();
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      if (v322)
      {
        sub_1000180EC(v538, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v543, v544);
        sub_100005518();
        sub_100072EC8();
      }

      v545 = v914;
      v546 = v830;
      sub_100005518();
      sub_100072EC8();
      v547 = *(v526 + 16);
      LODWORD(v906) = *(v526 + 24);
      sub_100051BBC();
      v548 = v915;
      sub_1000038B4(v546, 1, v915);
      v909 = v547;
      if (v322)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        sub_1000EFED0(v546, 1);

        if (v548 != 1)
        {
          sub_1000180EC(v546, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      v549 = v811;
      sub_100051BBC();
      sub_100003BDC(v549);
      if (v322)
      {
        sub_10002014C(v526 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BDC(v549);
        v550 = v846;
        if (!v322)
        {
          sub_1000180EC(v549, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v550 = v846;
      }

      v551 = v814[1];
      sub_100051BBC();
      sub_10000E7EC(v551);
      if (v322)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000E7EC(v551);
        if (!v322)
        {
          sub_1000180EC(v551, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
      }

      v552 = v814[3];
      sub_100051BBC();
      sub_100005404(v552);
      if (v322)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100005404(v552);
        if (!v322)
        {
          sub_1000180EC(v552, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
      }

      sub_10003778C();
      sub_100051BBC();
      sub_100003BFC(v545);
      if (v322)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v920);
        sub_1002A2BB0();
        sub_100003BFC(v545);
        if (!v322)
        {
          sub_1000180EC(v545, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_100051BBC();
      sub_10000554C(v550);
      if (v322)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v550);
        if (!v322)
        {
          sub_1000180EC(v550, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      v553 = v822;
      sub_100051BBC();
      sub_10000C814(v553);
      if (v322)
      {
        sub_10000FA9C();
        sub_1002A2BB0();
        sub_10000C814(v553);
        if (!v322)
        {
          sub_1000180EC(v553, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072EC8();
      }

      sub_100005518();
      v554 = v907;
      sub_100072EC8();
      sub_1000B0E48();
      sub_1000B0C14();
      v555 = type metadata accessor for MainState._Storage(0);
      v510 = sub_100003B6C(v555);
      sub_1000162BC();
      v768 = v554;
      v767 = v908;
      v511 = v909;
      v512 = v906;
      v513 = v879;
      v514 = v884;
      v515 = v889;
      v516 = v893;
      v517 = v898;
      v518 = v902;
LABEL_121:
      sub_10003E038(v511, v512, v513, v514, v515, v516, v517, v518, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, *(&v777 + 1), v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792);
      sub_100052654();

      goto LABEL_223;
    case 4:
      v908 = v290;
      v304 = sub_100003BCC(v873);
      sub_1000D3D0C(v304, v305, v306);
      v307 = sub_100003BCC(&v878);
      sub_10001B350(v307, v308, v309, v917);
      v310 = sub_100003BCC(&v883);
      sub_10001B350(v310, v311, v312, v913);
      v313 = sub_100003BCC(&v888);
      sub_10001B350(v313, v314, v315, v914);
      v316 = *v271;
      sub_10001BBFC();
      sub_100037F80();
      sub_100003934();
      v317 = v909;
      sub_10001B350(v318, v319, v320, v909);
      sub_1000718F8();
      LODWORD(v898) = v321;
      LODWORD(v897) = v242[20];
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      v896 = v316;
      LODWORD(v904) = v239;
      LODWORD(v902) = v275;
      LODWORD(v901) = v265;
      LODWORD(v900) = v294;
      if (v322)
      {
        sub_100071680();
        v421 = v854;
        v323(v854);
        v324 = sub_1000131C4();
        sub_1000EFED0(v324, v325);

        if (v317 != 1)
        {
          sub_1000180EC(v254, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v265 = v905;
        v421 = v854;
        (*(v905 + 32))(v854, v254, v317);
      }

      sub_1000421D0();
      v422 = v242;
      v424 = v242[v423];
      v425 = *(v422 + v260[16]);
      v426 = *(v422 + v260[17]);
      sub_1000182D0(v422);
      sub_1000BCDB8(&v892);
      *(v275 + 16) = v902;
      *(v275 + 17) = v901;
      *(v275 + 18) = v900;
      *(v275 + 19) = v898;
      *(v275 + 20) = v897;
      (*(v265 + 32))(v275 + v260[11], v421, v909);
      sub_100043950();
      sub_10003253C(v427);
      *(v275 + v428) = v425;
      *(v275 + v260[17]) = v426;
      *(v275 + v260[18]) = 1;
      sub_10000E7B0();
      sub_10001B350(v429, v430, v431, v260);
      v432 = sub_100003BCC(&v897);
      sub_10001B350(v432, v433, v434, v912);
      v435 = sub_100003BCC(&v901);
      sub_10001B350(v435, v436, v437, v911);
      v438 = v819;
      sub_100003934();
      sub_10001B350(v439, v440, v441, v906);
      sub_1000227DC();
      sub_1000131D0(v442);
      v443 = v821;
      sub_1002A2BB0();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v438);
      if (v322)
      {
        sub_1000180EC(v438, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v443, v444);
        sub_100005518();
        sub_100072EC8();
      }

      v445 = v917;
      v446 = v915;
      v447 = v834;
      sub_100005518();
      sub_100072EC8();
      v448 = *(v424 + 16);
      LODWORD(v915) = *(v424 + 24);
      v449 = v810;
      sub_100051BBC();
      sub_100005404(v449);
      v917 = v448;
      if (v322)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        sub_100021CF8(v449, 1);

        if (v446 != 1)
        {
          sub_1000180EC(v449, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      sub_1000C893C(&v878);
      sub_100051BBC();
      v450 = sub_10000C834();
      sub_1000038B4(v450, v451, v445);
      if (v322)
      {
        sub_10002014C(v424 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_1000134E0();
        sub_1002A2BB0();
        v452 = sub_10000C834();
        sub_1000038B4(v452, v453, v445);
        v454 = v850;
        v455 = v838;
        if (!v322)
        {
          sub_1000180EC(v447, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v454 = v850;
        v455 = v838;
      }

      v456 = v814[2];
      sub_100051BBC();
      sub_100003BDC(v456);
      if (v322)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_100003BDC(v456);
        v457 = v842;
        if (!v322)
        {
          sub_1000180EC(v456, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
        v457 = v842;
      }

      sub_1000870F8(&v888);
      sub_100051BBC();
      v458 = sub_100007FC4();
      sub_1000038B4(v458, v459, v914);
      if (v322)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_10000554C(v455);
        v460 = v847;
        if (!v322)
        {
          sub_1000180EC(v455, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
        v460 = v847;
      }

      sub_1000131E8(&v892);
      sub_100051BBC();
      sub_10000E7EC(v457);
      if (v322)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v919);
        sub_1002A2BB0();
        sub_10000E7EC(v457);
        if (!v322)
        {
          sub_1000180EC(v457, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_100030224(&v897);
      sub_100051BBC();
      sub_10000554C(v460);
      if (v322)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v460);
        if (!v322)
        {
          sub_1000180EC(v460, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000436AC(&v901);
      sub_100051BBC();
      sub_10000C814(v454);
      if (v322)
      {
        sub_10000FA9C();
        sub_1000436A0();
        sub_1002A2BB0();
        sub_10000C814(v454);
        if (!v322)
        {
          sub_1000180EC(v454, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100003B84();
        sub_1000436A0();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100072EC8();
      sub_1000421C0();
      sub_10003A0FC();
      v461 = sub_100087104();
      sub_100003B6C(v461);
      sub_10000E80C();
      v463 = v917;
      v464 = v915;
      v465 = v880;
      v466 = v885;
      v467 = v890;
      v468 = v894;
      v469 = v899;
      v470 = v903;
      goto LABEL_222;
    case 5:
      v909 = v288;
      sub_100003934();
      v392 = v915;
      v394 = v393;
      sub_10001B350(v395, v396, v397, v915);
      v398 = sub_100003BCC(v874);
      sub_10001B350(v398, v399, v400, v917);
      v401 = sub_100003BCC(&v879);
      sub_10001B350(v401, v402, v403, v913);
      v404 = sub_100003BCC(&v884);
      sub_10001B350(v404, v405, v406, v914);
      v407 = sub_100003BCC(&v889);
      sub_10001B350(v407, v408, v409, v910);
      v410 = sub_100003BCC(&v893);
      sub_10001B350(v410, v411, v412, v912);
      v413 = sub_100003BCC(&v898);
      sub_10001B350(v413, v414, v415, v911);
      v416 = v815;
      *v815 = 0;
      v417 = v906;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v418, v419, v420, v417);
      sub_1000227DC();
      sub_1000131DC();
      sub_1002A2BB0();
      sub_1000519E0();
      sub_100051BBC();
      sub_10000554C(v416);
      if (v322)
      {
        sub_1000180EC(v416, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v394, v634);
        sub_100005518();
        sub_100072EC8();
      }

      v635 = v831;
      sub_100005518();
      sub_100072EC8();
      v636 = v916;
      v637 = *(v916 + 16);
      LODWORD(v906) = *(v916 + 24);
      sub_100051BBC();
      sub_100005404(v239);
      v638 = v812;
      v908 = v637;
      if (v322)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        sub_100021CF8(v239, 1);

        v639 = v636;
        if (v392 != 1)
        {
          sub_1000180EC(v239, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();

        v639 = v636;
      }

      sub_1000C893C(v874);
      sub_100051BBC();
      v640 = sub_10000C834();
      sub_1000038B4(v640, v641, v917);
      if (v322)
      {
        sub_10002014C(v639 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BFC(v635);
        v642 = v843;
        v643 = v839;
        v644 = v835;
        if (!v322)
        {
          sub_1000180EC(v635, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v642 = v843;
        v643 = v839;
        v644 = v835;
      }

      sub_1000870F8(&v879);
      sub_100051BBC();
      sub_10000556C(v638);
      if (v322)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000556C(v638);
        if (!v322)
        {
          sub_1000180EC(v638, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
      }

      sub_1000E31B8(&v884);
      sub_100051BBC();
      sub_100003BDC(v644);
      if (v322)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100003BDC(v644);
        if (!v322)
        {
          sub_1000180EC(v644, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
      }

      sub_100030224(&v889);
      sub_100051BBC();
      sub_10000E7EC(v643);
      if (v322)
      {
        sub_10001BBFC();
        sub_1002A2BB0();
        sub_10000E7EC(v643);
        if (!v322)
        {
          sub_1000180EC(v643, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_1000436AC(&v893);
      sub_100051BBC();
      sub_10000554C(v642);
      if (v322)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v642);
        if (!v322)
        {
          sub_1000180EC(v642, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000113EC();
      sub_100051BBC();
      v645 = sub_10000C7F0();
      sub_10001627C(v645, v646);
      if (v322)
      {
        sub_10000FA9C();
        sub_1002A2BB0();
        sub_100005404(v637);
        if (!v322)
        {
          sub_1000180EC(v637, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100079478();
      sub_1000421C0();
      sub_10003A0FC();
      v647 = sub_100087104();
      sub_100003B6C(v647);
      sub_10000E80C();
      v463 = v908;
      v464 = v906;
      v465 = v875;
      v466 = v876;
      v467 = v881;
      v468 = v886;
      v469 = v891[0];
      v648 = &v918;
      goto LABEL_221;
    default:
      v295 = v916;
      v909 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
      if (*(v916 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications) == 1)
      {
        v904 = v287;
        v908 = v292;
        sub_10000FA9C();
        v905 = v296;
        sub_1002A2BB0();
        v297 = v911;
        sub_1002A2BB0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1000CA5D8(v275, type metadata accessor for ViewState.SecondaryViewState);
        }

        else
        {
          v649 = *v275;
          if (*&v294[*(v297 + 36) + 8] != 1 || (v650 = [objc_opt_self() currentDevice], objc_msgSend(v650, "userInterfaceIdiom"), v650, (v294[*(v911 + 28)] & 1) != 0))
          {
            sub_1000A7B74();
            sub_1002A2BB0();
            sub_10089E774(v265);
            sub_1000CA5D8(v270, type metadata accessor for LocationViewerActiveLocationState);
            v651 = Location.Identifier.kind.getter();
            (*(v776 + 8))(v265, v260);
            v652 = sub_10074A0C8(v651 & 1, 1);
            v299 = v914;
            if (v652)
            {
              v653 = sub_100003BCC(v808);
              v654 = v915;
              sub_10001B350(v653, v655, v656, v915);
              v657 = sub_100003BCC(v809);
              sub_10001B350(v657, v658, v659, v917);
              v660 = sub_100003BCC(&v810);
              sub_10001B350(v660, v661, v662, v913);
              v663 = sub_100003BCC(&v811);
              sub_10001B350(v663, v664, v665, v299);
              v666 = sub_100003BCC(&v812);
              sub_10001B350(v666, v667, v668, v910);
              v669 = sub_100003BCC(v813);
              v670 = v912;
              sub_10001B350(v669, v671, v672, v912);
              v673 = sub_100003BCC(v814);
              sub_10001B350(v673, v674, v675, v911);
              v676 = v777;
              v677 = v906;
              swift_storeEnumTagMultiPayload();
              sub_10000E7B0();
              sub_10001B350(v678, v679, v680, v677);
              sub_1000227DC();
              sub_100037798();
              sub_1000519E0();
              sub_100095588();
              sub_100003BFC(v676);
              if (v322)
              {
                sub_1000180EC(v676, &qword_100CA65E8, &unk_100A31410);
              }

              else
              {
                sub_1000141BC();
                sub_1000CA5D8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v744);
                sub_100005518();
                sub_100072EC8();
              }

              v745 = v769;
              sub_100005518();
              sub_100072EC8();
              v746 = *(v295 + 16);
              LODWORD(v906) = *(v295 + 24);
              sub_1000519E0();
              sub_100095588();
              sub_100005404(v676);
              v908 = v746;
              if (v322)
              {
                sub_1000175E8();
                sub_1002A2BB0();
                v747 = sub_100007FC4();
                v749 = sub_100024D10(v747, v748, v654);

                v750 = v771;
                if (v749 != 1)
                {
                  sub_1000180EC(v676, &qword_100CA6640, qword_100A32640);
                }
              }

              else
              {
                sub_10000E7D4();
                sub_100072EC8();

                v750 = v771;
              }

              sub_1000131DC();
              sub_100095588();
              v751 = sub_1000162A4();
              v752 = v917;
              sub_1000038B4(v751, v753, v917);
              if (v322)
              {
                sub_10002014C(v916 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
                sub_1000134E0();
                sub_1002A2BB0();
                v754 = sub_1000162A4();
                sub_1000038B4(v754, v755, v752);
                v756 = v773;
                v757 = v770;
                if (!v322)
                {
                  sub_1000180EC(v746, &qword_100CA6638, &unk_100A31460);
                }
              }

              else
              {
                sub_100003BB4();
                sub_100072EC8();
                v756 = v773;
                v757 = v770;
              }

              sub_1000131E8(&v810);
              sub_100095588();
              sub_10000556C(v745);
              if (v322)
              {
                sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
                sub_1002A2BB0();
                sub_10000556C(v745);
                if (!v322)
                {
                  sub_1000180EC(v745, &qword_100CA6630, &unk_100A32630);
                }
              }

              else
              {
                sub_10000E7BC();
                sub_100072EC8();
              }

              sub_1000870F8(&v811);
              sub_100095588();
              v758 = sub_100007FC4();
              sub_1000038B4(v758, v759, v914);
              if (v322)
              {
                sub_10004962C();
                sub_1002A2BB0();
                sub_100003BDC(v757);
                if (!v322)
                {
                  sub_1000180EC(v757, &qword_100CA6628, &unk_100A31450);
                }
              }

              else
              {
                sub_100028144();
                sub_100072EC8();
              }

              sub_1000E31B8(&v812);
              sub_100095588();
              sub_10000E7EC(v750);
              if (v322)
              {
                sub_10001BBFC();
                sub_1002A2BB0();
                sub_10000E7EC(v750);
                if (!v322)
                {
                  sub_1000180EC(v750, &qword_100CA6620, &unk_100A32620);
                }
              }

              else
              {
                sub_1000134C8();
                sub_100072EC8();
              }

              sub_1000436AC(v813);
              sub_100095588();
              sub_10003797C();
              if (v322)
              {
                sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
                sub_1002A2BB0();
                sub_10003797C();
                if (!v322)
                {
                  sub_1000180EC(v756, &qword_100CA6618, &unk_100A31440);
                }
              }

              else
              {
                sub_100003B9C();
                sub_100072EC8();
              }

              v917 = v649;
              sub_1000113EC();
              sub_100095588();
              v760 = sub_10000C7F0();
              sub_10001627C(v760, v761);
              if (v322)
              {
                sub_10000FA9C();
                v762 = v904;
                sub_1002A2BB0();
                sub_100005404(v670);
                if (!v322)
                {
                  sub_1000180EC(v670, &qword_100CA6610, &unk_100A32610);
                }
              }

              else
              {
                sub_100003B84();
                v762 = v904;
                sub_100072EC8();
              }

              sub_100005518();
              sub_100079478();
              sub_1000B0E48();
              sub_1000B0C14();
              v763 = type metadata accessor for MainState._Storage(0);
              sub_100003B6C(v763);
              sub_1000162BC();
              v768 = v670;
              v510 = v764;
              sub_10003E038(v908, v906, v778, v779, v780, v781, v782, v783, v762, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, *(&v777 + 1), v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792);
              sub_100052654();

              sub_1000180EC(v777, &qword_100CA65E8, &unk_100A31410);
              sub_1000180EC(v789, &qword_100CA6610, &unk_100A32610);
              sub_1000180EC(v788, &qword_100CA6618, &unk_100A31440);
              sub_1000180EC(v787, &qword_100CA6620, &unk_100A32620);
              sub_1000180EC(*(&v786 + 1), &qword_100CA6628, &unk_100A31450);
              sub_1000180EC(v786, &qword_100CA6630, &unk_100A32630);
              sub_1000180EC(v785, &qword_100CA6638, &unk_100A31460);
              v743 = v808;
              goto LABEL_258;
            }

            v301 = v911;
            v300 = v912;
            v302 = v910;
            v303 = v913;
            v298 = v915;
LABEL_226:
            v699 = v906;
            v700 = sub_100003BCC(v863);
            sub_10001B350(v700, v701, v702, v298);
            v703 = sub_100003BCC(v864);
            sub_10001B350(v703, v704, v705, v917);
            v706 = sub_100003BCC(v865);
            sub_10001B350(v706, v707, v708, v303);
            v709 = sub_100003BCC(v866);
            sub_10001B350(v709, v710, v711, v299);
            v712 = sub_100003BCC(v867);
            sub_10001B350(v712, v713, v714, v302);
            v715 = sub_100003BCC(v868);
            sub_10001B350(v715, v716, v717, v300);
            v718 = sub_100003BCC(v869);
            sub_10001B350(v718, v719, v720, v301);
            v721 = v807;
            *v807 = 0;
            swift_storeEnumTagMultiPayload();
            sub_10000E7B0();
            sub_10001B350(v722, v723, v724, v699);
            sub_1000227DC();
            sub_100037798();
            sub_1000131DC();
            sub_100095588();
            sub_10000554C(v721);
            if (v322)
            {
              sub_1000180EC(v721, &qword_100CA65E8, &unk_100A31410);
            }

            else
            {
              sub_1000141BC();
              sub_1000CA5D8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v725);
              sub_100005518();
              sub_100072EC8();
            }

            v726 = v790;
            sub_100005518();
            sub_100072EC8();
            v727 = *(v295 + 16);
            LODWORD(v913) = *(v295 + 24);
            sub_1000C893C(v863);
            sub_100095588();
            sub_100005404(v726);
            v728 = v794;
            v915 = v727;
            if (v322)
            {
              sub_1000175E8();
              sub_1002A2BB0();
              v729 = sub_10000C834();
              sub_100021CF8(v729, v730);

              if (v298 != 1)
              {
                sub_1000180EC(v726, &qword_100CA6640, qword_100A32640);
              }
            }

            else
            {
              sub_10000E7D4();
              sub_100072EC8();
            }

            sub_10003778C();
            sub_100095588();
            v731 = sub_1000131C4();
            if (sub_100024D10(v731, v732, v917) == 1)
            {
              v733 = v298;
              sub_10002014C(v295 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
              sub_1000134E0();
              sub_1002A2BB0();
              sub_100003BFC(v298);
              v734 = v792;
              v735 = v791;
              if (!v322)
              {
                sub_1000180EC(v733, &qword_100CA6638, &unk_100A31460);
              }
            }

            else
            {
              sub_100003BB4();
              sub_100072EC8();
              v734 = v792;
              v735 = v791;
            }

            v736 = v793;
            sub_100095588();
            sub_10000556C(v736);
            if (v322)
            {
              sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
              sub_1002A2BB0();
              sub_10000556C(v736);
              if (!v322)
              {
                sub_1000180EC(v736, &qword_100CA6630, &unk_100A32630);
              }
            }

            else
            {
              sub_10000E7BC();
              sub_100072EC8();
            }

            sub_1000E31B8(v866);
            sub_100095588();
            sub_10000554C(v728);
            if (v322)
            {
              sub_10004962C();
              sub_1002A2BB0();
              sub_10000554C(v728);
              if (!v322)
              {
                sub_1000180EC(v728, &qword_100CA6628, &unk_100A31450);
              }
            }

            else
            {
              sub_100028144();
              sub_100072EC8();
            }

            sub_100030224(v867);
            sub_100095588();
            sub_10000E7EC(v735);
            if (v322)
            {
              sub_10001BBFC();
              sub_1002A2BB0();
              sub_10000E7EC(v735);
              if (!v322)
              {
                sub_1000180EC(v735, &qword_100CA6620, &unk_100A32620);
              }
            }

            else
            {
              sub_1000134C8();
              sub_100072EC8();
            }

            sub_1000436AC(v868);
            sub_100095588();
            sub_10003797C();
            if (v322)
            {
              sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
              sub_1002A2BB0();
              sub_10003797C();
              if (!v322)
              {
                sub_1000180EC(v734, &qword_100CA6618, &unk_100A31440);
              }
            }

            else
            {
              sub_100003B9C();
              sub_100072EC8();
            }

            sub_1000113EC();
            sub_100095588();
            v737 = sub_10000C7F0();
            sub_1000038B4(v737, v738, v301);
            if (v322)
            {
              sub_10000FA9C();
              sub_1000436A0();
              sub_1002A2BB0();
              v739 = sub_10000C7F0();
              sub_1000038B4(v739, v740, v301);
              if (!v322)
              {
                sub_1000180EC(v300, &qword_100CA6610, &unk_100A32610);
              }
            }

            else
            {
              sub_100003B84();
              sub_1000436A0();
              sub_100072EC8();
            }

            sub_100005518();
            sub_100079478();
            sub_1000421C0();
            sub_10003A0FC();
            v741 = sub_100087104();
            sub_100003B6C(v741);
            sub_10000E80C();
            v510 = v742;
            sub_10003E038(v915, v913, v801, v802, v803, v804, v805, v806, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, *(&v777 + 1), v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792);
            sub_100052654();

            sub_1000180EC(v807, &qword_100CA65E8, &unk_100A31410);
            sub_1000180EC(v857, &qword_100CA6610, &unk_100A32610);
            sub_1000180EC(v856[3], &qword_100CA6618, &unk_100A31440);
            sub_1000180EC(v856[2], &qword_100CA6620, &unk_100A32620);
            sub_1000180EC(v856[1], &qword_100CA6628, &unk_100A31450);
            sub_1000180EC(v856[0], &qword_100CA6630, &unk_100A32630);
            sub_1000180EC(v855, &qword_100CA6638, &unk_100A31460);
            v743 = v863;
LABEL_258:
            sub_1000180EC(*(v743 - 32), &qword_100CA6640, qword_100A32640);
            return v510;
          }
        }

        v299 = v914;
        v298 = v915;
        sub_1000A7B74();
        v301 = v911;
        v300 = v912;
        v302 = v910;
        v303 = v913;
        goto LABEL_226;
      }

      v908 = v289;
      sub_100003934();
      sub_10001B350(v556, v557, v558, v915);
      v559 = sub_100003BCC(&v853);
      sub_10001B350(v559, v560, v561, v917);
      v562 = sub_100003BCC(v856);
      sub_10001B350(v562, v563, v564, v913);
      v565 = sub_100003BCC(&v857);
      sub_10001B350(v565, v566, v567, v914);
      v568 = sub_100003BCC(v858);
      sub_10001B350(v568, v569, v570, v910);
      v571 = sub_100003BCC(v859);
      sub_10001B350(v571, v572, v573, v912);
      v574 = sub_100003BCC(v860);
      sub_10001B350(v574, v575, v576, v911);
      v577 = v800;
      v578 = v906;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v579, v580, v581, v578);
      sub_1000227DC();
      sub_100037798();
      sub_1000519E0();
      sub_100051BBC();
      sub_10000554C(v577);
      if (v322)
      {
        sub_1000180EC(v577, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v681);
        sub_100005518();
        sub_100072EC8();
      }

      v682 = v795;
      sub_100005518();
      sub_100072EC8();
      v683 = *(v295 + 16);
      LODWORD(v905) = *(v295 + 24);
      sub_100051BBC();
      v684 = sub_1000162A4();
      v685 = v915;
      sub_10001627C(v684, v686);
      v687 = v799;
      v688 = v798;
      v906 = v683;
      if (v322)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        v689 = sub_1000162A4();
        sub_100021CF8(v689, v690);

        if (v685 != 1)
        {
          sub_1000180EC(v251, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      sub_1000C893C(&v853);
      sub_100051BBC();
      v691 = sub_10000C834();
      sub_1000038B4(v691, v692, v917);
      if (v322)
      {
        sub_10002014C(v295 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BFC(v682);
        v693 = v797;
        v694 = v796;
        if (!v322)
        {
          sub_1000180EC(v682, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v693 = v797;
        v694 = v796;
      }

      sub_1000870F8(v856);
      sub_100051BBC();
      sub_10000556C(v688);
      if (v322)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000556C(v688);
        if (!v322)
        {
          sub_1000180EC(v688, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
      }

      sub_1000E31B8(&v857);
      sub_100051BBC();
      sub_100003BDC(v687);
      if (v322)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100003BDC(v687);
        if (!v322)
        {
          sub_1000180EC(v687, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
      }

      sub_100030224(v858);
      sub_100051BBC();
      sub_10000E7EC(v694);
      if (v322)
      {
        sub_10001BBFC();
        sub_1002A2BB0();
        sub_10000E7EC(v694);
        if (!v322)
        {
          sub_1000180EC(v694, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_1000436AC(v859);
      sub_100051BBC();
      sub_10000554C(v693);
      if (v322)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v693);
        if (!v322)
        {
          sub_1000180EC(v693, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000113EC();
      sub_100051BBC();
      v695 = sub_10000C7F0();
      sub_10001627C(v695, v696);
      if (v322)
      {
        sub_10000FA9C();
        sub_1000436A0();
        sub_1002A2BB0();
        sub_100005404(v683);
        if (!v322)
        {
          sub_1000180EC(v683, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100003B84();
        sub_1000436A0();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100079478();
      sub_1000421C0();
      sub_10003A0FC();
      v697 = sub_100087104();
      sub_100003B6C(v697);
      sub_10000E80C();
      v463 = v906;
      v464 = v905;
      v465 = v824;
      v466 = v825;
      v467 = v826;
      v468 = v827;
      v469 = v828;
      v648 = &v852;
LABEL_221:
      v470 = *(v648 - 32);
LABEL_222:
      v510 = v462;
      sub_10003E038(v463, v464, v465, v466, v467, v468, v469, v470, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, *(&v777 + 1), v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792);
      sub_100052654();

LABEL_223:

      return v510;
  }
}

uint64_t sub_1002A2BB0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_1002A2C08(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, int a7, double a8, double a9)
{
  v189 = a7;
  v194 = a6;
  v198 = a4;
  v15 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v188 = &v184 - v17;
  v190 = type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v187 = v20 - v19;
  v21 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v192 = &v184 - v23;
  v24 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v184 - v26;
  v28 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v29);
  v31 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v195 = (&v184 - v33);
  v34 = sub_10022C350(&qword_100CA6898, &unk_100A3FA90);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  v197 = &v184 - v36;
  v196 = type metadata accessor for OpenL2Descriptor(0);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_1000037D8();
  v40 = (v39 - v38);
  v199 = type metadata accessor for ActivityAction(0);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000037D8();
  v200 = (v43 - v42);
  v44 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v45 = sub_100003AE8(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v50 = &v184 - v49;
  if (a2)
  {
    v51 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v51 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v51)
    {
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4(&qword_100CA2760);
      }

      v91 = type metadata accessor for Logger();
      sub_10000703C(v91, qword_100D90C78);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v204[0] = v95;
        *v94 = 141558275;
        sub_1000182C4();
        *(v94 + 4) = v96;
        *(v94 + 12) = 2081;
        v202 = a8;
        v203 = a9;
        type metadata accessor for CLLocationCoordinate2D(0);
        v97 = String.init<A>(describing:)();
        v99 = sub_100078694(v97, v98, v204);

        *(v94 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v92, v93, "Encountered an empty location name while handling a coordinate activity. coordinate=%{private,mask.hash}s", v94, 0x16u);
        sub_100006F14(v95);
        sub_100003884(v95);
        sub_100003884(v94);
      }

      v100 = type metadata accessor for Date();
      sub_10000E830(v50, v101, v102, v100);
      sub_100066E08();
      v103 = Dictionary.init(dictionaryLiteral:)();
      v104 = sub_100017600();
      sub_1002A2C08(0, 0, 18, v50, v103, 0, 0, v104, v105);

      v106 = &unk_100CB2CF0;
      v107 = &unk_100A2D7F0;
      v108 = v50;
      goto LABEL_24;
    }
  }

  v186 = v48;
  v191 = v40;
  v52 = a3;
  v193 = a5;
  v53 = v201;
  sub_1000161C0(v201 + 4, v201[7]);
  sub_100017600();
  sub_100589B78();
  if ((v54 & 1) == 0)
  {
    sub_1000161C0(v53 + 4, v53[7]);
    sub_100017600();
    v185 = a2;
    sub_1001A34D0(a1, a2);
    if (sub_100024D10(v27, 1, v28) == 1)
    {
      sub_1000180EC(v27, &qword_100CA6890, &qword_100A31680);
      v79 = v52;
      if (v194)
      {
        if (qword_100CA2760 != -1)
        {
          sub_10000FAB4(&qword_100CA2760);
        }

        v80 = type metadata accessor for Logger();
        sub_10000703C(v80, qword_100D90C78);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (sub_10000C79C(v82))
        {
          *swift_slowAlloc() = 0;
          sub_1000133FC(&_mh_execute_header, v83, v84, "CoordinateHandler was requested to open saved location but did not find it, reloading...");
          sub_100007E54();
        }

        v85 = type metadata accessor for TaskPriority();
        sub_10000E830(v192, v86, v87, v85);
        sub_1000D47CC(v198, v50);
        v88 = (*(v186 + 80) + 73) & ~*(v186 + 80);
        v89 = swift_allocObject();
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 32) = v201;
        *(v89 + 40) = a8;
        *(v89 + 48) = a9;
        v90 = v185;
        *(v89 + 56) = a1;
        *(v89 + 64) = v90;
        *(v89 + 72) = v79;
        sub_100237E84(v50, v89 + v88);
        *(v89 + ((v47 + v88 + 7) & 0xFFFFFFFFFFFFFFF8)) = v193;

        sub_1006C0138();

        return;
      }

      v195 = a1;
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4(&qword_100CA2760);
      }

      v123 = type metadata accessor for Logger();
      sub_10000703C(v123, qword_100D90C78);
      v124 = v185;

      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v204[0] = v128;
        *v127 = 141558787;
        sub_1000182C4();
        *(v127 + 4) = v129;
        *(v127 + 12) = 2081;
        v202 = a8;
        v203 = a9;
        type metadata accessor for CLLocationCoordinate2D(0);
        v130 = String.init<A>(describing:)();
        v132 = sub_100078694(v130, v131, v204);

        *(v127 + 14) = v132;
        *(v127 + 22) = 2160;
        sub_1000182C4();
        *(v127 + 24) = v133;
        *(v127 + 32) = 2081;
        v134 = v195;
        if (v124)
        {
          v135 = v195;
        }

        else
        {
          v135 = 7104878;
        }

        if (v124)
        {
          v136 = v124;
        }

        else
        {
          v136 = 0xE300000000000000;
        }

        v137 = sub_100078694(v135, v136, v204);

        *(v127 + 34) = v137;
        _os_log_impl(&_mh_execute_header, v125, v126, "CoordinateHandler handling coordinate that isn't in our locations; coordinate=%{private,mask.hash}s, name=%{private,mask.hash}s", v127, 0x2Au);
        swift_arrayDestroy();
        sub_100003884(v128);
        sub_100007E54();

        v138 = v201;
      }

      else
      {

        v138 = v201;
        v134 = v195;
      }

      sub_1000161C0(v138 + 4, v138[7]);
      sub_100017600();
      sub_10058A09C();
      if ((v160 & 1) == 0)
      {
        sub_1000244F0();
        v166 = v200;
        *v200 = a8;
        v166[1] = a9;
        *(v166 + 2) = v134;
        *(v166 + 3) = v124;
        *(v166 + 32) = v189 & 1;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_100003940();
        v167 = static VerticalSizingBehaviorKey.defaultValue.getter();

        sub_100366814(v166, 0, v167 & 1);
        sub_10000558C();
        sub_1002A4304(v166, v168);
        if (v79 != 18)
        {
          v169 = v196;
          v170 = *(v196 + 24);
          v171 = type metadata accessor for Location();
          v172 = v191;
          sub_10000E830(&v191[v170], v173, v174, v171);
          sub_1000D47CC(v198, &v172[v169[9]]);
          *v172 = v79;
          v172[1] = 1;
          v175 = &v172[v169[7]];
          *v175 = a8;
          v175[1] = a9;
          *(v175 + 16) = 0;
          sub_100031480(&v172[v169[8]]);
          *&v172[v169[10]] = v193;
          sub_1000161C0(v138 + 19, v138[22]);
          sub_10001E6F8();
          v176 = v197;
          sub_1002A42A8(v172, v197, v177);
          sub_10001B350(v176, 0, 1, v169);

          sub_100364F6C(v176);
          sub_1000180EC(v176, &qword_100CA6898, &unk_100A3FA90);
          sub_10001BC14();
          v78 = v172;
          goto LABEL_44;
        }

        return;
      }

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v162))
      {
        *swift_slowAlloc() = 0;
        sub_1000133FC(&_mh_execute_header, v163, v164, "A location that matches the given coordinate and location name is already being previewed.");
        sub_100007E54();
      }

      if (v79 == 18)
      {
        return;
      }

      sub_1000161C0(v138 + 4, v138[7]);
      v165 = v188;
      sub_10058A254(v188);
      if (sub_100024D10(v165, 1, v190) == 1)
      {
        v106 = &qword_100CA65C8;
        v107 = &unk_100A31670;
        v108 = v165;
LABEL_24:
        sub_1000180EC(v108, v106, v107);
        return;
      }

      v109 = v187;
      sub_1001875A4(v165, v187, type metadata accessor for PreviewLocation);
      sub_10003C284();
      sub_1006E6234(v178);
      sub_1000205D4();
      *v126 = v79;
      v126[1] = 1;
      v179 = &v126[v134[7]];
      *v179 = a8;
      v179[1] = a9;
      *(v179 + 16) = 0;
      sub_100031480(&v126[v134[8]]);
      *&v126[v134[10]] = v193;
      sub_1000161C0(v138 + 19, v138[22]);
      sub_10001E6F8();
      sub_10002C548(v180, v181, v182);
      sub_10002815C();

      sub_100364F6C(v138);
      sub_1000180EC(v138, &qword_100CA6898, &unk_100A3FA90);
      sub_10001BC14();
      sub_1002A4304(v126, v183);
      v159 = type metadata accessor for PreviewLocation;
    }

    else
    {
      v109 = v195;
      sub_1001875A4(v27, v195, &type metadata accessor for SavedLocation);
      v110 = v52;
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4(&qword_100CA2760);
      }

      v111 = type metadata accessor for Logger();
      sub_10000703C(v111, qword_100D90C78);
      v112 = sub_100003C1C();
      sub_1002A42A8(v112, v31, v113);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v202 = *&v117;
        *v116 = 141558275;
        sub_1000182C4();
        *(v116 + 4) = v118;
        *(v116 + 12) = 2081;
        sub_1002A435C();
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = v120;
        sub_100019244();
        v122 = sub_100078694(v119, v121, &v202);

        *(v116 + 14) = v122;
        _os_log_impl(&_mh_execute_header, v114, v115, "CoordinateHandler found existing location for coordinate; opening location viewer; location=%{private,mask.hash}s", v116, 0x16u);
        sub_100006F14(v117);
        sub_100003884(v117);
        sub_100003884(v116);
      }

      else
      {

        sub_100019244();
      }

      v139 = v201;
      sub_1000244F0();
      v140 = sub_100003C1C();
      v141 = v200;
      sub_1002A42A8(v140, v200, v142);
      swift_storeEnumTagMultiPayload();
      sub_100003940();
      v143 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
      sub_100003940();
      v144 = static VerticalSizingBehaviorKey.defaultValue.getter();
      sub_1000113F8(v144);
      sub_10000558C();
      sub_1002A4304(v141, v145);
      if (v110 != 18)
      {
        sub_10003C284();
        SavedLocation.location.getter();
        SavedLocation.coordinate.getter();
        v147 = v146;
        v149 = v148;
        v150 = SavedLocation.name.getter();
        v152 = v151;
        sub_1000205D4();
        *v143 = v110;
        v143[1] = 0;
        v153 = &v143[v141[7]];
        *v153 = v147;
        *(v153 + 1) = v149;
        v153[16] = 0;
        v154 = &v143[v141[8]];
        *v154 = v150;
        v154[1] = v152;
        *&v143[v141[10]] = v193;
        sub_1000161C0((v139 + 152), *(v139 + 176));
        sub_10001E6F8();
        sub_10002C548(v155, v156, v157);
        sub_10002815C();
        sub_100364F6C(v139);
        sub_1000180EC(v139, &qword_100CA6898, &unk_100A3FA90);
        sub_10001BC14();
        sub_1002A4304(v143, v158);
      }

      v159 = &type metadata accessor for SavedLocation;
    }

    v77 = v159;
    v78 = v109;
    goto LABEL_44;
  }

  if (qword_100CA2760 != -1)
  {
    sub_10000FAB4(&qword_100CA2760);
  }

  v55 = type metadata accessor for Logger();
  sub_10000703C(v55, qword_100D90C78);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = sub_10000C79C(v57);
  v59 = v201;
  v60 = v52;
  if (v58)
  {
    *swift_slowAlloc() = 0;
    sub_1000133FC(&_mh_execute_header, v61, v62, "CoordinateHandler found existing location for coordinate but it matched a location coalesced with the current location");
    sub_100007E54();
  }

  sub_1000244F0();
  v63 = v200;
  swift_storeEnumTagMultiPayload();
  sub_100003940();
  static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  sub_100003940();
  v64 = static VerticalSizingBehaviorKey.defaultValue.getter();
  sub_1000113F8(v64);
  sub_10000558C();
  sub_1002A4304(v63, v65);
  if (v52 != 18)
  {
    v66 = v196;
    v67 = *(v196 + 24);
    v68 = type metadata accessor for Location();
    v69 = v191;
    sub_10000E830(&v191[v67], v70, v71, v68);
    sub_1000205D4();
    *v69 = v60;
    v69[1] = 0;
    v72 = &v69[v66[7]];
    *v72 = 0;
    *(v72 + 1) = 0;
    v72[16] = 1;
    v73 = &v69[v66[8]];
    *v73 = 0;
    *(v73 + 1) = 0;
    *&v69[v66[10]] = v193;
    sub_1000161C0((v59 + 152), *(v59 + 176));
    sub_10001E6F8();
    sub_10002C548(v74, v75, v76);
    sub_10002815C();
    sub_100364F6C(v59);
    sub_1000180EC(v59, &qword_100CA6898, &unk_100A3FA90);
    sub_10001BC14();
    v78 = v69;
LABEL_44:
    sub_1002A4304(v78, v77);
  }
}

uint64_t sub_1002A3B1C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  *(v10 + 56) = a10;
  *(v10 + 64) = v14;
  *(v10 + 112) = a9;
  *(v10 + 40) = a7;
  *(v10 + 48) = a8;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 16) = a6;
  v11 = *(sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0) - 8);
  *(v10 + 72) = v11;
  *(v10 + 80) = *(v11 + 64);
  *(v10 + 88) = swift_task_alloc();
  sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  *(v10 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1002A3C3C, 0, 0);
}

uint64_t sub_1002A3C3C()
{
  v1 = *(v0 + 16);
  v2 = v1[31];
  v3 = v1[32];
  sub_1000161C0(v1 + 28, v2);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1002A3CF4;

  return dispatch thunk of SavedLocationsManagerType.reloadFromLocalStorage()(v2, v3);
}

uint64_t sub_1002A3CF4()
{

  return _swift_task_switch(sub_1002A3DF0, 0, 0);
}

uint64_t sub_1002A3DF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v21 = *(v0 + 112);
  v7 = *(v0 + 48);
  v20 = *(v0 + 40);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = type metadata accessor for TaskPriority();
  sub_10000E830(v2, v12, v13, v11);
  sub_1000D47CC(v5, v1);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v4 + 80) + 73) & ~*(v4 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v10;
  *(v17 + 40) = v9;
  *(v17 + 48) = v8;
  *(v17 + 56) = v20;
  *(v17 + 64) = v7;
  *(v17 + 72) = v21;
  sub_100237E84(v1, v17 + v15);
  *(v17 + v16) = v6;
  sub_1006C0138();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002A3F80(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  *(v10 + 56) = a10;
  *(v10 + 64) = v15;
  *(v10 + 80) = a9;
  *(v10 + 40) = a7;
  *(v10 + 48) = a8;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 16) = a6;
  type metadata accessor for MainActor();
  *(v10 + 72) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A4030, v12, v11);
}

uint64_t sub_1002A4030()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 80);

  v6 = sub_100017600();
  sub_1002A2C08(v4, v3, v5, v2, v1, 0, 0, v6, v7);
  v8 = *(v0 + 8);

  return v8();
}

void *sub_1002A40E0()
{

  sub_100006F14(v0 + 4);
  sub_100006F14(v0 + 9);
  sub_100006F14(v0 + 14);
  sub_100006F14(v0 + 19);

  sub_100006F14(v0 + 28);
  return v0;
}

uint64_t sub_1002A4144()
{
  sub_1002A40E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1002A419C()
{
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003AE8(v1);
  sub_100074678();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  sub_1000141D4(v2);
  sub_100031BD8();

  return sub_1002A3B1C(v11, v12, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002A42A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1002A4304(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1002A435C()
{
  result = qword_100CA68A0[0];
  if (!qword_100CA68A0[0])
  {
    v3 = type metadata accessor for SavedLocation();
    result = swift_getWitnessTable(&protocol conformance descriptor for SavedLocation, v3, v0, v1);
    atomic_store(result, qword_100CA68A0);
  }

  return result;
}

uint64_t sub_1002A43B4()
{
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003AE8(v1);
  sub_100074678();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  sub_1000141D4(v2);
  sub_100031BD8();

  return sub_1002A3F80(v11, v12, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002A44C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566BE4(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_nextHourPrecipitation, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v331)
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v332);
  if (v333)
  {
    goto LABEL_28;
  }

  v308(v154, v332[0], v332[1], v332[2], v332[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v334);
  if (v335)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v334[0], v334[1], v334[2], v334[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v336);
  if (v337)
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v338);
  if (v339)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v338[0], v338[1], v338[2], v338[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v340);
  if (v341)
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v342);
  if (v343)
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v344);
  if (v345)
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v346);
  if (v347)
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v348);
  if ((v349 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v348[0], v348[1], v348[2], v348[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v350);
    if ((v351 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v352);
      if ((v353 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v354);
        if ((v355 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v354[0], v354[1], v354[2], v354[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v232, &v311);
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A5B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002A5BC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2838 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v4 != 1)
  {
    return 0;
  }

  return a1;
}

void sub_1002A5C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000703C(v9, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = sub_100078694(a4, a5, &v18);
      *(v11 + 12) = 2080;
      v12 = StaticString.description.getter();
      v14 = sub_100078694(v12, v13, &v18);

      *(v11 + 14) = v14;
      *(v11 + 22) = 2080;
      _StringGuts.grow(_:)(22);

      v15._countAndFlagsBits = CGSize.debugDescription.getter();
      String.append(_:)(v15);

      v16 = sub_100078694(0xD000000000000014, 0x8000000100ABD7F0, &v18);

      *(v11 + 24) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v10, "%s | %s: %s", v11, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A5EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000703C(v8, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v10 = 136315650;
      *(v10 + 4) = sub_100078694(a4, a5, &v17);
      *(v10 + 12) = 2080;
      v11 = StaticString.description.getter();
      v13 = sub_100078694(v11, v12, &v17);

      *(v10 + 14) = v13;
      *(v10 + 22) = 2080;
      _StringGuts.grow(_:)(25);

      swift_beginAccess();
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15 = sub_100078694(0xD000000000000017, 0x8000000100ABD790, &v17);

      *(v10 + 24) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v9, "%s | %s: %s", v10, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A6178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t *a7, void *a8)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000703C(v10, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v12 = 136315650;
      *(v12 + 4) = sub_100078694(a4, a5, &v26);
      *(v12 + 12) = 2080;
      v13 = StaticString.description.getter();
      v14 = v11;
      v16 = sub_100078694(v13, v15, &v26);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2080;
      _StringGuts.grow(_:)(41);

      swift_beginAccess();
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 0x72206C6C6957202ELL;
      v18._object = 0xEF203A7461657065;
      String.append(_:)(v18);
      swift_beginAccess();
      swift_beginAccess();
      sub_1002D6C88();
      v20 = (v19 & 1) == 0;
      if (v19)
      {
        v21 = 0x65736C6166;
      }

      else
      {
        v21 = 1702195828;
      }

      if (v20)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v23 = v22;
      String.append(_:)(*&v21);

      v24 = sub_100078694(0xD000000000000016, 0x8000000100ABD770, &v26);

      *(v12 + 24) = v24;
      _os_log_impl(&_mh_execute_header, oslog, v14, "%s | %s: %s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A64B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v14);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v14);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_100078694(0xD000000000000020, 0x8000000100ABD630, &v14);
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A66B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v14);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v14);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_100078694(0xD000000000000031, 0x8000000100ABD660, &v14);
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000703C(v11, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v13 = 136315650;
      *(v13 + 4) = sub_100078694(a4, a5, &v22);
      *(v13 + 12) = 2080;
      v14 = StaticString.description.getter();
      v16 = sub_100078694(v14, v15, &v22);

      *(v13 + 14) = v16;
      *(v13 + 22) = 2080;
      _StringGuts.grow(_:)(49);

      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 0x69646E756F62202CLL;
      v18._object = 0xEF3D74636552676ELL;
      String.append(_:)(v18);
      v19._countAndFlagsBits = CGRect.debugDescription.getter();
      String.append(_:)(v19);

      v20 = sub_100078694(0xD00000000000001ELL, 0x8000000100ABD440, &v22);

      *(v13 + 24) = v20;
      _os_log_impl(&_mh_execute_header, oslog, v12, "%s | %s: %s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  if (!a5)
  {
LABEL_9:

    sub_1002AB010(a7);
    return;
  }

  if (qword_100CA2698 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000703C(v15, qword_100D90A30);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_9;
  }

  v18 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v18 = 136315650;
  *(v18 + 4) = sub_100078694(a4, a5, &v32);
  *(v18 + 12) = 2080;
  v19 = StaticString.description.getter();
  v21 = sub_100078694(v19, v20, &v32);

  *(v18 + 14) = v21;
  *(v18 + 22) = 2080;
  _StringGuts.grow(_:)(65);
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  v22._object = 0x8000000100ABD4B0;
  String.append(_:)(v22);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x6E6F706D6F63202CLL;
  v24._object = 0xEC0000003D746E65;
  String.append(_:)(v24);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v25 = *(a7 + 56);
    if (*(v25 + 16) > a6)
    {
      v26 = v25 + 104 * a6;
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);

      v29._countAndFlagsBits = v27;
      v29._object = v28;
      String.append(_:)(v29);

      v30._object = 0x8000000100ABD4D0;
      v30._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v30);
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v31 = sub_100078694(0, 0xE000000000000000, &v32);

      *(v18 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s | %s: %s", v18, 0x20u);
      swift_arrayDestroy();

      sub_1002AB010(a7);
      return;
    }
  }

  __break(1u);
}

void sub_1002A6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  if (!a5)
  {
LABEL_9:

    sub_1002AB010(a7);
    return;
  }

  if (qword_100CA2698 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000703C(v15, qword_100D90A30);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_9;
  }

  v18 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v18 = 136315650;
  *(v18 + 4) = sub_100078694(a4, a5, &v32);
  *(v18 + 12) = 2080;
  v19 = StaticString.description.getter();
  v21 = sub_100078694(v19, v20, &v32);

  *(v18 + 14) = v21;
  *(v18 + 22) = 2080;
  _StringGuts.grow(_:)(96);
  v22._countAndFlagsBits = 0xD00000000000003DLL;
  v22._object = 0x8000000100ABD4F0;
  String.append(_:)(v22);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x6E6F706D6F63202CLL;
  v24._object = 0xEC0000003D746E65;
  String.append(_:)(v24);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v25 = *(a7 + 56);
    if (*(v25 + 16) > a6)
    {
      v26 = v25 + 104 * a6;
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);

      v29._countAndFlagsBits = v27;
      v29._object = v28;
      String.append(_:)(v29);

      v30._object = 0x8000000100ABD4D0;
      v30._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v30);
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v31 = sub_100078694(0, 0xE000000000000000, &v32);

      *(v18 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s | %s: %s", v18, 0x20u);
      swift_arrayDestroy();

      sub_1002AB010(a7);
      return;
    }
  }

  __break(1u);
}

void sub_1002A7290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v16);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v16);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      _StringGuts.grow(_:)(42);

      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = sub_100078694(0xD000000000000028, 0x8000000100ABD530, &v16);

      *(v9 + 24) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
  }
}

double sub_1002A754C()
{
  v1 = *(v0 + 40);
  sub_1002A5C78("sizeThatFits(proposedSize:subviews:context:cache:)", 50, 2, *v0, *(v0 + 8), v1, *(v0 + 48));
  return v1;
}

void sub_1002A7598()
{
  sub_10003B914();
  v230 = v1;
  v3 = v2;
  v236 = v4;
  v214 = type metadata accessor for _LazyLayout_PlacedSubview_V1();
  sub_1000037C4();
  v207 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v213 = v8 - v7;
  v9 = sub_10022C350(&qword_100CA6968, &qword_100A31920);
  sub_1000037C4();
  v233 = v10;
  __chkstk_darwin(v11);
  sub_100003848();
  v200 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  v217 = &v187 - v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v235 = v16;
  v221 = sub_10022C350(&qword_100CA6930, &qword_100A318F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v187 - v18;
  v20 = sub_10022C350(&qword_100CA6938, &qword_100A31900);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v187 - v22;
  v24 = type metadata accessor for _LazyLayout_Subview_V1();
  sub_1000037C4();
  v232 = v25;
  __chkstk_darwin(v26);
  sub_100003848();
  v238 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v209 = v29;
  v30 = sub_10022C350(&qword_100CA6940, &qword_100A31908);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_100003848();
  v229 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v228 = v34;
  v35 = sub_10022C350(&qword_100CA6948, &qword_100A31910);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v192 = v37;
  v191 = sub_10022C350(&qword_100CA6950, &qword_100A31918);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v237 = v39;
  v193 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsSequence();
  sub_1000037C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_100003848();
  v190 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_10000E70C();
  v194 = v45;
  type metadata accessor for _LazyLayout_PlacementContext_V1();
  sub_1000037C4();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_1000037D8();
  v51 = v50 - v49;
  v208 = *v0;
  v218 = v3;
  v219 = v0;
  v52 = v0[1];
  v53 = *(v47 + 16);
  v231 = v54;
  v53(v51, v3);
  v55 = v19;
  v224 = v19;
  v225 = v23;
  object = v24;
  v234 = v52;
  v227 = v24;
  if (v52)
  {
    if (qword_100CA2698 != -1)
    {
LABEL_70:
      sub_10001E714();
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000212C4(v57, qword_100D90A30);
    v58 = v234;

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = sub_1000205BC();
      LODWORD(v223) = v60;
      v62 = v61;
      v226 = sub_100011418();
      v247[0] = v226;
      *v62 = 136315650;
      *(v62 + 4) = sub_100078694(v208, v58, v247);
      *(v62 + 12) = 2080;
      sub_1000379A0();
      v63 = StaticString.description.getter();
      v222 = v59;
      sub_100078694(v63, v64, v247);
      sub_10002C564();
      *(v62 + 14) = object;
      *(v62 + 22) = 2080;
      v243 = 0;
      v244 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v241 = v243;
      v242 = v244;
      v65._countAndFlagsBits = 0x20656C6269736956;
      v65._object = 0xEE00203A74636572;
      String.append(_:)(v65);
      _LazyLayout_PlacementContext_V1.visibleRect.getter();
      v243 = v66;
      v244 = v67;
      v245 = v68;
      v246 = v69;
      type metadata accessor for CGRect(0);
      sub_100025088();
      _print_unlocked<A, B>(_:_:)();
      sub_100078694(v241, v242, v247);
      sub_10002C564();
      *(v62 + 24) = object;
      v55 = v224;
      v70 = v222;
      _os_log_impl(&_mh_execute_header, v222, v223, "%s | %s: %s", v62, 0x20u);
      v71 = v226;
      swift_arrayDestroy();
      sub_100003884(v71);
      object = v227;
      sub_100003884(v62);
    }

    else
    {
    }
  }

  (*(v47 + 8))(v51, v231);
  _LazyLayout_Subviews_V1.views(from:)();
  v249 = &_swiftEmptySetSingleton;
  v250 = &_swiftEmptySetSingleton;
  v248 = 0;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v72 = 0;
  v187 = v41;
  v188 = (v41 + 32);
  v189 = (v41 + 16);
  v236 = (v232 + 32);
  v226 = (v232 + 8);
  v197 = "ontext:cache:in:)";
  v216 = (v233 + 16);
  v212 = (v233 + 88);
  v211 = enum case for _LazyLayout_Subview_V1.SubviewResult.value<A>(_:);
  v206 = enum case for _LazyLayout_Subview_V1.SubviewResult.cancelled<A>(_:);
  v210 = (v233 + 8);
  v195 = " - unhandled case. Result=";
  v196 = "mentRect. Component frame=";
  v204 = v207 + 32;
  v205 = (v233 + 96);
  v199 = " - placement was cancelled.";
  v202 = (v207 + 8);
  v203 = v207 + 16;
  *&v73 = 136315650;
  v201 = v73;
  v41 = &_swiftEmptySetSingleton;
  v223 = v9;
  v47 = v221;
  do
  {
    v74 = __OFADD__(v72, 1);
    v75 = v72 + 1;
    if (v74)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v198 = v75;
    v248 = v75;
    sub_1000379A0();
    sub_1002A5EEC(v76, v77, v78, v208, v234, v79);
    v249 = v41;

    v80 = *v189;
    v81 = v192;
    v220 = v41;
    v82 = object;
    v83 = v193;
    v80(v192, v194, v193);
    (*v188)(v190, v81, v83);
    sub_100014218();
    sub_1002AAF90(&qword_100CA6958, v84, &protocol conformance descriptor for _LazyLayout_Subviews_V1.SubviewsSequence);
    v85 = v237;
    object = v82;
    v51 = v220;
    dispatch thunk of Sequence.makeIterator()();
    v215 = *(v191 + 36);
    *(v85 + v215) = 0;
    v233 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsIterator();
    sub_100008008();
    v87 = sub_1002AAF90(&qword_100CA6960, v86, &protocol conformance descriptor for _LazyLayout_Subviews_V1.SubviewsIterator);
    v231 = 0;
    v232 = v87;
    v88 = (v51 + 56);
    v41 = v55;
    v55 = v47;
    v222 = (v51 + 56);
    v47 = v225;
    while (1)
    {
LABEL_9:
      dispatch thunk of IteratorProtocol.next()();
      sub_1000038B4(v47, 1, object);
      if (v134)
      {
        sub_1000180EC(v47, &qword_100CA6938, &qword_100A31900);
        v89 = v229;
        sub_10001B350(v229, 1, 1, v55);
      }

      else
      {
        v90 = v9;
        v9 = v236;
        v91 = *v236;
        v51 = object;
        v92 = v209;
        (*v236)(v209, v47, v51);
        v93 = *(v55 + 48);
        v88 = v55;
        v55 = v41;
        v94 = v231;
        *v55 = v231;
        v95 = v92;
        object = v51;
        v91(v55 + v93, v95, v51);
        v74 = __OFADD__(v94, 1);
        v41 = v94 + 1;
        if (v74)
        {
          goto LABEL_68;
        }

        v231 = v41;
        *(v237 + v215) = v41;
        v89 = v229;
        sub_1002AB08C(v55, v229, &qword_100CA6930, &qword_100A318F8);
        sub_10001B350(v89, 0, 1, v88);
        v9 = v90;
        v41 = v55;
        sub_1000B9898();
        v51 = v220;
      }

      v96 = v89;
      v97 = v228;
      sub_1002AB08C(v96, v228, &qword_100CA6940, &qword_100A31908);
      sub_1000038B4(v97, 1, v55);
      if (v134)
      {
        break;
      }

      v98 = *v97;
      (*v236)(v238, v97 + *(v55 + 48), object);
      if (*(v51 + 16))
      {
        v99 = static Hasher._hash(seed:_:)();
        v100 = ~(-1 << *(v51 + 32));
        while (1)
        {
          v101 = v99 & v100;
          if (((*(&v88->isa + (((v99 & v100) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v99 & v100)) & 1) == 0)
          {
            break;
          }

          v99 = v101 + 1;
          if (*(*(v51 + 48) + 8 * v101) == v98)
          {
            v102 = sub_100020E14();
            v103(v102);
            goto LABEL_9;
          }
        }
      }

      if ((v98 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v104 = v219[4];
      if (v98 >= *(v104 + 16))
      {
        goto LABEL_66;
      }

      v47 = v219[7];
      v105 = *(v104 + 32 * v98 + 56);
      _LazyLayout_PlacementContext_V1.visibleRect.getter();
      sub_100021354();
      v41 = v230;
      _LazyLayout_Placements_V1.validRect.getter();
      v251.origin.x = sub_1000418D8();
      CGRectUnion(v251, v254);
      if (v98 >= *(v47 + 16))
      {
        goto LABEL_67;
      }

      sub_100021354();
      sub_1002AADD8(v47 + 104 * v98 + 32, &v243);
      sub_1000418D8();
      sub_10001760C();
      if (CGRectIntersectsRect(v252, v255))
      {
LABEL_24:
        _LazyLayout_Placements_V1.validRect.getter();
        sub_10001760C();
        CGRectUnion(v253, v256);
        _LazyLayout_Placements_V1.validRect.setter();
        object = v105;
        static UnitPoint.topLeading.getter();
        LOBYTE(v241) = 0;
        LOBYTE(v239[0]) = 0;
        v55 = v235;
        _LazyLayout_Subview_V1.place_v2(at:anchor:proposal:)();
        v47 = v217;
        v106 = *v216;
        (*v216)(v217, v55, v9);
        v107 = (*v212)(v47, v9);
        if (v107 == v211)
        {
          (*v205)(v47, v9);
          v108 = v207;
          v109 = v213;
          v110 = v47;
          v111 = v214;
          (*(v207 + 32))(v213, v110, v214);
          v112 = _LazyLayout_Placements_V1.subviews.modify();
          v114 = v113;
          sub_10051A918();
          v115 = *(*v114 + 16);
          sub_1002789B8(v115);
          v116 = *v114;
          *(v116 + 16) = v115 + 1;
          (*(v108 + 16))(v116 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v115, v109, v111);
          v112(&v241, 0);
          swift_beginAccess();
          sub_1006A11BC(v239, v98);
          swift_endAccess();
          v117 = sub_100025088();
          sub_1002AADD8(v117, v118);
          v55 = v221;
          v41 = v224;
          v47 = v225;
          object = v234;
          if (v234)
          {
            if (qword_100CA2698 != -1)
            {
              sub_10001E714();
              swift_once();
            }

            v119 = type metadata accessor for Logger();
            sub_1000212C4(v119, qword_100D90A30);

            v120 = Logger.logObject.getter();
            v121 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v120, v121))
            {
              sub_1000205BC();
              v88 = v55;
              v122 = sub_100051D1C();
              v123 = sub_10007469C(v122);
              *(v55 + 4) = sub_100078694(v123, v234, v124);
              *(v55 + 12) = 2080;
              sub_1000379A0();
              v125 = StaticString.description.getter();
              sub_1000D3E0C(v125, v126);
              sub_10002C564();
              *(v55 + 14) = object;
              *(v55 + 22) = 2080;
              sub_10003C29C();
              _StringGuts.grow(_:)(29);

              strcpy(v239, "Placed ");
              v239[1] = 0xE700000000000000;
              sub_1000C86E4();
              sub_10003BD14();
              v127._countAndFlagsBits = 0xD000000000000012;
              String.append(_:)(v127);
              sub_10001E728();
              v128._countAndFlagsBits = CGRect.debugDescription.getter();
              object = v128._object;
              String.append(_:)(v128);

              sub_10000E848();
              sub_10002C564();
              *(v55 + 24) = object;
              v41 = v224;
              sub_100020168(&_mh_execute_header, v120, v121, "%s | %s: %s");
              sub_100024068();
              sub_100003884(v122);
              sub_1000B9898();
              v47 = v225;
              sub_100003884(v129);
            }
          }

          sub_1002AAE34(&v241);
          (*v202)(v213, v214);
          v9 = v223;
          (*v210)(v235, v223);
          goto LABEL_55;
        }

        if (v107 == v206)
        {
          v136 = sub_100025088();
          sub_1002AADD8(v136, v137);
          sub_10003A110();
          if (v138)
          {
            v88 = v55;
            if (qword_100CA2698 != -1)
            {
              sub_10001E714();
              swift_once();
            }

            v139 = type metadata accessor for Logger();
            sub_1000212C4(v139, qword_100D90A30);
            object = v234;

            v140 = Logger.logObject.getter();
            v55 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v140, v55))
            {
              v141 = sub_1000205BC();
              v142 = sub_100011418();
              v240 = v142;
              *v141 = v201;
              *(v141 + 4) = sub_100078694(v208, object, &v240);
              *(v141 + 12) = 2080;
              sub_1000379A0();
              v143 = StaticString.description.getter();
              sub_1000D3E0C(v143, v144);
              sub_10002C564();
              *(v141 + 14) = object;
              *(v141 + 22) = 2080;
              sub_10003C29C();
              _StringGuts.grow(_:)(41);

              strcpy(v239, "NOT placing ");
              BYTE5(v239[1]) = 0;
              HIWORD(v239[1]) = -5120;
              sub_1000C86E4();
              sub_10003BD14();
              String.append(_:)(v145);
              sub_10000E848();
              sub_10002C564();
              *(v141 + 24) = object;
              v146 = v224;
              _os_log_impl(&_mh_execute_header, v140, v55, "%s | %s: %s", v141, 0x20u);
              swift_arrayDestroy();
              v147 = v142;
              v9 = v223;
              sub_100003884(v147);
              v148 = v141;
              v41 = v146;
              sub_100003884(v148);
            }

            v47 = v225;
            sub_1000B9898();
          }

          sub_1002AAE34(&v241);
          (*v210)(v235, v9);
          goto LABEL_55;
        }

        v165 = sub_100025088();
        sub_1002AADD8(v165, v166);
        v167 = v200;
        v106(v200, v235, v9);
        sub_10003A110();
        if (v168)
        {
          if (qword_100CA2698 != -1)
          {
            sub_10001E714();
            swift_once();
          }

          v169 = type metadata accessor for Logger();
          sub_1000212C4(v169, qword_100D90A30);
          v170 = v234;

          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v171, v172))
          {
            sub_1000205BC();
            v173 = sub_100051D1C();
            v174 = sub_10007469C(v173);
            *(v55 + 4) = sub_100078694(v174, v170, v175);
            *(v55 + 12) = 2080;
            sub_1000379A0();
            v176 = StaticString.description.getter();
            sub_1000D3E0C(v176, v177);
            sub_10002C564();
            *(v55 + 14) = v170;
            *(v55 + 22) = 2080;
            sub_10003C29C();
            _StringGuts.grow(_:)(42);
            sub_100024514();
            sub_1000C86E4();
            sub_10003BD14();
            String.append(_:)(v178);
            v167 = v200;
            v179 = v223;
            _print_unlocked<A, B>(_:_:)();
            sub_10000E848();
            sub_10002C564();
            *(v55 + 24) = v170;
            v180 = v224;
            v181 = v172;
            v9 = v179;
            v88 = v221;
            sub_100020168(&_mh_execute_header, v171, v181, "%s | %s: %s");
            swift_arrayDestroy();
            v182 = v173;
            v41 = v180;
            sub_100003884(v182);
            sub_1000B9898();
            v47 = v225;
            sub_100003884(v183);
          }

          else
          {

            v9 = v223;
            v167 = v200;
          }
        }

        sub_1002AAE34(&v241);
        v184 = *v210;
        (*v210)(v167, v9);
        v184(v235, v9);
        v185 = v227;
        (*v226)(v238, v227);
        sub_1002AAE34(&v243);
        v184(v217, v9);
        object = v185;
        v51 = v220;
      }

      else
      {
        v130 = v243;
        v131 = v244;
        v47 = v245;
        v241 = &type metadata for MapLocationContentComponent;
        sub_10022C350(&qword_100CA6978, qword_100A31930);
        object = String.init<A>(describing:)();
        v133 = v132;
        v55 = ObjectIdentifier.hashValue.getter();
        v134 = v130 == object && v131 == v133;
        if (v134)
        {

          v41 = v230;
          v9 = v223;
          if (v47 == v55)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v41 = v230;
          v9 = v223;
          if ((v135 & 1) != 0 && v47 == v55)
          {
            goto LABEL_24;
          }
        }

        v149 = sub_100025088();
        sub_1002AADD8(v149, v150);
        sub_10003A110();
        if (v151)
        {
          if (qword_100CA2698 != -1)
          {
            sub_10001E714();
            swift_once();
          }

          v152 = type metadata accessor for Logger();
          sub_1000212C4(v152, qword_100D90A30);
          object = v234;

          v153 = Logger.logObject.getter();
          v154 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v153, v154))
          {
            sub_1000205BC();
            v155 = sub_100051D1C();
            v156 = sub_10007469C(v155);
            *(v55 + 4) = sub_100078694(v156, object, v157);
            *(v55 + 12) = 2080;
            sub_1000379A0();
            v158 = StaticString.description.getter();
            sub_1000D3E0C(v158, v159);
            sub_10002C564();
            *(v55 + 14) = object;
            *(v55 + 22) = 2080;
            sub_10003C29C();
            _StringGuts.grow(_:)(74);
            sub_100024514();
            sub_1000C86E4();
            sub_10003BD14();
            String.append(_:)(v160);
            sub_10001E728();
            v161._countAndFlagsBits = CGRect.debugDescription.getter();
            object = v161._object;
            String.append(_:)(v161);

            sub_10000E848();
            sub_10002C564();
            *(v55 + 24) = object;
            v41 = v224;
            sub_100020168(&_mh_execute_header, v153, v154, "%s | %s: %s");
            swift_arrayDestroy();
            sub_100003884(v155);
            v162 = v55;
            v55 = v221;
            v88 = v222;
            v47 = v225;
            sub_100003884(v162);
          }

          v9 = v223;
        }

        sub_1002AAE34(&v241);
LABEL_55:
        v163 = sub_100020E14();
        v164(v163);
        sub_1002AAE34(&v243);
      }
    }

    v47 = v55;
    v55 = v41;
    sub_1000180EC(v237, &qword_100CA6950, &qword_100A31918);
    sub_1002A6178("place(subviews:context:cache:in:)", 33, 2, v208, v234, &v248, &v250, &v249);
    v41 = v250;
    sub_1002D6C88();
    v72 = v198;
  }

  while ((v186 & 1) == 0);
  v187[1](v194, v193);

  sub_100036C74();
}

void sub_1002A8AE8()
{
  sub_10003B914();
  v182 = v1;
  v3 = v2;
  v194 = v4;
  v183 = type metadata accessor for _LazyLayout_PlacedSubview_V1();
  sub_1000037C4();
  v187 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100003990(v8 - v7);
  v190 = sub_10022C350(&qword_100CA6968, &qword_100A31920);
  sub_1000037C4();
  v189 = v9;
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003908();
  __chkstk_darwin(v12);
  sub_10000E70C();
  sub_100003990(v13);
  v202 = sub_1002AB040(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_10000E70C();
  sub_100003990(v16);
  v17 = sub_10022C350(&qword_100CA6930, &qword_100A318F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v177 - v19;
  v21 = sub_10022C350(&qword_100CA6938, &qword_100A31900);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003990(v23);
  v24 = type metadata accessor for _LazyLayout_Subview_V1();
  sub_1000037C4();
  v203 = v25;
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  sub_100003990(v28);
  v29 = sub_10022C350(&qword_100CA6940, &qword_100A31908);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003C38();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = (&v177 - v35);
  v207 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsSequence();
  sub_1000037C4();
  v198 = v37;
  __chkstk_darwin(v38);
  sub_1000037D8();
  sub_100003990(v40 - v39);
  v41 = sub_10022C350(&qword_100CA6948, &qword_100A31910);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v197 = sub_10022C350(&qword_100CA6950, &qword_100A31918);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  sub_100003990(v45);
  v46 = sub_10022C350(&qword_100CA6970, &qword_100A31928);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003990(v50);
  type metadata accessor for _LazyLayout_EstimatedPlacementContext_V1();
  sub_1000037C4();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  v57 = v0[1];
  v199 = *v0;
  v205 = v0;
  v58 = *(v52 + 16);
  v195 = v59;
  v58(v56, v3);
  v193 = v57;
  v209 = v20;
  v206 = v33;
  if (v57)
  {
    if (qword_100CA2698 != -1)
    {
LABEL_47:
      sub_10001E714();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000212C4(v60, qword_100D90A30);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      sub_1000205BC();
      v180 = sub_100051D1C();
      v213 = v180;
      *v33 = 136315650;
      *(v33 + 4) = sub_100078694(v199, v57, &v213);
      v179 = v62;
      *(v33 + 12) = 2080;
      v63 = StaticString.description.getter();
      v178 = v61;
      v65 = sub_100078694(v63, v64, &v213);

      *(v33 + 14) = v65;
      *(v33 + 22) = 2080;
      v217[0] = 0;
      v217[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      sub_100071C4C(v217[0]);
      v66._object = 0x8000000100ABD600;
      v66._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v66);
      _LazyLayout_EstimatedPlacementContext_V1.visibleRect.getter();
      v217[0] = v67;
      v217[1] = v68;
      v217[2] = v69;
      v217[3] = v70;
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v71 = sub_10002FD90();
      v73 = sub_100078694(v71, *(v72 - 256), &v213);

      *(v33 + 24) = v73;
      v61 = v178;
      sub_100020168(&_mh_execute_header, v178, v179, "%s | %s: %s");
      v74 = v180;
      swift_arrayDestroy();
      sub_100003884(v74);
      v75 = v33;
      v33 = v206;
      sub_100003884(v75);
    }
  }

  (*(v52 + 8))(v56, v195);
  _LazyLayout_EstimatedPlacementContext_V1.visibleRect.getter();
  v77 = v76;
  v79 = v78;
  sub_10001B350(v210, 1, 1, v202);
  v80 = v196;
  _LazyLayout_Subviews_V1.views(from:)();
  (*(v198 + 32))(v200, v80, v207);
  sub_100014218();
  sub_1002AAF90(v81, v82, &protocol conformance descriptor for _LazyLayout_Subviews_V1.SubviewsSequence);
  v83 = v211;
  dispatch thunk of Sequence.makeIterator()();
  v200 = *(v197 + 36);
  *(v83 + v200) = 0;
  v52 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsIterator();
  sub_100008008();
  v207 = sub_1002AAF90(v84, v85, &protocol conformance descriptor for _LazyLayout_Subviews_V1.SubviewsIterator);
  v86 = 0;
  v57 = (v203 + 32);
  v203 += 8;
  v87 = 1.79769313e308;
  v88 = v208;
  v56 = v209;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    sub_1000038B4(v88, 1, v24);
    if (v89)
    {
      sub_1000180EC(v88, &qword_100CA6938, &qword_100A31900);
      v90 = 1;
    }

    else
    {
      v91 = *v57;
      v33 = v201;
      (*v57)(v201, v88, v24);
      v92 = *(v17 + 48);
      *v56 = v86;
      v91(v56 + v92, v33, v24);
      if (__OFADD__(v86++, 1))
      {
        goto LABEL_46;
      }

      *(v211 + v200) = v86;
      v33 = v206;
      sub_1002AB08C(v56, v206, &qword_100CA6930, &qword_100A318F8);
      v90 = 0;
    }

    sub_10001B350(v33, v90, 1, v17);
    sub_1002AB08C(v33, v36, &qword_100CA6940, &qword_100A31908);
    sub_1000038B4(v36, 1, v17);
    v94 = v210;
    if (v89)
    {
      break;
    }

    v56 = *v36;
    v95 = *v57;
    (*v57)(v212, v36 + *(v17 + 48), v24);
    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v96 = v205[7];
    if (v56 >= *(v96 + 16))
    {
      goto LABEL_44;
    }

    v97 = v205[4];
    sub_1002AADD8(v96 + 104 * v56 + 32, v217);
    if (v56 >= *(v97 + 16))
    {
      goto LABEL_45;
    }

    v98 = v97 + 32 * v56;
    v100 = *(v98 + 32);
    v101 = *(v98 + 40);
    v99 = v98 + 32;
    v102 = sqrt((v77 - v100) * (v77 - v100) + (v79 - v101) * (v79 - v101));
    if (v102 >= v87)
    {
      sub_1002AAE34(v217);
      sub_1000182F4();
      v114(v212, v24);
      v56 = v209;
      v88 = v208;
    }

    else
    {
      v103 = v36;
      v104 = v52;
      v105 = v17;
      v107 = *(v99 + 16);
      v106 = *(v99 + 24);
      v108 = v204;
      v95(v204, v212, v24);
      v109 = v202;
      v110 = v108 + *(v202 + 20);
      *v110 = v100;
      *(v110 + 8) = v101;
      *(v110 + 16) = v107;
      *(v110 + 24) = v106;
      memcpy((v108 + *(v109 + 24)), v217, 0x68uLL);
      sub_10001B350(v108, 0, 1, v109);
      v111 = v210;
      sub_1000038B4(v210, 1, v109);
      v112 = v209;
      v88 = v208;
      if (!v89)
      {
        sub_1000182F4();
        v113(v111, v24);
        sub_1002AAE34(v111 + *(v109 + 24));
      }

      sub_1002AB08C(v204, v111, &qword_100CA6970, &qword_100A31928);
      v87 = v102;
      v56 = v112;
      v17 = v105;
      v52 = v104;
      v36 = v103;
      v33 = v206;
    }
  }

  sub_1000180EC(v211, &qword_100CA6950, &qword_100A31918);
  v115 = v192;
  sub_1002AB08C(v94, v192, &qword_100CA6970, &qword_100A31928);
  v116 = v202;
  sub_1000038B4(v115, 1, v202);
  if (v89)
  {
    sub_100031494();
    sub_1002A66B0(v117, v118, v119, v120, v121);
  }

  else
  {
    v122 = v115;
    v123 = v184;
    sub_1002AB0EC(v122, v184);
    sub_1002AADD8(v123 + *(v116 + 24), v217);
    v124 = v185;
    sub_1002AB0EC(v123, v185);
    static UnitPoint.topLeading.getter();
    LOBYTE(v216[0]) = 0;
    LOBYTE(v213) = 0;
    v125 = v188;
    _LazyLayout_Subview_V1.place_v2(at:anchor:proposal:)();
    sub_1000182F4();
    v126(v124, v24);
    sub_1002AAE34(v124 + *(v116 + 24));
    v127 = v189;
    v128 = *(v189 + 16);
    v129 = v191;
    v130 = v190;
    v128(v191, v125, v190);
    v131 = (*(v127 + 88))(v129, v130);
    if (v131 == enum case for _LazyLayout_Subview_V1.SubviewResult.value<A>(_:))
    {
      (*(v127 + 96))(v129, v130);
      v132 = v187;
      v133 = v186;
      v134 = v183;
      (*(v187 + 32))(v186, v129, v183);
      v135 = _LazyLayout_EstimatedPlacements_V1.subviews.modify();
      v137 = v136;
      sub_10051A918();
      v138 = *(*v137 + 16);
      sub_1002789B8(v138);
      v139 = *v137;
      *(v139 + 16) = v138 + 1;
      (*(v132 + 16))(v139 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v138, v133, v134);
      v135(v216, 0);
      sub_1002AADD8(v217, v216);
      v140 = v193;
      if (v193)
      {
        if (qword_100CA2698 != -1)
        {
          sub_10001E714();
          swift_once();
        }

        v141 = type metadata accessor for Logger();
        sub_1000212C4(v141, qword_100D90A30);

        v142 = v140;
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v143, v144))
        {
          v145 = sub_1000205BC();
          v146 = sub_100011418();
          v215 = v146;
          *v145 = 136315650;
          *(v145 + 4) = sub_100078694(v199, v142, &v215);
          *(v145 + 12) = 2080;
          v147 = StaticString.description.getter();
          sub_100078694(v147, v148, &v215);
          sub_10002C564();
          *(v145 + 14) = v132;
          *(v145 + 22) = 2080;
          v213 = 0;
          v214 = 0xE000000000000000;
          _StringGuts.grow(_:)(41);

          v213 = 0xD000000000000027;
          v214 = 0x8000000100ABD5D0;
          v149._countAndFlagsBits = sub_10002FD90();
          v149._object = *(v150 - 256);
          String.append(_:)(v149);
          sub_100078694(v213, v214, &v215);
          sub_10002C564();
          *(v145 + 24) = v132;
          sub_10006A6D8(&_mh_execute_header, v151, v152, "%s | %s: %s");
          sub_100024068();
          v153 = v146;
          v134 = v183;
          sub_100003884(v153);
          sub_100003884(v145);
        }
      }

      sub_1002AAE34(v216);
      (*(v187 + 8))(v186, v134);
      goto LABEL_34;
    }

    if (v131 == enum case for _LazyLayout_Subview_V1.SubviewResult.cancelled<A>(_:))
    {
      sub_100031494();
      sub_1002A64B0(v154, v155, v156, v157, v158);
LABEL_34:
      (*(v127 + 8))(v125, v130);
      sub_1002AAE34(v217);
      goto LABEL_42;
    }

    v159 = v181;
    v128(v181, v125, v130);
    v160 = v193;
    if (v193)
    {
      if (qword_100CA2698 != -1)
      {
        sub_10001E714();
        swift_once();
      }

      v161 = type metadata accessor for Logger();
      sub_1000212C4(v161, qword_100D90A30);

      v162 = v160;
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = sub_1000205BC();
        v166 = sub_100011418();
        v213 = v166;
        *v165 = 136315650;
        *(v165 + 4) = sub_100078694(v199, v162, &v213);
        *(v165 + 12) = 2080;
        v167 = StaticString.description.getter();
        sub_100078694(v167, v168, &v213);
        sub_10002C564();
        *(v165 + 14) = v124;
        *(v165 + 22) = 2080;
        v216[0] = 0;
        v216[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        sub_100071C4C(v216[0]);
        v169._countAndFlagsBits = 0xD00000000000003BLL;
        v169._object = 0x8000000100ABD590;
        String.append(_:)(v169);
        _print_unlocked<A, B>(_:_:)();
        v170 = sub_10002FD90();
        sub_100078694(v170, *(v171 - 256), &v213);
        sub_10002C564();
        *(v165 + 24) = v124;
        sub_10006A6D8(&_mh_execute_header, v172, v173, "%s | %s: %s");
        sub_100024068();
        v174 = v166;
        v159 = v181;
        sub_100003884(v174);
        v175 = v165;
        v129 = v191;
        sub_100003884(v175);
      }
    }

    v176 = *(v127 + 8);
    v176(v159, v130);
    v176(v125, v130);
    sub_1002AAE34(v217);
    v176(v129, v130);
  }

LABEL_42:
  sub_100036C74();
}

void sub_1002A9D60(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > a1)
    {
      v5 = v4 + 32 * a1;
      v6 = *(v5 + 48);
      v7 = *(v5 + 32);
      sub_1002A68B0("boundingRect(at:subviews:context:cache:)", 40, 2, *v2, v2[1], *&v7, *(v5 + 40), *(v5 + 48), *(v5 + 56));
      *a2 = v7;
      *(a2 + 16) = v6;
      *(a2 + 32) = 0;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1002A9DE8(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v132 = a4;
  v150 = a1;
  v151 = a2;
  v131 = type metadata accessor for _LazyLayout_ProposedSubview_V1();
  sub_1000037C4();
  v134 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  v11 = sub_10022C350(&qword_100CA6930, &qword_100A318F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100003990(v13);
  v14 = sub_10022C350(&qword_100CA6938, &qword_100A31900);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v125[-v16];
  v18 = type metadata accessor for _LazyLayout_Subview_V1();
  sub_1000037C4();
  v139 = v19;
  __chkstk_darwin(v20);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA6940, &qword_100A31908);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v125[-v32];
  v34 = sub_10022C350(&qword_100CA6948, &qword_100A31910);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v147 = v36;
  v148 = sub_10022C350(&qword_100CA6950, &qword_100A31918);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v152 = v38;
  v137 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsSequence();
  sub_1000037C4();
  v136 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003990(v42);
  type metadata accessor for _LazyLayout_PlacementContext_V1();
  sub_1000037C4();
  __chkstk_darwin(v43);
  sub_1000037D8();
  v46 = v45 - v44;
  v47 = v5[1];
  v149 = *v5;
  v138 = v48;
  v49 = v48[2];
  v145 = a3;
  v140 = v50;
  v49(v46, a3);
  v143 = v33;
  v144 = v47;
  if (v47)
  {
    v130 = v46;
    if (qword_100CA2698 != -1)
    {
LABEL_27:
      sub_10001E714();
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000212C4(v51, qword_100D90A30);
    v52 = v144;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = sub_1000205BC();
      v126 = v54;
      v56 = v55;
      v127 = sub_100011418();
      v155 = v127;
      *v56 = 136315650;
      *(v56 + 4) = sub_100078694(v149, v52, &v155);
      *(v56 + 12) = 2080;
      sub_1000162D8();
      v57 = StaticString.description.getter();
      v128 = v53;
      v59 = sub_100078694(v57, v58, &v155);

      v129 = v56;
      *(v56 + 14) = v59;
      *(v56 + 22) = 2080;
      v60 = v150;
      v156 = 0;
      v157 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);
      v153 = v156;
      v154 = v157;
      v61._object = 0x8000000100ABD490;
      v61._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v61);
      v156 = v60;
      v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v62);

      v63._countAndFlagsBits = 0x6C6269736976202CLL;
      v63._object = 0xEE003D7463655265;
      String.append(_:)(v63);
      v46 = v130;
      _LazyLayout_PlacementContext_V1.visibleRect.getter();
      v156 = v64;
      v157 = v65;
      v158 = v66;
      v159 = v67;
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v68 = sub_100078694(v153, v154, &v155);

      v69 = v129;
      *(v129 + 24) = v68;
      v33 = v143;
      _os_log_impl(&_mh_execute_header, v128, v126, "%s | %s: %s", v69, 0x20u);
      v70 = v127;
      swift_arrayDestroy();
      sub_100003884(v70);
      sub_100003884(v129);
    }

    else
    {

      v46 = v130;
    }
  }

  (v138[1])(v46, v140);
  v71 = v135;
  _LazyLayout_Subviews_V1.views(from:)();
  v72 = v136;
  v73 = v147;
  v74 = v71;
  v75 = v137;
  (*(v136 + 16))(v147, v74, v137);
  (*(v72 + 32))(v146, v73, v75);
  sub_100014218();
  sub_1002AAF90(v76, v77, &protocol conformance descriptor for _LazyLayout_Subviews_V1.SubviewsSequence);
  v78 = v152;
  dispatch thunk of Sequence.makeIterator()();
  v140 = *(v148 + 36);
  *(v78 + v140) = 0;
  v148 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsIterator();
  sub_100008008();
  v147 = sub_1002AAF90(v79, v80, &protocol conformance descriptor for _LazyLayout_Subviews_V1.SubviewsIterator);
  v146 = 0;
  v151 = (v139 + 32);
  v81 = (v139 + 8);
  v130 = v134 + 32;
  v138 = _swiftEmptyArrayStorage;
  v82 = v144;
  v139 += 8;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    sub_1000038B4(v17, 1, v18);
    if (v83)
    {
      sub_1000180EC(v17, &qword_100CA6938, &qword_100A31900);
      v84 = 1;
    }

    else
    {
      v85 = v5;
      v5 = v23;
      v86 = *v151;
      v87 = v141;
      (*v151)(v141, v17, v18);
      v88 = v18;
      v18 = v11;
      v89 = *(v11 + 48);
      v23 = v142;
      v90 = v146;
      *v142 = v146;
      v91 = v87;
      v33 = v88;
      v86((v23 + v89), v91);
      v92 = __OFADD__(v90, 1);
      v11 = v90 + 1;
      if (v92)
      {
        goto LABEL_26;
      }

      v146 = v11;
      *(v152 + v140) = v11;
      sub_1002AB08C(v23, v30, &qword_100CA6930, &qword_100A318F8);
      v84 = 0;
      v23 = v5;
      v5 = v85;
      v11 = v18;
      v18 = v33;
      v33 = v143;
      v82 = v144;
      v81 = v139;
    }

    sub_10001B350(v30, v84, 1, v11);
    sub_1002AB08C(v30, v33, &qword_100CA6940, &qword_100A31908);
    sub_1000038B4(v33, 1, v11);
    if (v83)
    {
      break;
    }

    v93 = *v33;
    (*v151)(v23, v33 + *(v11 + 48), v18);
    if ((v93 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v93 >= *(v5[4] + 16))
    {
      goto LABEL_25;
    }

    _LazyLayout_PlacementContext_V1.visibleRect.getter();
    sub_10001760C();
    if (CGRectIntersectsRect(v160, v161))
    {
      LOBYTE(v156) = 0;
      LOBYTE(v153) = 0;
      _LazyLayout_Subview_V1.proposeSize(_:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069E1A4();
        v138 = v119;
      }

      v105 = v138[2];
      v106 = v105 + 1;
      if (v105 >= v138[3] >> 1)
      {
        v129 = v105 + 1;
        sub_10069E1A4();
        v106 = v129;
        v138 = v120;
      }

      v107 = v138;
      v138[2] = v106;
      (*(v134 + 32))(v107 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v105, v133, v131);
      sub_1002AAFD8(v5, &v156);
      sub_1000162D8();
      v108 = sub_10001E728();
      sub_1002A6B9C(v109, v110, v111, v112, v113, v114, v115, v108, v116, v117, v118);
    }

    else
    {
      sub_1002AAFD8(v5, &v156);
      sub_1000162D8();
      v94 = sub_10001E728();
      sub_1002A6F14(v95, v96, v97, v98, v99, v100, v101, v94, v102, v103, v104);
    }

    (*v81)(v23, v18);
  }

  sub_1000180EC(v152, &qword_100CA6950, &qword_100A31918);

  _LazyLayout_ProposedSizes_V1.subviews.setter();

  sub_1000162D8();
  sub_1002A7290(v121, v122, v123, v149, v82);

  return (*(v136 + 8))(v135, v137);
}

double sub_1002AAA40@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002A9D60(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void (*sub_1002AAAC0(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

void *sub_1002AAB34(uint64_t a1, uint64_t a2)
{
  sub_100894558();
  sub_1003BD5F4(a2);
  v24 = *(a1 + 40);
  sub_10014B28C();
  v23 = sub_10014B28C();
  v4 = *(a2 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v30 = _swiftEmptyArrayStorage;

  sub_1006A796C(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = a2 + 32; ; i += 104)
  {
    sub_1002AADD8(i, v25);
    v8 = v26;
    v7 = v27;
    v10 = v28;
    v9 = v29;
    result = sub_1002AAE34(v25);
    v12 = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
      break;
    }

    if (v12)
    {
      v13 = v12 - 1;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = __OFSUB__(v9, v10);
    v15 = v9 - v10;
    if (v14)
    {
      goto LABEL_21;
    }

    if (v15)
    {
      v16 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    v30 = v5;
    v18 = v5[2];
    v17 = v5[3];
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      sub_1006A796C((v17 > 1), v18 + 1, 1);
      v19 = v18 + 1;
      v5 = v30;
    }

    v20.i64[0] = v8;
    v20.i64[1] = v10;
    v21 = vcvtq_f64_s64(v20);
    v5[2] = v19;
    v22 = &v5[4 * v18];
    v22[2] = vaddq_f64(vmulq_n_f64(v21, v23), vmulq_n_f64(v21, v24));
    v22[3].f64[0] = v23 * v12 + v24 * v13;
    v22[3].f64[1] = v23 * v15 + v24 * v16;
    if (!--v4)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}